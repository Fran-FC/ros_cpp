#include "turtlebot3_move/MoveInSquare.h" 
#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

ros::Publisher pub;
geometry_msgs::Twist var;

bool my_callback(turtlebot3_move::MoveInSquare::Request &req,
                 turtlebot3_move::MoveInSquare::Response &res) {
    for (int j = 0; j < 4; j++) {
        var.linear.x = 0.15;
        var.angular.z = 0;
        pub.publish(var);
        ros::Duration(1).sleep();

        var.linear.x = 0;
        var.angular.z = 0.4;
        pub.publish(var);
        ros::Duration(4).sleep();
    }
  var.angular.z = 0;
  pub.publish(var);

  res.complete = true;
  return true;
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "move_in_square");
  ros::NodeHandle nh;

  ros::ServiceServer my_service =
      nh.advertiseService("/move_in_square", my_callback);
  
  pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1000);
  ros::spin();
  return 0;
}