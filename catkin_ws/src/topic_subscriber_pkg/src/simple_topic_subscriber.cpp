#include <nav_msgs/Odometry.h>
#include <ros/ros.h>

void counterCallback(const nav_msgs::Odometry::ConstPtr &msg) {
  ROS_INFO("%d", msg->header.seq);
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "topic_subscriber");
  ros::NodeHandle nh;

  ros::Subscriber sub = nh.subscribe("odom", 1000, counterCallback);

  ros::spin();

  return 0;
}