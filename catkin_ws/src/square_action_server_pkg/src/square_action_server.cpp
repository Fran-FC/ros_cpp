#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <actionlib/TestAction.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/Empty.h>

class MoveSquareAction
{
protected:

  ros::NodeHandle nh_;
  // NodeHandle instance must be created before this line. Otherwise strange error occurs.
  actionlib::SimpleActionServer<actionlib::TestAction> as_; 
  std::string action_name_;
  // create messages that are used to publish feedback and result
  actionlib::TestFeedback feedback_;
  actionlib::TestResult result_;
  
  // Create needed messages
  int rate_hz_;
  bool success_;
  int sideSeconds_;
  int turnSeconds_;
  
  ros::Rate *rate_;      
  ros::Publisher move_pub_;
  geometry_msgs::Twist move_msg_;
  ros::Publisher takeoff_pub_;
  std_msgs::Empty takeoff_msg_;
  ros::Publisher land_pub_;
  std_msgs::Empty land_msg_;

public:

  MoveSquareAction(std::string name) :
    as_(nh_, name, boost::bind(&MoveSquareAction::executeCB, this, _1), false),
    action_name_(name)
  {
    as_.start();
    rate_hz_ = 1;
    success_ = true;
    turnSeconds_ = 2;
    
    rate_ = new ros::Rate(rate_hz_);
    move_pub_ = nh_.advertise<geometry_msgs::Twist>("/cmd_vel", 1000);
    takeoff_pub_ = nh_.advertise<std_msgs::Empty>("/drone/takeoff", 1000);
    land_pub_ = nh_.advertise<std_msgs::Empty>("/drone/land", 1000);
  }

  ~MoveSquareAction(void)
  {
  }

  void executeCB(const actionlib::TestGoalConstPtr &goal)
  {
    
    // Takeoff the drone
    this->takeoff_drone();

    // start executing the action
    for(int i=0; i<4; i++)
    {
      // check that preempt has not been requested by the client
      if (as_.isPreemptRequested() || !ros::ok())
      {
        ROS_INFO("%s: Preempted", action_name_.c_str());
        // set the action state to preempted
        as_.setPreempted();
        success_ = false;
        break;
      }
      
      //Perdorm the square
      sideSeconds_ = goal->goal;
      this->move_forward_drone(sideSeconds_);
      this->turn_drone(turnSeconds_);
      
            
      feedback_.feedback = i;
      // publish the feedback
      as_.publishFeedback(feedback_);
      // this sleep is not necessary, the sequence is computed at 1 Hz for demonstration purposes
      rate_->sleep();
    }

    if(success_)
    {
      result_.result = (sideSeconds_*4) + (turnSeconds_*4);
      ROS_INFO("The total seconds it took the drone to perform the square was %i seconds", result_.result);
      ROS_INFO("%s: Succeeded", action_name_.c_str());
      // set the action state to succeeded
      as_.setSucceeded(result_);
      // Stop and land drone
      this->stop_drone();
      this->land_drone();
    }
  }
    
  // Functions to control the drone    
  void stop_drone(void)
  {
    ROS_INFO("Stopping Drone...");
    int i = 0;
    while (i < 3)
    {
      move_msg_.linear.x = 0;
      move_msg_.angular.z = 0;
      move_pub_.publish(move_msg_);
      i++;
      rate_->sleep();
    }
  }
    
  void move_forward_drone(int side_secs)
  {
    ROS_INFO("Moving forward Drone...");
    int i = 0;
    while (i < side_secs)
    {
      move_msg_.linear.x = 1;
      move_msg_.angular.z = 0;
      move_pub_.publish(move_msg_);
      i++;
      rate_->sleep();
    }
  }
    
  void turn_drone(int turn_secs)
  {
    ROS_INFO("Turning Drone...");
    int i = 0;
    while (i < turn_secs)
    {
      move_msg_.linear.x = 0;
      move_msg_.angular.z = 0.55;
      move_pub_.publish(move_msg_);
      i++;
      rate_->sleep();
    }
  }
  
  void takeoff_drone(void)
  {
    ROS_INFO("Taking Off Drone...");
    int i = 0;
    while (i < 4)
    {
      takeoff_pub_.publish(takeoff_msg_);
      i++;
      rate_->sleep();
    }
  }
  
  void land_drone(void)
  {
    ROS_INFO("Landing Drone...");
    int i = 0;
    while (i < 4)
    {
      land_pub_.publish(land_msg_);
      i++;
      rate_->sleep();
    }
  }

};

int main(int argc, char** argv)
{
  ros::init(argc, argv, "move_square_drone");

  MoveSquareAction move_square("move_drone_square_as");
  ros::spin();

  return 0;
}