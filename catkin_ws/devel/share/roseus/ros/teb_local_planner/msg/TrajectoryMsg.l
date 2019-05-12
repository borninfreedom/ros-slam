;; Auto-generated. Do not edit!


(when (boundp 'teb_local_planner::TrajectoryMsg)
  (if (not (find-package "TEB_LOCAL_PLANNER"))
    (make-package "TEB_LOCAL_PLANNER"))
  (shadow 'TrajectoryMsg (find-package "TEB_LOCAL_PLANNER")))
(unless (find-package "TEB_LOCAL_PLANNER::TRAJECTORYMSG")
  (make-package "TEB_LOCAL_PLANNER::TRAJECTORYMSG"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass teb_local_planner::TrajectoryMsg
  :super ros::object
  :slots (_header _trajectory ))

(defmethod teb_local_planner::TrajectoryMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trajectory __trajectory) (let (r) (dotimes (i 0) (push (instance teb_local_planner::TrajectoryPointMsg :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _trajectory __trajectory)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; teb_local_planner/TrajectoryPointMsg[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; teb_local_planner/TrajectoryPointMsg[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; teb_local_planner/TrajectoryPointMsg[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (let (r) (dotimes (i n) (push (instance teb_local_planner::TrajectoryPointMsg :init) r)) r))
     (dolist (elem- _trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get teb_local_planner::TrajectoryMsg :md5sum-) "9dfdc1e62b3eb03a32af2423c5b7a0dd")
(setf (get teb_local_planner::TrajectoryMsg :datatype-) "teb_local_planner/TrajectoryMsg")
(setf (get teb_local_planner::TrajectoryMsg :definition-)
      "# Message that contains a trajectory for mobile robot navigation

std_msgs/Header header
teb_local_planner/TrajectoryPointMsg[] trajectory



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
")



(provide :teb_local_planner/TrajectoryMsg "9dfdc1e62b3eb03a32af2423c5b7a0dd")


