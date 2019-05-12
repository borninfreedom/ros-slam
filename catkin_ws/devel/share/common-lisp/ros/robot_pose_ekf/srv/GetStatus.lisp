; Auto-generated. Do not edit!


(cl:in-package robot_pose_ekf-srv)


;//! \htmlinclude GetStatus-request.msg.html

(cl:defclass <GetStatus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetStatus-request (<GetStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_pose_ekf-srv:<GetStatus-request> is deprecated: use robot_pose_ekf-srv:GetStatus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStatus-request>) ostream)
  "Serializes a message object of type '<GetStatus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStatus-request>) istream)
  "Deserializes a message object of type '<GetStatus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStatus-request>)))
  "Returns string type for a service object of type '<GetStatus-request>"
  "robot_pose_ekf/GetStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStatus-request)))
  "Returns string type for a service object of type 'GetStatus-request"
  "robot_pose_ekf/GetStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStatus-request>)))
  "Returns md5sum for a message object of type '<GetStatus-request>"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStatus-request)))
  "Returns md5sum for a message object of type 'GetStatus-request"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStatus-request>)))
  "Returns full string definition for message of type '<GetStatus-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStatus-request)))
  "Returns full string definition for message of type 'GetStatus-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStatus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStatus-request
))
;//! \htmlinclude GetStatus-response.msg.html

(cl:defclass <GetStatus-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass GetStatus-response (<GetStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_pose_ekf-srv:<GetStatus-response> is deprecated: use robot_pose_ekf-srv:GetStatus-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_pose_ekf-srv:status-val is deprecated.  Use robot_pose_ekf-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStatus-response>) ostream)
  "Serializes a message object of type '<GetStatus-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStatus-response>) istream)
  "Deserializes a message object of type '<GetStatus-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStatus-response>)))
  "Returns string type for a service object of type '<GetStatus-response>"
  "robot_pose_ekf/GetStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStatus-response)))
  "Returns string type for a service object of type 'GetStatus-response"
  "robot_pose_ekf/GetStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStatus-response>)))
  "Returns md5sum for a message object of type '<GetStatus-response>"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStatus-response)))
  "Returns md5sum for a message object of type 'GetStatus-response"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStatus-response>)))
  "Returns full string definition for message of type '<GetStatus-response>"
  (cl:format cl:nil "string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStatus-response)))
  "Returns full string definition for message of type 'GetStatus-response"
  (cl:format cl:nil "string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStatus-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStatus-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetStatus)))
  'GetStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetStatus)))
  'GetStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStatus)))
  "Returns string type for a service object of type '<GetStatus>"
  "robot_pose_ekf/GetStatus")