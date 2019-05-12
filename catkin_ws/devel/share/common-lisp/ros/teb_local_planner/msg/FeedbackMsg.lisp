; Auto-generated. Do not edit!


(cl:in-package teb_local_planner-msg)


;//! \htmlinclude FeedbackMsg.msg.html

(cl:defclass <FeedbackMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trajectories
    :reader trajectories
    :initarg :trajectories
    :type (cl:vector teb_local_planner-msg:TrajectoryMsg)
   :initform (cl:make-array 0 :element-type 'teb_local_planner-msg:TrajectoryMsg :initial-element (cl:make-instance 'teb_local_planner-msg:TrajectoryMsg)))
   (selected_trajectory_idx
    :reader selected_trajectory_idx
    :initarg :selected_trajectory_idx
    :type cl:fixnum
    :initform 0)
   (obstacles_msg
    :reader obstacles_msg
    :initarg :obstacles_msg
    :type costmap_converter-msg:ObstacleArrayMsg
    :initform (cl:make-instance 'costmap_converter-msg:ObstacleArrayMsg)))
)

(cl:defclass FeedbackMsg (<FeedbackMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeedbackMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeedbackMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teb_local_planner-msg:<FeedbackMsg> is deprecated: use teb_local_planner-msg:FeedbackMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FeedbackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:header-val is deprecated.  Use teb_local_planner-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trajectories-val :lambda-list '(m))
(cl:defmethod trajectories-val ((m <FeedbackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:trajectories-val is deprecated.  Use teb_local_planner-msg:trajectories instead.")
  (trajectories m))

(cl:ensure-generic-function 'selected_trajectory_idx-val :lambda-list '(m))
(cl:defmethod selected_trajectory_idx-val ((m <FeedbackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:selected_trajectory_idx-val is deprecated.  Use teb_local_planner-msg:selected_trajectory_idx instead.")
  (selected_trajectory_idx m))

(cl:ensure-generic-function 'obstacles_msg-val :lambda-list '(m))
(cl:defmethod obstacles_msg-val ((m <FeedbackMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teb_local_planner-msg:obstacles_msg-val is deprecated.  Use teb_local_planner-msg:obstacles_msg instead.")
  (obstacles_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeedbackMsg>) ostream)
  "Serializes a message object of type '<FeedbackMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectories))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'selected_trajectory_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'selected_trajectory_idx)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacles_msg) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeedbackMsg>) istream)
  "Deserializes a message object of type '<FeedbackMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectories) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectories)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'teb_local_planner-msg:TrajectoryMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'selected_trajectory_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'selected_trajectory_idx)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacles_msg) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeedbackMsg>)))
  "Returns string type for a message object of type '<FeedbackMsg>"
  "teb_local_planner/FeedbackMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeedbackMsg)))
  "Returns string type for a message object of type 'FeedbackMsg"
  "teb_local_planner/FeedbackMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeedbackMsg>)))
  "Returns md5sum for a message object of type '<FeedbackMsg>"
  "e8086148d3a39de24ca2cc423f1e94e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeedbackMsg)))
  "Returns md5sum for a message object of type 'FeedbackMsg"
  "e8086148d3a39de24ca2cc423f1e94e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeedbackMsg>)))
  "Returns full string definition for message of type '<FeedbackMsg>"
  (cl:format cl:nil "# Message that contains intermediate results ~%# and diagnostics of the (predictive) planner.~%~%std_msgs/Header header~%~%# The planned trajectory (or if multiple plans exist, all of them)~%teb_local_planner/TrajectoryMsg[] trajectories~%~%# Index of the trajectory in 'trajectories' that is selected currently~%uint16 selected_trajectory_idx~%~%# List of active obstacles~%costmap_converter/ObstacleArrayMsg obstacles_msg~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: teb_local_planner/TrajectoryMsg~%# Message that contains a trajectory for mobile robot navigation~%~%std_msgs/Header header~%teb_local_planner/TrajectoryPointMsg[] trajectory~%~%~%~%================================================================================~%MSG: teb_local_planner/TrajectoryPointMsg~%# Message that contains single point on a trajectory suited for mobile navigation.~%# The trajectory is described by a sequence of poses, velocities,~%# accelerations and temporal information.~%~%# Why this message type?~%# nav_msgs/Path describes only a path without temporal information.~%# trajectory_msgs package contains only messages for joint trajectories.~%~%# The pose of the robot~%geometry_msgs/Pose pose~%~%# Corresponding velocity~%geometry_msgs/Twist velocity~%~%# Corresponding acceleration~%geometry_msgs/Twist acceleration~%~%duration time_from_start~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: costmap_converter/ObstacleArrayMsg~%# Message that contains a list of polygon shaped obstacles.~%# Special types:~%# Polygon with 1 vertex: Point obstacle~%# Polygon with 2 vertices: Line obstacle~%# Polygon with more than 2 vertices: First and last points are assumed to be connected~%~%std_msgs/Header header~%~%costmap_converter/ObstacleMsg[] obstacles~%~%~%================================================================================~%MSG: costmap_converter/ObstacleMsg~%# Special types:~%# Polygon with 1 vertex: Point obstacle (you might also specify a non-zero value for radius)~%# Polygon with 2 vertices: Line obstacle~%# Polygon with more than 2 vertices: First and last points are assumed to be connected~%~%std_msgs/Header header~%~%# Obstacle footprint (polygon descriptions)~%geometry_msgs/Polygon polygon~%~%# Specify the radius for circular/point obstacles~%float64 radius~%~%# Obstacle ID~%# Specify IDs in order to provide (temporal) relationships~%# between obstacles among multiple messages.~%int64 id~%~%# Individual orientation (centroid)~%geometry_msgs/Quaternion orientation~%~%# Individual velocities (centroid)~%geometry_msgs/TwistWithCovariance velocities~%~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeedbackMsg)))
  "Returns full string definition for message of type 'FeedbackMsg"
  (cl:format cl:nil "# Message that contains intermediate results ~%# and diagnostics of the (predictive) planner.~%~%std_msgs/Header header~%~%# The planned trajectory (or if multiple plans exist, all of them)~%teb_local_planner/TrajectoryMsg[] trajectories~%~%# Index of the trajectory in 'trajectories' that is selected currently~%uint16 selected_trajectory_idx~%~%# List of active obstacles~%costmap_converter/ObstacleArrayMsg obstacles_msg~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: teb_local_planner/TrajectoryMsg~%# Message that contains a trajectory for mobile robot navigation~%~%std_msgs/Header header~%teb_local_planner/TrajectoryPointMsg[] trajectory~%~%~%~%================================================================================~%MSG: teb_local_planner/TrajectoryPointMsg~%# Message that contains single point on a trajectory suited for mobile navigation.~%# The trajectory is described by a sequence of poses, velocities,~%# accelerations and temporal information.~%~%# Why this message type?~%# nav_msgs/Path describes only a path without temporal information.~%# trajectory_msgs package contains only messages for joint trajectories.~%~%# The pose of the robot~%geometry_msgs/Pose pose~%~%# Corresponding velocity~%geometry_msgs/Twist velocity~%~%# Corresponding acceleration~%geometry_msgs/Twist acceleration~%~%duration time_from_start~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: costmap_converter/ObstacleArrayMsg~%# Message that contains a list of polygon shaped obstacles.~%# Special types:~%# Polygon with 1 vertex: Point obstacle~%# Polygon with 2 vertices: Line obstacle~%# Polygon with more than 2 vertices: First and last points are assumed to be connected~%~%std_msgs/Header header~%~%costmap_converter/ObstacleMsg[] obstacles~%~%~%================================================================================~%MSG: costmap_converter/ObstacleMsg~%# Special types:~%# Polygon with 1 vertex: Point obstacle (you might also specify a non-zero value for radius)~%# Polygon with 2 vertices: Line obstacle~%# Polygon with more than 2 vertices: First and last points are assumed to be connected~%~%std_msgs/Header header~%~%# Obstacle footprint (polygon descriptions)~%geometry_msgs/Polygon polygon~%~%# Specify the radius for circular/point obstacles~%float64 radius~%~%# Obstacle ID~%# Specify IDs in order to provide (temporal) relationships~%# between obstacles among multiple messages.~%int64 id~%~%# Individual orientation (centroid)~%geometry_msgs/Quaternion orientation~%~%# Individual velocities (centroid)~%geometry_msgs/TwistWithCovariance velocities~%~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeedbackMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacles_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeedbackMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'FeedbackMsg
    (cl:cons ':header (header msg))
    (cl:cons ':trajectories (trajectories msg))
    (cl:cons ':selected_trajectory_idx (selected_trajectory_idx msg))
    (cl:cons ':obstacles_msg (obstacles_msg msg))
))
