#include "ros/ros.h"
#include "services_quiz/BB8CustomServiceMessage.h"
// Import the service message used by the service /trajectory_by_name

int main(int argc, char **argv)
{
  ros::init(argc, argv, "service_client"); // Initialise a ROS node with the name service_client
  ros::NodeHandle nh;


  // Create the connection to the service /trajectory_by_name
  ros::ServiceClient bb8_square_service = nh.serviceClient<services_quiz::BB8CustomServiceMessage>("/move_bb8_in_square_custom");
  services_quiz::BB8CustomServiceMessage msg;
  
  msg.request.side = 2.5;
  msg.request.repetitions = 2;
  bb8_square_service.call(msg);

  msg.request.side = 5;
  msg.request.repetitions = 1;
  bb8_square_service.call(msg);

  return 0;
}