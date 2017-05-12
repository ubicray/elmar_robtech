#include <moveit/move_group_interface/move_group.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>

#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>

#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>
#include <ros/ros.h>
#include <geometry_msgs/Pose.h>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "plan_yaskawa");
  ros::NodeHandle node_handle;  
  ros::AsyncSpinner spinner(1);
  spinner.start();


  /* This sleep is ONLY to allow Rviz to come up */
  sleep(5.0);
  
  
  moveit::planning_interface::MoveGroup group("sia5");

  // We will use the :planning_scene_interface:`PlanningSceneInterface`
  // class to deal directly with the world.
  moveit::planning_interface::PlanningSceneInterface planning_scene_interface;  

  // (Optional) Create a publisher for visualizing plans in Rviz.
  ros::Publisher display_publisher = node_handle.advertise<moveit_msgs::DisplayTrajectory>("/move_group/display_planned_path", 1, true);
  moveit_msgs::DisplayTrajectory display_trajectory;

  // Getting Basic Information
  // ^^^^^^^^^^^^^^^^^^^^^^^^^
  //
  // We can print the name of the reference frame for this robot.
  ROS_INFO("Reference frame: %s", group.getPlanningFrame().c_str());
  
  // We can also print the name of the end-effector link for this group.
  ROS_INFO("Reference frame: %s", group.getEndEffectorLink().c_str());



  // We will reuse the old goal that we had and plan to it.
  // Note that this will only work if the current state already 
  // satisfies the path constraints. So, we need to set the start
  // state to a new pose. 
  geometry_msgs::Pose start_pose = group.getCurrentPose().pose;
  

  geometry_msgs::Pose target_pose = start_pose;
  target_pose.position.y -= 0.2;
  group.setPoseTarget(target_pose);


  moveit::planning_interface::MoveGroup::Plan my_plan;
  bool success = group.plan(my_plan);

  //success = group.plan(my_plan);

  ROS_INFO("Visualizing plan 1 (leg1) %s",success?"":"FAILED");

  /* Sleep to give Rviz time to visualize the plan. */
  //sleep(5.0);
  group.move();
  sleep(3.0);

  geometry_msgs::Pose target_pose1 = start_pose;
target_pose1.position.z += 0.2;
target_pose1.position.x -= 0.2;
  group.setPoseTarget(target_pose1);

  success = group.plan(my_plan);

  //success = group.plan(my_plan);

  ROS_INFO("Visualizing plan 2 (leg2) %s",success?"":"FAILED");

  /* Sleep to give Rviz time to visualize the plan. */
  //sleep(5.0);
  group.move();
  sleep(3.0);

geometry_msgs::Pose target_pose2 = start_pose;
  target_pose2.position.y += 0.2;
  group.setPoseTarget(target_pose2);

  success = group.plan(my_plan);

  //success = group.plan(my_plan);

  ROS_INFO("Visualizing plan 3 (diagonal) %s",success?"":"FAILED");

  /* Sleep to give Rviz time to visualize the plan. */
  //sleep(5.0);
  group.move();
  sleep(3.0);

  geometry_msgs::Pose target_pose3 = start_pose;
  group.setPoseTarget(target_pose3);

  success = group.plan(my_plan);

  //success = group.plan(my_plan);

  ROS_INFO("Visualizing plan 4 (diagonal) %s",success?"":"FAILED");

  /* Sleep to give Rviz time to visualize the plan. */
  //sleep(5.0);
  group.move();
  sleep(3.0);

// END_TUTORIAL



  ros::shutdown();  
  return 0;
}
