#include <actionlib/client/simple_action_client.h>
#include <geometry_msgs/Twist.h>
#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <std_msgs/Int32.h>
#include <turtlebot3_move/MoveInSquare.h>
#include <turtlebot3_move/OdomRecordAction.h>

geometry_msgs::Twist var;
bool flag_action_stop;
ros::Rate *rate;

/* ACTION FUNCTION CALLBACKS SECTION */
/*************************************/
/*  done callback */
void doneCB(const actionlib::SimpleClientGoalState &state,
            const turtlebot3_move::OdomRecordResultConstPtr &result) {
    ROS_INFO("[State Result]: %s", state.toString().c_str());
    ROS_INFO("The Action has been completed");
    ros::shutdown();
}
void feedbackCB(const turtlebot3_move::OdomRecordFeedbackConstPtr &feedback) {
    ROS_INFO("Distance traveled: %f", feedback->current_total);
}
void activeCB() { 
    ROS_INFO("Action went active"); 
}
/*************************************/

/* Subscriber callback */
void laserScanCallback(const sensor_msgs::LaserScan::ConstPtr &scan) {
    ROS_INFO("laser: %f", scan->ranges[90]);
    if (scan->ranges[90] <= 0.2) {
        var.linear.x = 0.0;
        flag_action_stop = true;
    }
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "turtlebot3_move");
    ros::NodeHandle nh;
    
    // publisher for cmd_vel, publish in loop while action is active
    ros::Publisher pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1000);
    var.linear.x = 0.1;

    flag_action_stop = false;
    rate = new ros::Rate(5);
    
    /* Service client section*/
    
        ros::ServiceClient square_service = \
            nh.serviceClient<turtlebot3_move::MoveInSquare>("/move_in_square");
        turtlebot3_move::MoveInSquare msg;
        ROS_INFO("Calling square service");
        square_service.call(msg);
    

    /* Subscriber section */
    
        ROS_INFO("Calling subscriber");
        ros::Subscriber sub = nh.subscribe("scan", 100, laserScanCallback);  
    

    /* Action client + publisher section */
    
        ROS_INFO("Calling action server");
        actionlib::SimpleActionClient<turtlebot3_move::OdomRecordAction> client \
            ("record_odom", true);
        client.waitForServer();
        
        turtlebot3_move::OdomRecordGoal goal;
        client.sendGoal(goal, &doneCB, &activeCB, &feedbackCB);

        actionlib::SimpleClientGoalState state_result = client.getState();
        ROS_INFO("[State Result]: %s", state_result.toString().c_str());

        while (state_result == actionlib::SimpleClientGoalState::ACTIVE || \
            state_result == actionlib::SimpleClientGoalState::PENDING) 
        {             
            ros::spinOnce(); // check subscriber callback
            pub.publish(var);

            // Check if it has stopped in front of an obstacle
            if (flag_action_stop) {
                ROS_INFO("Canceling goal");
                client.cancelGoal();
                ROS_INFO("Goal cancelled");
                state_result = client.getState();
                flag_action_stop = false;

                break;
            }
            
            state_result = client.getState();
            
            rate->sleep();
        }
        ROS_INFO("[State Result]: %s", state_result.toString().c_str());
    
  
    ros::spin();
    return 0;
}
