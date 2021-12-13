#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>
#include <actions_quiz/CustomActionMsgAction.h>
#include <std_msgs/Empty.h>


class CustomAction
{
protected:

  ros::NodeHandle nh_;
  // NodeHandle instance must be created before this line. Otherwise strange error occurs.
  actionlib::SimpleActionServer<actions_quiz::CustomActionMsgAction> as_; 
  std::string action_name_;
  // create messages that are used to publish feedback and result
  actions_quiz::CustomActionMsgFeedback feedback_;
  actions_quiz::CustomActionMsgResult result_;
  
  bool success_;
  int rate_hz_;
  ros::Rate *rate_;      
  ros::Publisher takeoff_pub_;
  std_msgs::Empty takeoff_msg_;
  ros::Publisher land_pub_;
  std_msgs::Empty land_msg_;
public:

  CustomAction(std::string name) :
    as_(nh_, name, boost::bind(&CustomAction::executeCB, this, _1), false),
    action_name_(name)
  {
    as_.start();
    rate_hz_ = 1;
    success_ = true;
    
    rate_ = new ros::Rate(rate_hz_);
    takeoff_pub_ = nh_.advertise<std_msgs::Empty>("/drone/takeoff", 1000);
    land_pub_ = nh_.advertise<std_msgs::Empty>("/drone/land", 1000);
  }

  ~CustomAction(void)
  {
  }

  void takeoff_drone(void)
  {
    ROS_INFO("Taking Off Drone...");
    int i = 0;
    while (i < 4)
    {
      as_.publishFeedback(feedback_);

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
      as_.publishFeedback(feedback_);
      
      land_pub_.publish(land_msg_);
      i++;
      rate_->sleep();
    }
  }

  void executeCB(const actions_quiz::CustomActionMsgGoalConstPtr &goal)
  {
    // push_back the seeds for the fibonacci sequence
    feedback_.feedback = goal->goal;

    // check that preempt has not been requested by the client
    if (as_.isPreemptRequested() || !ros::ok())
    {
        ROS_INFO("%s: Preempted", action_name_.c_str());
        // set the action state to preempted
        as_.setPreempted();
        success_ = false;
    }
   
    if(goal->goal.compare("TAKEOFF") == 0) {
        this->takeoff_drone();
    } else if (goal->goal.compare("LAND") == 0) {
        this->land_drone();
    } else {
        success_ = false;
    }

    if(success_)
    {
      ROS_INFO("%s: Succeeded", action_name_.c_str());
      // set the action state to succeeded
      as_.setSucceeded(result_);
    }
  }
};


int main(int argc, char** argv)
{
  ros::init(argc, argv, "custom_actions_quiz");

  CustomAction action("action_custom_msg_as");
  ros::spin();

  return 0;
}