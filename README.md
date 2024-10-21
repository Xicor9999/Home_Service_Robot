# Home Service Robot Project

## Overview
This project implements a home service robot that can navigate through an environment, map it, and perform tasks such as picking up and dropping off objects. The robot utilizes various ROS (Robot Operating System) packages to achieve localization, mapping, and navigation.

## Packages Used

### 1. **SLAM (Simultaneous Localization and Mapping)**
- **Package:** `gmapping`
- **Description:** This package is used for creating a map of the environment while simultaneously keeping track of the robot's location within that map. It uses laser scan data to build a 2D occupancy grid map.

### 2. **Localization**
- **Package:** `amcl` (Adaptive Monte Carlo Localization)
- **Description:** AMCL is used for localizing the robot within the map created by SLAM. It uses particle filters to estimate the robot's position and orientation based on sensor data and the map.

### 3. **Navigation**
- **Package:** `move_base`
- **Description:** This package provides the navigation stack that allows the robot to move to a specified goal position. It integrates various components such as path planning, obstacle avoidance, and costmap generation.

### 4. **Path Planning**
- **Package:** `global_planner` and `local_planner`
- **Description:** These packages are responsible for generating a path from the robot's current position to the goal position. The global planner creates a high-level path, while the local planner adjusts the path in real-time to avoid obstacles.

### 5. **Visualization**
- **Package:** `rviz`
- **Description:** RViz is a 3D visualization tool for ROS that allows users to visualize the robot's sensor data, the map, and the planned paths. It is essential for debugging and understanding the robot's behavior.

## How It Works
1. **Mapping:** The robot uses the `gmapping` package to create a map of the environment as it moves around. It collects laser scan data and builds an occupancy grid.

2. **Localization:** Once the map is created, the `amcl` package is used to determine the robot's position within that map. It continuously updates the robot's location based on sensor readings.

3. **Navigation:** When a goal is set, the `move_base` package is activated. It uses the global and local planners to navigate the robot to the desired location while avoiding obstacles.

4. **Execution of Tasks:** The robot can perform tasks such as picking up and dropping off objects by following predefined scripts that control its movement and actions.

## Conclusion
This README provides a brief overview of the packages used in the Home Service Robot project. Each package plays a crucial role in enabling the robot to navigate, localize, and perform home service tasks effectively.
