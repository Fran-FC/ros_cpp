#include <actionlib/server/simple_action_server.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Point.h>
#include <ros/ros.h>
#include <turtlebot3_move/OdomRecordAction.h>


// GLOBAL
actionlib::SimpleActionServer<turtlebot3_move::OdomRecordAction> *as;

turtlebot3_move::OdomRecordFeedback feedback;
turtlebot3_move::OdomRecordResult result;

geometry_msgs::Point lastPoint;


void odomCallback(const nav_msgs::Odometry::ConstPtr &msg) {
  lastPoint.x = msg->pose.pose.position.x;
  lastPoint.y = msg->pose.pose.position.y;
  lastPoint.z = msg->pose.pose.position.z;
}

void actionCB(const turtlebot3_move::OdomRecordGoalConstPtr &goal) {
    ROS_INFO("ENTERING ACTIONCB");
    
    // feedback and result
    feedback.current_total = .0;
    int i = 0;
    int p = 0;
    
    // 1Hz
    ros::Rate r(ros::Duration(1.0));
    while (true) {
      r.sleep();
      
      if (as->isPreemptRequested() || !ros::ok()) {
        ROS_INFO("Preempted");
        as->setPreempted();
        break;
      }
      
      result.list_of_odoms.push_back(lastPoint);
      // calc distance
      if (i > 0) {
        p = i-1;
        feedback.current_total += std::sqrt(
            std::pow(lastPoint.x - result.list_of_odoms[p].x, 2) + \
            std::pow(lastPoint.y - result.list_of_odoms[p].y, 2) + \
            std::pow(lastPoint.z - result.list_of_odoms[p].z, 2));

            as->publishFeedback(feedback);

            ROS_INFO("Total distance moved: %f", feedback.current_total);
      }
      i++;
    }
    ROS_INFO("END OF ACTIONCB");

    as->setSucceeded(result);
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "record_odom");
  ros::NodeHandle nh;
    
  // SUBSCRIBER 
  ros::Subscriber sub = nh.subscribe("/odom", 1000, odomCallback);

  // ACTION SERVER INITIALIZATION
  as = new actionlib::SimpleActionServer<turtlebot3_move::OdomRecordAction>\
    (nh, "record_odom", actionCB, false);
  as->start();
  
  ROS_INFO("Spinning..");
  ros::spin();
  
  return 0;
}