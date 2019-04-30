; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-srv)


;//! \htmlinclude FinishTrajectory-request.msg.html

(cl:defclass <FinishTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((stem
    :reader stem
    :initarg :stem
    :type cl:string
    :initform ""))
)

(cl:defclass FinishTrajectory-request (<FinishTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FinishTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FinishTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-srv:<FinishTrajectory-request> is deprecated: use cartographer_ros_msgs-srv:FinishTrajectory-request instead.")))

(cl:ensure-generic-function 'stem-val :lambda-list '(m))
(cl:defmethod stem-val ((m <FinishTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:stem-val is deprecated.  Use cartographer_ros_msgs-srv:stem instead.")
  (stem m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FinishTrajectory-request>) ostream)
  "Serializes a message object of type '<FinishTrajectory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'stem))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'stem))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FinishTrajectory-request>) istream)
  "Deserializes a message object of type '<FinishTrajectory-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stem) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'stem) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FinishTrajectory-request>)))
  "Returns string type for a service object of type '<FinishTrajectory-request>"
  "cartographer_ros_msgs/FinishTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FinishTrajectory-request)))
  "Returns string type for a service object of type 'FinishTrajectory-request"
  "cartographer_ros_msgs/FinishTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FinishTrajectory-request>)))
  "Returns md5sum for a message object of type '<FinishTrajectory-request>"
  "1ca78fe806c5256bb03c4e35886127f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FinishTrajectory-request)))
  "Returns md5sum for a message object of type 'FinishTrajectory-request"
  "1ca78fe806c5256bb03c4e35886127f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FinishTrajectory-request>)))
  "Returns full string definition for message of type '<FinishTrajectory-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%string stem~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FinishTrajectory-request)))
  "Returns full string definition for message of type 'FinishTrajectory-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%string stem~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FinishTrajectory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'stem))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FinishTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FinishTrajectory-request
    (cl:cons ':stem (stem msg))
))
;//! \htmlinclude FinishTrajectory-response.msg.html

(cl:defclass <FinishTrajectory-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass FinishTrajectory-response (<FinishTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FinishTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FinishTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-srv:<FinishTrajectory-response> is deprecated: use cartographer_ros_msgs-srv:FinishTrajectory-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FinishTrajectory-response>) ostream)
  "Serializes a message object of type '<FinishTrajectory-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FinishTrajectory-response>) istream)
  "Deserializes a message object of type '<FinishTrajectory-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FinishTrajectory-response>)))
  "Returns string type for a service object of type '<FinishTrajectory-response>"
  "cartographer_ros_msgs/FinishTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FinishTrajectory-response)))
  "Returns string type for a service object of type 'FinishTrajectory-response"
  "cartographer_ros_msgs/FinishTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FinishTrajectory-response>)))
  "Returns md5sum for a message object of type '<FinishTrajectory-response>"
  "1ca78fe806c5256bb03c4e35886127f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FinishTrajectory-response)))
  "Returns md5sum for a message object of type 'FinishTrajectory-response"
  "1ca78fe806c5256bb03c4e35886127f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FinishTrajectory-response>)))
  "Returns full string definition for message of type '<FinishTrajectory-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FinishTrajectory-response)))
  "Returns full string definition for message of type 'FinishTrajectory-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FinishTrajectory-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FinishTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FinishTrajectory-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FinishTrajectory)))
  'FinishTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FinishTrajectory)))
  'FinishTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FinishTrajectory)))
  "Returns string type for a service object of type '<FinishTrajectory>"
  "cartographer_ros_msgs/FinishTrajectory")