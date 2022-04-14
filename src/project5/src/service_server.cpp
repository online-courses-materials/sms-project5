#include "ros/ros.h"
#include "project5/OddEvenCheck.h"

bool determineOddEven(project5::OddEvenCheck::Request &req,
                      project5::OddEvenCheck::Response &res)
{
  int remainder = req.number % 2;

  if(remainder == 0)
  {
    res.answer = "Even";
  }
  else if (remainder == 1)
  {
    res.answer = "Odd";
  }
  else
  {
    return false;
  }

  return true;
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "odd_even_service_server_node");

  ros::NodeHandle node_handle;

  ros::ServiceServer service = node_handle.advertiseService("odd_even_check", determineOddEven);

  ROS_INFO("Odd Even Check Server Running...");

  ros::spin();

  return 0;
}
