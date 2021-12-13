#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "std_srvs/Empty.h"

ros::Publisher pub;
geometry_msgs::Twist var;


// We define the callback function of the service
bool my_callback(std_srvs::Empty::Request  &req,
                 std_srvs::Empty::Response &res)
{  
  // res.some_variable = req.some_variable + req.other_variable;
 /* while(ros::ok()){
    pub.publish(var); 
    ros::spinOnce();
    loop_rate.sleep();
    ROS_INFO("Spin"); // We print an string whenever the Service gets called
  }*/
  pub.publish(var);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "bb8_server");
  ros::NodeHandle nh;

  pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1000);
  var.linear.x = 1;
  var.angular.z = 1;

  ros::ServiceServer my_service = nh.advertiseService("/move_bb8_in_circle", my_callback); // create the Service called                                                                                          // my_service with the defined                                                                                        // callback
  ros::spin(); // mantain the service open.

  return 0;
}