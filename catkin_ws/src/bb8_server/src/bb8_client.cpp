#include "ros/ros.h"
#include "std_srvs/Empty.h"

int main(int argc, char **argv)
{
  ros::init(argc, argv, "bb8_client"); // Initialise a ROS node with the name service_client
  ros::NodeHandle nh;


  // Create the connection to the service /trajectory_by_name
  ros::ServiceClient bb8_service = nh.serviceClient<std_srvs::Empty>("/move_bb8_in_circle");
  std_srvs::Empty req ;

  if (bb8_service.call(req)) // Send through the connection the name of the trajectory to execute
  {
   // ROS_INFO("%s", trajectory.response.status_message.c_str()); // Print the result given by the service called
   ROS_INFO("SUCCESS");
  }
  else
  {
    ROS_ERROR("Failed to call service /move_bb8_in_circle");
    return 1;
  }

  return 0;
}