#include <ros/ros.h>
#include <topic_subscriber_pkg/Age.h>

int main(int argc, char **argv) {
  ros::init(argc, argv, "topic_publisher");
  ros::NodeHandle nh;

  ros::Publisher pub = nh.advertise<topic_subscriber_pkg::Age>("robot_age", 1000);
  ros::Rate loop_rate(2);

  topic_subscriber_pkg::Age age;
  age.days = 1;
  age.months = 0;
  age.years = 0;
  
  while (ros::ok()) {
    pub.publish(age);
    ros::spinOnce();
    loop_rate.sleep();
  }

  return 0;
}
