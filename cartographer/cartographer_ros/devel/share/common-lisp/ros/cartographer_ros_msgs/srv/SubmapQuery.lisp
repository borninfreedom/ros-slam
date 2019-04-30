; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-srv)


;//! \htmlinclude SubmapQuery-request.msg.html

(cl:defclass <SubmapQuery-request> (roslisp-msg-protocol:ros-message)
  ((submap_id
    :reader submap_id
    :initarg :submap_id
    :type cl:integer
    :initform 0)
   (trajectory_id
    :reader trajectory_id
    :initarg :trajectory_id
    :type cl:integer
    :initform 0))
)

(cl:defclass SubmapQuery-request (<SubmapQuery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubmapQuery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubmapQuery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-srv:<SubmapQuery-request> is deprecated: use cartographer_ros_msgs-srv:SubmapQuery-request instead.")))

(cl:ensure-generic-function 'submap_id-val :lambda-list '(m))
(cl:defmethod submap_id-val ((m <SubmapQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:submap_id-val is deprecated.  Use cartographer_ros_msgs-srv:submap_id instead.")
  (submap_id m))

(cl:ensure-generic-function 'trajectory_id-val :lambda-list '(m))
(cl:defmethod trajectory_id-val ((m <SubmapQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:trajectory_id-val is deprecated.  Use cartographer_ros_msgs-srv:trajectory_id instead.")
  (trajectory_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubmapQuery-request>) ostream)
  "Serializes a message object of type '<SubmapQuery-request>"
  (cl:let* ((signed (cl:slot-value msg 'submap_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'trajectory_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubmapQuery-request>) istream)
  "Deserializes a message object of type '<SubmapQuery-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'submap_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trajectory_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubmapQuery-request>)))
  "Returns string type for a service object of type '<SubmapQuery-request>"
  "cartographer_ros_msgs/SubmapQueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmapQuery-request)))
  "Returns string type for a service object of type 'SubmapQuery-request"
  "cartographer_ros_msgs/SubmapQueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubmapQuery-request>)))
  "Returns md5sum for a message object of type '<SubmapQuery-request>"
  "0db2c1e6e0442d0daae552833fa004b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubmapQuery-request)))
  "Returns md5sum for a message object of type 'SubmapQuery-request"
  "0db2c1e6e0442d0daae552833fa004b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubmapQuery-request>)))
  "Returns full string definition for message of type '<SubmapQuery-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%int32 submap_id~%int32 trajectory_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubmapQuery-request)))
  "Returns full string definition for message of type 'SubmapQuery-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%int32 submap_id~%int32 trajectory_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubmapQuery-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubmapQuery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SubmapQuery-request
    (cl:cons ':submap_id (submap_id msg))
    (cl:cons ':trajectory_id (trajectory_id msg))
))
;//! \htmlinclude SubmapQuery-response.msg.html

(cl:defclass <SubmapQuery-response> (roslisp-msg-protocol:ros-message)
  ((submap_version
    :reader submap_version
    :initarg :submap_version
    :type cl:integer
    :initform 0)
   (cells
    :reader cells
    :initarg :cells
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (resolution
    :reader resolution
    :initarg :resolution
    :type cl:float
    :initform 0.0)
   (slice_pose
    :reader slice_pose
    :initarg :slice_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform ""))
)

(cl:defclass SubmapQuery-response (<SubmapQuery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubmapQuery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubmapQuery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-srv:<SubmapQuery-response> is deprecated: use cartographer_ros_msgs-srv:SubmapQuery-response instead.")))

(cl:ensure-generic-function 'submap_version-val :lambda-list '(m))
(cl:defmethod submap_version-val ((m <SubmapQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:submap_version-val is deprecated.  Use cartographer_ros_msgs-srv:submap_version instead.")
  (submap_version m))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <SubmapQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:cells-val is deprecated.  Use cartographer_ros_msgs-srv:cells instead.")
  (cells m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <SubmapQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:width-val is deprecated.  Use cartographer_ros_msgs-srv:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <SubmapQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:height-val is deprecated.  Use cartographer_ros_msgs-srv:height instead.")
  (height m))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <SubmapQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:resolution-val is deprecated.  Use cartographer_ros_msgs-srv:resolution instead.")
  (resolution m))

(cl:ensure-generic-function 'slice_pose-val :lambda-list '(m))
(cl:defmethod slice_pose-val ((m <SubmapQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:slice_pose-val is deprecated.  Use cartographer_ros_msgs-srv:slice_pose instead.")
  (slice_pose m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <SubmapQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:error_message-val is deprecated.  Use cartographer_ros_msgs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubmapQuery-response>) ostream)
  "Serializes a message object of type '<SubmapQuery-response>"
  (cl:let* ((signed (cl:slot-value msg 'submap_version)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'cells))
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'slice_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubmapQuery-response>) istream)
  "Deserializes a message object of type '<SubmapQuery-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'submap_version) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cells) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cells)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'slice_pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubmapQuery-response>)))
  "Returns string type for a service object of type '<SubmapQuery-response>"
  "cartographer_ros_msgs/SubmapQueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmapQuery-response)))
  "Returns string type for a service object of type 'SubmapQuery-response"
  "cartographer_ros_msgs/SubmapQueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubmapQuery-response>)))
  "Returns md5sum for a message object of type '<SubmapQuery-response>"
  "0db2c1e6e0442d0daae552833fa004b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubmapQuery-response)))
  "Returns md5sum for a message object of type 'SubmapQuery-response"
  "0db2c1e6e0442d0daae552833fa004b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubmapQuery-response>)))
  "Returns full string definition for message of type '<SubmapQuery-response>"
  (cl:format cl:nil "int32 submap_version~%uint8[] cells~%int32 width~%int32 height~%float64 resolution~%geometry_msgs/Pose slice_pose~%string error_message~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubmapQuery-response)))
  "Returns full string definition for message of type 'SubmapQuery-response"
  (cl:format cl:nil "int32 submap_version~%uint8[] cells~%int32 width~%int32 height~%float64 resolution~%geometry_msgs/Pose slice_pose~%string error_message~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubmapQuery-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'slice_pose))
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubmapQuery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SubmapQuery-response
    (cl:cons ':submap_version (submap_version msg))
    (cl:cons ':cells (cells msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':resolution (resolution msg))
    (cl:cons ':slice_pose (slice_pose msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SubmapQuery)))
  'SubmapQuery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SubmapQuery)))
  'SubmapQuery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmapQuery)))
  "Returns string type for a service object of type '<SubmapQuery>"
  "cartographer_ros_msgs/SubmapQuery")