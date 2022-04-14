# sms-course-project 5

- Creating the project 5
```bash
ros@ubuntu:~/catkin_ws$ mkdir project5_ws
ros@ubuntu:~/catkin_ws$ cd project5_ws/
ros@ubuntu:~/catkin_ws/project5_ws$ mkdir src
ros@ubuntu:~/catkin_ws/project5_ws$ cd src
ros@ubuntu:~/catkin_ws/project5_ws/src$ catkin_create_pkg project4 roscpp
Created file project5/package.xml
Created file project5/CMakeLists.txt
Created folder project5/include/project5
Created folder project5/src
Successfully created files in /home/ros/catkin_ws/project5_ws/src/project5. Please adjust the values in package.xml.
ros@ubuntu:~/catkin_ws/project4_ws/src$mkdir launch
---------------------------------------------------------------
UPDATE src FOLDER CPP CODES (launch files in launch folder & speed_calc.cpp & rpm_pub.cpp) AND C_MAKE FILE (add target information for building speed_calc & rpm_pub objects )
---------------------------------------------------------------
ros@ubuntu:~/catkin_ws/project5_ws/src$ cd ..
ros@ubuntu:~/catkin_ws/project5_ws$ catkin_make
Base path: /home/ros/catkin_ws/project5_ws
Source space: /home/ros/catkin_ws/project5_ws/src
Build space: /home/ros/catkin_ws/project5_ws/build
Devel space: /home/ros/catkin_ws/project5_ws/devel
.
.
.
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~~  traversing 1 packages in topological order:
-- ~~  - project4
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- +++ processing catkin package: 'project5'
-- ==> add_subdirectory(project5)
-- Configuring done
-- Generating done
-- Build files have been written to: /home/ros/catkin_ws/project5_ws/build
####
#### Running command: "make -j4 -l4" in "/home/ros/catkin_ws/project5_ws/build"
####
Scanning dependencies of target rpm_pub
Scanning dependencies of target speed_calc
[ 25%] Building CXX object project4/CMakeFiles/speed_calc.dir/src/speed_calc.cpp.o
[ 50%] Building CXX object project4/CMakeFiles/rpm_pub.dir/src/rpm_pub.cpp.o
[ 75%] Linking CXX executable /home/ros/catkin_ws/project5_ws/devel/lib/project4/rpm_pub
[100%] Linking CXX executable /home/ros/catkin_ws/project5_ws/devel/lib/project4/speed_calc
[100%] Built target rpm_pub
[100%] Built target speed_calc
ros@ubuntu:~/catkin_ws/project4_ws$

```
- Clone the repository 
```bash
ros@ubuntu:~/catkin_ws$ mkdir project5_ws
ros@ubuntu:~/catkin_ws/cd project5_ws
ros@ubuntu:~/catkin_ws/project5_ws$ git clone "https://github.com/online-courses-materials/sms-project5.git"
```

- Restart the roscore in the command line
```bash
ros@ubuntu:~/catkin_ws/project5_ws$ roscore
.. logging to /home/ros/.ros/log/2eef3038-b49f-11ec-8a39-8b31e70de496/roslaunch-ubuntu-2895.log
Checking log directory for disk usage. This may take a while.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

started roslaunch server http://ubuntu:36287/
ros_comm version 1.15.13


SUMMARY
========

PARAMETERS
 * /rosdistro: noetic
 * /rosversion: 1.15.13

NODES

auto-starting new master
process[master]: started with pid [2906]
ROS_MASTER_URI=http://ubuntu:11311/

setting /run_id to 2eef3038-b49f-11ec-8a39-8b31e70de496
process[rosout-1]: started with pid [2918]
started core service [/rosout]
```
- Compile the project
```bash
ros@ubuntu:~/catkin_ws/project4_ws$ catkin_make
```
- Run the subscriber node in the new tab
```bash
ros@ubuntu:~/catkin_ws/project4_ws$ source devel/setup.bash
ros@ubuntu:~/catkin_ws/project4_ws$ source devel/setup.bash
ros@ubuntu:~/catkin_ws/project4_ws$ roslaunch project4 speed_simulator.launch
... logging to /home/ros/.ros/log/469fe1f4-b667-11ec-b18a-37440ee3e9cd/roslaunch-ubuntu-14430.log
Checking log directory for disk usage. This may take a while.
Press Ctrl-C to interrupt
Done checking log file disk usage. Usage is <1GB.

started roslaunch server http://ubuntu:42225/

SUMMARY
========

PARAMETERS
 * /rosdistro: noetic
 * /rosversion: 1.15.13
 * /wheel_radius: 0.125

NODES
  /
    rpm_publisher_node1 (project4/rpm_pub)
    speed_calculator_node1 (project4/speed_calc)

ROS_MASTER_URI=http://localhost:11311

process[rpm_publisher_node1-1]: started with pid [14444]
process[speed_calculator_node1-2]: started with pid [14445]

```
- Test changing wheel_radius parameter   in the new tab
```bash
ros@ubuntu:~/catkin_ws/project4_ws$ rosparam list
/rosdistro
/roslaunch/uris/host_ubuntu__39201
/rosversion
/run_id
/wheel_radius
ros@ubuntu:~/catkin_ws/project4_ws$

os@ubuntu:~/catkin_ws/project4_ws$ rostopic list
/rosout
/rosout_agg
/rpm
/speed
ros@ubuntu:~/catkin_ws/project4_ws$ rostopic echo rpm
data: 60.0
---
data: 60.0
---
data: 60.0
ros@ubuntu:~/catkin_ws/project4_ws$ rostopic list
/rosout
/rosout_agg
/rpm
/speed
ros@ubuntu:~/catkin_ws/project4_ws$ rostopic echo speed
data: 5.403534889221191
---
data: 5.403534889221191
---
data: 5.403534889221191
---
data: 5.403534889221191  ( Value of speed changed after setting a new value for wheel_radius parameter)
---
data: 0.7853975296020508
---
data: 0.7853975296020508

```
