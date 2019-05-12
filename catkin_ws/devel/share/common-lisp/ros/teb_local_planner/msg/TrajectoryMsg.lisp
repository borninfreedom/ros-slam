; Auto-generated. Do not edit!


(cl:in-package teb_local_planner-msg)


;//! \htmlinclude TrajectoryMsg.msg.html

(cl:defclass <TrajectoryMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type (cl:vector teb_local_planner-msg:TrajectoryPointMsg)
   :initform (cl:make-array 0 :element-type 'teb_local_planner-msg:TrajectoryPointMsg :initial-element (cl:make-instance 'teb_local_planner-msg:TrajectoryPointMsg))))
)

(cl:defclass TrajectoryMsg (<TrajectoryMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teb_local_planner-msg:<TrajectoryMsg> is deprecated: use teb_local_planner-msg:TrajectoryMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrajectoryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:header-val is deprecated.  Use teb_local_planner-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <TrajectoryMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:trajectory-val is deprecated.  Use teb_local_planner-msg:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryMsg>) ostream)
  "Serializes a message object of type '<TrajectoryMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryMsg>) istream)
  "Deserializes a message object of type '<TrajectoryMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'teb_local_planner-msg:TrajectoryPointMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryMsg>)))
  "Returns string type for a message object of type '<TrajectoryMsg>"
  "teb_local_planner/TrajectoryMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryMsg)))
  "Returns string type for a message object of type 'TrajectoryMsg"
  "teb_local_planner/TrajectoryMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryMsg>)))
  "Returns md5sum for a message object of type '<TrajectoryMsg>"
  "9dfdc1e62b3eb03a32af2423c5b7a0dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryMsg)))
  "Returns md5sum for a message object of type 'TrajectoryMsg"
  "9dfdc1e62b3eb03a32af2423c5b7a0dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryMsg>)))
  "Returns full string definition for message of type '<TrajectoryMsg>"
  (cl:format cl:nil "# Message that contains a trajectory for mobile robot navigation~%~%std_msgs/Header header~%teb_local_planner/TrajectoryPointMsg[] trajectory~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: teb_local_planner/TrajectoryPointMsg~%# Message that contains single point on a trajectory suited for mobile navigation.~%# The trajectory is described by a sequence of poses, velocities,~%# accelerations and temporal information.~%~%# Why this message type?~%# nav_msgs/Path describes only a path without temporal information.~%# trajectory_msgs package contains only messages for joint trajectories.~%~%# The pose of the robot~%geometry_msgs/Pose pose~%~%# Corresponding velocity~%geometry_msgs/Twist velocity~%~%# Corresponding acceleration~%geometry_msgs/Twist acceleration~%~%duration time_from_start~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryMsg)))
  "Returns full string definition for message of type 'TrajectoryMsg"
  (cl:format cl:nil "# Message that contains a trajectory for mobile robot navigation~%~%std_msgs/Header header~%teb_local_planner/TrajectoryPointMsg[] trajectory~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: teb_local_planner/TrajectoryPointMsg~%# Message that contains single point on a trajectory suited for mobile navigation.~%# The trajectory is described by a sequence of poses, velocities,~%# accelerations and temporal information.~%~%# Why this message type?~%# nav_msgs/Path describes only a path without temporal information.~%# trajectory_msgs package contains only messages for joint trajectories.~%~%# The pose of the robot~%geometry_msgs/Pose pose~%~%# Corresponding velocity~%geometry_msgs/Twist velocity~%~%# Corresponding acceleration~%geometry_msgs/Twist acceleration~%~%duration time_from_start~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryMsg
    (cl:cons ':header (header msg))
    (cl:cons ':trajectory (trajectory msg))
))
