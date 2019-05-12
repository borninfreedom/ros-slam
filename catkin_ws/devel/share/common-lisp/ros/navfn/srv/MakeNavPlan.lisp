; Auto-generated. Do not edit!


(cl:in-package navfn-srv)


;//! \htmlinclude MakeNavPlan-request.msg.html

(cl:defclass <MakeNavPlan-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass MakeNavPlan-request (<MakeNavPlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakeNavPlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakeNavPlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navfn-srv:<MakeNavPlan-request> is deprecated: use navfn-srv:MakeNavPlan-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <MakeNavPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navfn-srv:start-val is deprecated.  Use navfn-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MakeNavPlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navfn-srv:goal-val is deprecated.  Use navfn-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakeNavPlan-request>) ostream)
  "Serializes a message object of type '<MakeNavPlan-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakeNavPlan-request>) istream)
  "Deserializes a message object of type '<MakeNavPlan-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakeNavPlan-request>)))
  "Returns string type for a service object of type '<MakeNavPlan-request>"
  "navfn/MakeNavPlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeNavPlan-request)))
  "Returns string type for a service object of type 'MakeNavPlan-request"
  "navfn/MakeNavPlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakeNavPlan-request>)))
  "Returns md5sum for a message object of type '<MakeNavPlan-request>"
  "8ffef29bc8b086289124c16a8daa989d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakeNavPlan-request)))
  "Returns md5sum for a message object of type 'MakeNavPlan-request"
  "8ffef29bc8b086289124c16a8daa989d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakeNavPlan-request>)))
  "Returns full string definition for message of type '<MakeNavPlan-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakeNavPlan-request)))
  "Returns full string definition for message of type 'MakeNavPlan-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakeNavPlan-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakeNavPlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MakeNavPlan-request
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude MakeNavPlan-response.msg.html

(cl:defclass <MakeNavPlan-response> (roslisp-msg-protocol:ros-message)
  ((plan_found
    :reader plan_found
    :initarg :plan_found
    :type cl:fixnum
    :initform 0)
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform "")
   (path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped))))
)

(cl:defclass MakeNavPlan-response (<MakeNavPlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MakeNavPlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MakeNavPlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navfn-srv:<MakeNavPlan-response> is deprecated: use navfn-srv:MakeNavPlan-response instead.")))

(cl:ensure-generic-function 'plan_found-val :lambda-list '(m))
(cl:defmethod plan_found-val ((m <MakeNavPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navfn-srv:plan_found-val is deprecated.  Use navfn-srv:plan_found instead.")
  (plan_found m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <MakeNavPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navfn-srv:error_message-val is deprecated.  Use navfn-srv:error_message instead.")
  (error_message m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <MakeNavPlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navfn-srv:path-val is deprecated.  Use navfn-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MakeNavPlan-response>) ostream)
  "Serializes a message object of type '<MakeNavPlan-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'plan_found)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MakeNavPlan-response>) istream)
  "Deserializes a message object of type '<MakeNavPlan-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'plan_found)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MakeNavPlan-response>)))
  "Returns string type for a service object of type '<MakeNavPlan-response>"
  "navfn/MakeNavPlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeNavPlan-response)))
  "Returns string type for a service object of type 'MakeNavPlan-response"
  "navfn/MakeNavPlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MakeNavPlan-response>)))
  "Returns md5sum for a message object of type '<MakeNavPlan-response>"
  "8ffef29bc8b086289124c16a8daa989d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MakeNavPlan-response)))
  "Returns md5sum for a message object of type 'MakeNavPlan-response"
  "8ffef29bc8b086289124c16a8daa989d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MakeNavPlan-response>)))
  "Returns full string definition for message of type '<MakeNavPlan-response>"
  (cl:format cl:nil "~%uint8 plan_found~%string error_message~%~%~%geometry_msgs/PoseStamped[] path~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MakeNavPlan-response)))
  "Returns full string definition for message of type 'MakeNavPlan-response"
  (cl:format cl:nil "~%uint8 plan_found~%string error_message~%~%~%geometry_msgs/PoseStamped[] path~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MakeNavPlan-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MakeNavPlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MakeNavPlan-response
    (cl:cons ':plan_found (plan_found msg))
    (cl:cons ':error_message (error_message msg))
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MakeNavPlan)))
  'MakeNavPlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MakeNavPlan)))
  'MakeNavPlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MakeNavPlan)))
  "Returns string type for a service object of type '<MakeNavPlan>"
  "navfn/MakeNavPlan")