; Auto-generated. Do not edit!


(cl:in-package costmap_2d-msg)


;//! \htmlinclude VoxelGrid.msg.html

(cl:defclass <VoxelGrid> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (origin
    :reader origin
    :initarg :origin
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (resolutions
    :reader resolutions
    :initarg :resolutions
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (size_x
    :reader size_x
    :initarg :size_x
    :type cl:integer
    :initform 0)
   (size_y
    :reader size_y
    :initarg :size_y
    :type cl:integer
    :initform 0)
   (size_z
    :reader size_z
    :initarg :size_z
    :type cl:integer
    :initform 0))
)

(cl:defclass VoxelGrid (<VoxelGrid>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VoxelGrid>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VoxelGrid)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name costmap_2d-msg:<VoxelGrid> is deprecated: use costmap_2d-msg:VoxelGrid instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VoxelGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_2d-msg:header-val is deprecated.  Use costmap_2d-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <VoxelGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_2d-msg:data-val is deprecated.  Use costmap_2d-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <VoxelGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_2d-msg:origin-val is deprecated.  Use costmap_2d-msg:origin instead.")
  (origin m))

(cl:ensure-generic-function 'resolutions-val :lambda-list '(m))
(cl:defmethod resolutions-val ((m <VoxelGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_2d-msg:resolutions-val is deprecated.  Use costmap_2d-msg:resolutions instead.")
  (resolutions m))

(cl:ensure-generic-function 'size_x-val :lambda-list '(m))
(cl:defmethod size_x-val ((m <VoxelGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_2d-msg:size_x-val is deprecated.  Use costmap_2d-msg:size_x instead.")
  (size_x m))

(cl:ensure-generic-function 'size_y-val :lambda-list '(m))
(cl:defmethod size_y-val ((m <VoxelGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_2d-msg:size_y-val is deprecated.  Use costmap_2d-msg:size_y instead.")
  (size_y m))

(cl:ensure-generic-function 'size_z-val :lambda-list '(m))
(cl:defmethod size_z-val ((m <VoxelGrid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader costmap_2d-msg:size_z-val is deprecated.  Use costmap_2d-msg:size_z instead.")
  (size_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VoxelGrid>) ostream)
  "Serializes a message object of type '<VoxelGrid>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'data))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'resolutions) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size_z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size_z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size_z)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size_z)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VoxelGrid>) istream)
  "Deserializes a message object of type '<VoxelGrid>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'resolutions) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'size_z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'size_z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'size_z)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'size_z)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VoxelGrid>)))
  "Returns string type for a message object of type '<VoxelGrid>"
  "costmap_2d/VoxelGrid")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VoxelGrid)))
  "Returns string type for a message object of type 'VoxelGrid"
  "costmap_2d/VoxelGrid")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VoxelGrid>)))
  "Returns md5sum for a message object of type '<VoxelGrid>"
  "48a040827e1322073d78ece5a497029c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VoxelGrid)))
  "Returns md5sum for a message object of type 'VoxelGrid"
  "48a040827e1322073d78ece5a497029c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VoxelGrid>)))
  "Returns full string definition for message of type '<VoxelGrid>"
  (cl:format cl:nil "Header header~%uint32[] data~%geometry_msgs/Point32 origin~%geometry_msgs/Vector3 resolutions~%uint32 size_x~%uint32 size_y~%uint32 size_z~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VoxelGrid)))
  "Returns full string definition for message of type 'VoxelGrid"
  (cl:format cl:nil "Header header~%uint32[] data~%geometry_msgs/Point32 origin~%geometry_msgs/Vector3 resolutions~%uint32 size_x~%uint32 size_y~%uint32 size_z~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VoxelGrid>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'resolutions))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VoxelGrid>))
  "Converts a ROS message object to a list"
  (cl:list 'VoxelGrid
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
    (cl:cons ':origin (origin msg))
    (cl:cons ':resolutions (resolutions msg))
    (cl:cons ':size_x (size_x msg))
    (cl:cons ':size_y (size_y msg))
    (cl:cons ':size_z (size_z msg))
))
