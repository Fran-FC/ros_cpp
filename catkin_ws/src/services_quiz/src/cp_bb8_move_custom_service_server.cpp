#include "my_custom_srv_msg_pkg/MyCustomServiceMessage.h"
#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

ros::Publisher pub;
geometry_msgs::Twist var;

bool my_callback(my_custom_srv_msg_pkg::MyCustomServiceMessage::Request &req,
                 my_custom_srv_msg_pkg::MyCustomServiceMessage::Response &res) {
  ROS_INFO("Request Data==> duration=%d", req.duration);

  var.linear.x = 1;
  var.angular.z = 1;
  pub.publish(var);
  ros::Duration(req.duration).sleep();
  var.linear.x = 0;
  var.angular.z = 0;
  pub.publish(var);

  res.success = true;
  return true;
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "bb8_service_server");
  ros::NodeHandle nh;

  ros::ServiceServer my_service =
      nh.advertiseService("/move_bb8_in_circle_custom", my_callback);
  
  pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1000);
  ros::spin();
  return 0;
}