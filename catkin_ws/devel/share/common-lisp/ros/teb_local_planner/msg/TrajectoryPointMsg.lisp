; Auto-generated. Do not edit!


(cl:in-package teb_local_planner-msg)


;//! \htmlinclude TrajectoryPointMsg.msg.html

(cl:defclass <TrajectoryPointMsg> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (time_from_start
    :reader time_from_start
    :initarg :time_from_start
    :type cl:real
    :initform 0))
)

(cl:defclass TrajectoryPointMsg (<TrajectoryPointMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryPointMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryPointMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teb_local_planner-msg:<TrajectoryPointMsg> is deprecated: use teb_local_planner-msg:TrajectoryPointMsg instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TrajectoryPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:pose-val is deprecated.  Use teb_local_planner-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <TrajectoryPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:velocity-val is deprecated.  Use teb_local_planner-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <TrajectoryPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:acceleration-val is deprecated.  Use teb_local_planner-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'time_from_start-val :lambda-list '(m))
(cl:defmethod time_from_start-val ((m <TrajectoryPointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:time_from_start-val is deprecated.  Use teb_local_planner-msg:time_from_start instead.")
  (time_from_start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryPointMsg>) ostream)
  "Serializes a message object of type '<TrajectoryPointMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_from_start)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_from_start) (cl:floor (cl:slot-value msg 'time_from_start)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryPointMsg>) istream)
  "Deserializes a message object of type '<TrajectoryPointMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_from_start) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryPointMsg>)))
  "Returns string type for a message object of type '<TrajectoryPointMsg>"
  "teb_local_planner/TrajectoryPointMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryPointMsg)))
  "Returns string type for a message object of type 'TrajectoryPointMsg"
  "teb_local_planner/TrajectoryPointMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryPointMsg>)))
  "Returns md5sum for a message object of type '<TrajectoryPointMsg>"
  "4c309845772249e786605716950755c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryPointMsg)))
  "Returns md5sum for a message object of type 'TrajectoryPointMsg"
  "4c309845772249e786605716950755c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryPointMsg>)))
  "Returns full string definition for message of type '<TrajectoryPointMsg>"
  (cl:format cl:nil "# Message that contains single point on a trajectory suited for mobile navigation.~%# The trajectory is described by a sequence of poses, velocities,~%# accelerations and temporal information.~%~%# Why this message type?~%# nav_msgs/Path describes only a path without temporal information.~%# trajectory_msgs package contains only messages for joint trajectories.~%~%# The pose of the robot~%geometry_msgs/Pose pose~%~%# Corresponding velocity~%geometry_msgs/Twist velocity~%~%# Corresponding acceleration~%geometry_msgs/Twist acceleration~%~%duration time_from_start~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryPointMsg)))
  "Returns full string definition for message of type 'TrajectoryPointMsg"
  (cl:format cl:nil "# Message that contains single point on a trajectory suited for mobile navigation.~%# The trajectory is described by a sequence of poses, velocities,~%# accelerations and temporal information.~%~%# Why this message type?~%# nav_msgs/Path describes only a path without temporal information.~%# trajectory_msgs package contains only messages for joint trajectories.~%~%# The pose of the robot~%geometry_msgs/Pose pose~%~%# Corresponding velocity~%geometry_msgs/Twist velocity~%~%# Corresponding acceleration~%geometry_msgs/Twist acceleration~%~%duration time_from_start~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryPointMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryPointMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryPointMsg
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':time_from_start (time_from_start msg))
))
