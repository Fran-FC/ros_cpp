#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <std_srvs/Empty.h>
#include "my_cpp_class/MyCustomServiceMessage.h"

class MoveBB8
{
  
    public:

        // ROS Objects
        ros::NodeHandle nh_;

        // ROS Services
        ros::ServiceServer my_service;

        // ROS Publishers
        ros::Publisher vel_pub;
    
        // ROS Messages
        geometry_msgs::Twist vel_msg;
  
        MoveBB8()
        {
            my_service = nh_.advertiseService("/move_bb8_in_circle", &MoveBB8::my_callback, this);
            ROS_INFO("The Service /move_bb8_in_circle is READY");
            vel_pub = nh_.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
        }
        
        void move_in_circle(int duration)
        {
            vel_msg.linear.x = 0.2;
            vel_msg.angular.z = 0.2;
            vel_pub.publish(vel_msg);
            
            ros::Duration(duration).sleep();
            vel_msg.linear.x = 0;
            vel_msg.angular.z = 0;
            vel_pub.publish(vel_msg);
        }
        
        bool my_callback(my_cpp_class::MyCustomServiceMessage::Request &req,
                        my_cpp_class::MyCustomServiceMessage::Response &res)
        {
            ROS_INFO("The Service /move_bb8_in_circle has been called");
            move_in_circle(req.duration);
            ROS_INFO("Finished service /move_bb8_in_circle");
            return true;
        }
    
};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "move_bb8_node");
  
  MoveBB8 moveBB8;

  ros::spin();
  
  return 0;
}