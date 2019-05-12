; Auto-generated. Do not edit!


(cl:in-package navfn-srv)


;//! \htmlinclude SetCostmap-request.msg.html

(cl:defclass <SetCostmap-request> (roslisp-msg-protocol:ros-message)
  ((costs
    :reader costs
    :initarg :costs
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (height
    :reader height
    :initarg :height
    :type cl:fixnum
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetCostmap-request (<SetCostmap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCostmap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCostmap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navfn-srv:<SetCostmap-request> is deprecated: use navfn-srv:SetCostmap-request instead.")))

(cl:ensure-generic-function 'costs-val :lambda-list '(m))
(cl:defmethod costs-val ((m <SetCostmap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navfn-srv:costs-val is deprecated.  Use navfn-srv:costs instead.")
  (costs m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <SetCostmap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navfn-srv:height-val is deprecated.  Use navfn-srv:height instead.")
  (height m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <SetCostmap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navfn-srv:width-val is deprecated.  Use navfn-srv:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCostmap-request>) ostream)
  "Serializes a message object of type '<SetCostmap-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'costs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'costs))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCostmap-request>) istream)
  "Deserializes a message object of type '<SetCostmap-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'costs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'costs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCostmap-request>)))
  "Returns string type for a service object of type '<SetCostmap-request>"
  "navfn/SetCostmapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCostmap-request)))
  "Returns string type for a service object of type 'SetCostmap-request"
  "navfn/SetCostmapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCostmap-request>)))
  "Returns md5sum for a message object of type '<SetCostmap-request>"
  "370ec969cdb71f9cde7c7cbe0d752308")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCostmap-request)))
  "Returns md5sum for a message object of type 'SetCostmap-request"
  "370ec969cdb71f9cde7c7cbe0d752308")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCostmap-request>)))
  "Returns full string definition for message of type '<SetCostmap-request>"
  (cl:format cl:nil "uint8[] costs~%uint16 height~%uint16 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCostmap-request)))
  "Returns full string definition for message of type 'SetCostmap-request"
  (cl:format cl:nil "uint8[] costs~%uint16 height~%uint16 width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCostmap-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'costs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCostmap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCostmap-request
    (cl:cons ':costs (costs msg))
    (cl:cons ':height (height msg))
    (cl:cons ':width (width msg))
))
;//! \htmlinclude SetCostmap-response.msg.html

(cl:defclass <SetCostmap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetCostmap-response (<SetCostmap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCostmap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCostmap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navfn-srv:<SetCostmap-response> is deprecated: use navfn-srv:SetCostmap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCostmap-response>) ostream)
  "Serializes a message object of type '<SetCostmap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCostmap-response>) istream)
  "Deserializes a message object of type '<SetCostmap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCostmap-response>)))
  "Returns string type for a service object of type '<SetCostmap-response>"
  "navfn/SetCostmapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCostmap-response)))
  "Returns string type for a service object of type 'SetCostmap-response"
  "navfn/SetCostmapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCostmap-response>)))
  "Returns md5sum for a message object of type '<SetCostmap-response>"
  "370ec969cdb71f9cde7c7cbe0d752308")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCostmap-response)))
  "Returns md5sum for a message object of type 'SetCostmap-response"
  "370ec969cdb71f9cde7c7cbe0d752308")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCostmap-response>)))
  "Returns full string definition for message of type '<SetCostmap-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCostmap-response)))
  "Returns full string definition for message of type 'SetCostmap-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCostmap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCostmap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCostmap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCostmap)))
  'SetCostmap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCostmap)))
  'SetCostmap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCostmap)))
  "Returns string type for a service object of type '<SetCostmap>"
  "navfn/SetCostmap")