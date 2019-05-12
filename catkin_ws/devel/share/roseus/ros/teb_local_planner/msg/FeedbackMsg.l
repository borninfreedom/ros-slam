;; Auto-generated. Do not edit!


(when (boundp 'teb_local_planner::FeedbackMsg)
  (if (not (find-package "TEB_LOCAL_PLANNER"))
    (make-package "TEB_LOCAL_PLANNER"))
  (shadow 'FeedbackMsg (find-package "TEB_LOCAL_PLANNER")))
(unless (find-package "TEB_LOCAL_PLANNER::FEEDBACKMSG")
  (make-package "TEB_LOCAL_PLANNER::FEEDBACKMSG"))

(in-package "ROS")
;;//! \htmlinclude FeedbackMsg.msg.html
(if (not (find-package "COSTMAP_CONVERTER"))
  (ros::roseus-add-msgs "costmap_converter"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass teb_local_planner::FeedbackMsg
  :super ros::object
  :slots (_header _trajectories _selected_trajectory_idx _obstacles_msg ))

(defmethod teb_local_planner::FeedbackMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectories __trajectories) (let (r) (dotimes (i 0) (push (instance teb_local_planner::TrajectoryMsg :init) r)) r))
    ((:selected_trajectory_idx __selected_trajectory_idx) 0)
    ((:obstacles_msg __obstacles_msg) (instance costmap_converter::ObstacleArrayMsg :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectories __trajectories)
   (setq _selected_trajectory_idx (round __selected_trajectory_idx))
   (setq _obstacles_msg __obstacles_msg)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trajectories
   (&rest __trajectories)
   (if (keywordp (car __trajectories))
       (send* _trajectories __trajectories)
     (progn
       (if __trajectories (setq _trajectories (car __trajectories)))
       _trajectories)))
  (:selected_trajectory_idx
   (&optional __selected_trajectory_idx)
   (if __selected_trajectory_idx (setq _selected_trajectory_idx __selected_trajectory_idx)) _selected_trajectory_idx)
  (:obstacles_msg
   (&rest __obstacles_msg)
   (if (keywordp (car __obstacles_msg))
       (send* _obstacles_msg __obstacles_msg)
     (progn
       (if __obstacles_msg (setq _obstacles_msg (car __obstacles_msg)))
       _obstacles_msg)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; teb_local_planner/TrajectoryMsg[] _trajectories
    (apply #'+ (send-all _trajectories :serialization-length)) 4
    ;; uint16 _selected_trajectory_idx
    2
    ;; costmap_converter/ObstacleArrayMsg _obstacles_msg
    (send _obstacles_msg :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; teb_local_planner/TrajectoryMsg[] _trajectories
     (write-long (length _trajectories) s)
     (dolist (elem _trajectories)
       (send elem :serialize s)
       )
     ;; uint16 _selected_trajectory_idx
       (write-word _selected_trajectory_idx s)
     ;; costmap_converter/ObstacleArrayMsg _obstacles_msg
       (send _obstacles_msg :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; teb_local_planner/TrajectoryMsg[] _trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectories (let (r) (dotimes (i n) (push (instance teb_local_planner::TrajectoryMsg :init) r)) r))
     (dolist (elem- _trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint16 _selected_trajectory_idx
     (setq _selected_trajectory_idx (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; costmap_converter/ObstacleArrayMsg _obstacles_msg
     (send _obstacles_msg :deserialize buf ptr-) (incf ptr- (send _obstacles_msg :serialization-length))
   ;;
   self)
  )

(setf (get teb_local_planner::FeedbackMsg :md5sum-) "e8086148d3a39de24ca2cc423f1e94e6")
(setf (get teb_local_planner::FeedbackMsg :datatype-) "teb_local_planner/FeedbackMsg")
(setf (get teb_local_planner::FeedbackMsg :definition-)
      "# Message that contains intermediate results 
# and diagnostics of the (predictive) planner.

std_msgs/Header header

# The planned trajectory (or if multiple plans exist, all of them)
teb_local_planner/TrajectoryMsg[] trajectories

# Index of the trajectory in 'trajectories' that is selected currently
uint16 selected_trajectory_idx

# List of active obstacles
costmap_converter/ObstacleArrayMsg obstacles_msg



================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: teb_local_planner/TrajectoryMsg
# Message that contains a trajectory for mobile robot navigation

std_msgs/Header header
teb_local_planner/TrajectoryPointMsg[] trajectory



================================================================================
MSG: teb_local_planner/TrajectoryPointMsg
# Message that contains single point on a trajectory suited for mobile navigation.
# The trajectory is described by a sequence of poses, velocities,
# accelerations and temporal information.

# Why this message type?
# nav_msgs/Path describes only a path without temporal information.
# trajectory_msgs package contains only messages for joint trajectories.

# The pose of the robot
geometry_msgs/Pose pose

# Corresponding velocity
geometry_msgs/Twist velocity

# Corresponding acceleration
geometry_msgs/Twist acceleration

duration time_from_start




================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: costmap_converter/ObstacleArrayMsg
# Message that contains a list of polygon shaped obstacles.
# Special types:
# Polygon with 1 vertex: Point obstacle
# Polygon with 2 vertices: Line obstacle
# Polygon with more than 2 vertices: First and last points are assumed to be connected

std_msgs/Header header

costmap_converter/ObstacleMsg[] obstacles


================================================================================
MSG: costmap_converter/ObstacleMsg
# Special types:
# Polygon with 1 vertex: Point obstacle (you might also specify a non-zero value for radius)
# Polygon with 2 vertices: Line obstacle
# Polygon with more than 2 vertices: First and last points are assumed to be connected

std_msgs/Header header

# Obstacle footprint (polygon descriptions)
geometry_msgs/Polygon polygon

# Specify the radius for circular/point obstacles
float64 radius

# Obstacle ID
# Specify IDs in order to provide (temporal) relationships
# between obstacles among multiple messages.
int64 id

# Individual orientation (centroid)
geometry_msgs/Quaternion orientation

# Individual velocities (centroid)
geometry_msgs/TwistWithCovariance velocities


================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

")



(provide :teb_local_planner/FeedbackMsg "e8086148d3a39de24ca2cc423f1e94e6")


