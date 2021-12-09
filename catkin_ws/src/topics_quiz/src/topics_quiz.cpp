#include <geometry_msgs/Twist.h>
#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>

geometry_msgs::Twist var;

// read ranges values and determine in which
// side is the obstacle:

// angles   position    action
//---------------------------------
// 0-239    right       turn left
// 240-479  front       turn left
// 480-719  left        turn right
void scanCallback(const sensor_msgs::LaserScan::ConstPtr &msg) {
  int i = 0;
  var.angular.z = 0.0;
  var.linear.x = 0.2;

  for (const float &dist : msg->ranges) {
    if (dist < 1.0) {
      var.linear.x = 0.1;
      if (i >= 0 && i < 480) {
        // turn left
        var.angular.z = 0.3;
      } else {
        // turn right
        var.angular.z = -0.3;
      }
      break;
    }
    i++;
  }
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "topics_quiz_node");
  ros::NodeHandle nh;

  ros::Subscriber sub = nh.subscribe("kobuki/laser/scan", 1000, scanCallback);

  ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1000);
  ros::Rate loop_rate(1);

  var.linear.x = 0.3;
  while (ros::ok()) {
    pub.publish(var);
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}