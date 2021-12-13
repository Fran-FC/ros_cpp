#include "services_quiz/BB8CustomServiceMessage.h" // req. float64 side and int32 repetitions || resp. bool success 
#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

ros::Publisher pub;
geometry_msgs::Twist var;

bool my_callback(services_quiz::BB8CustomServiceMessage::Request &req,
                 services_quiz::BB8CustomServiceMessage::Response &res) {
  ROS_INFO("Request Data==> \nside=%f\n\trepetitions=%d", req.side, req.repetitions);


  for(int i = 0; i < req.repetitions; i++) {
    for (int j = 0; j < 4; j++) {
        var.linear.x = 0.5;
        var.angular.z = 0;
        pub.publish(var);
        ros::Duration(req.side).sleep();

        var.linear.x = 0;
        var.angular.z = 0.5;
        pub.publish(var);
        ros::Duration(1).sleep();
      }
  }
  var.angular.z = 0;
  pub.publish(var);

  res.success = true;
  return true;
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "bb8_service_server");
  ros::NodeHandle nh;

  ros::ServiceServer my_service =
      nh.advertiseService("/move_bb8_in_square_custom", my_callback);
  
  pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1000);
  ros::spin();
  return 0;
}