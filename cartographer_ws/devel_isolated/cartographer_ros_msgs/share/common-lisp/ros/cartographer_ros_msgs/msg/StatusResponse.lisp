; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-msg)


;//! \htmlinclude StatusResponse.msg.html

(cl:defclass <StatusResponse> (roslisp-msg-protocol:ros-message)
  ((code
    :reader code
    :initarg :code
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass StatusResponse (<StatusResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatusResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatusResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-msg:<StatusResponse> is deprecated: use cartographer_ros_msgs-msg:StatusResponse instead.")))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <StatusResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:code-val is deprecated.  Use cartographer_ros_msgs-msg:code instead.")
  (code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <StatusResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:message-val is deprecated.  Use cartographer_ros_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatusResponse>) ostream)
  "Serializes a message object of type '<StatusResponse>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatusResponse>) istream)
  "Deserializes a message object of type '<StatusResponse>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatusResponse>)))
  "Returns string type for a message object of type '<StatusResponse>"
  "cartographer_ros_msgs/StatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatusResponse)))
  "Returns string type for a message object of type 'StatusResponse"
  "cartographer_ros_msgs/StatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatusResponse>)))
  "Returns md5sum for a message object of type '<StatusResponse>"
  "f45eaca0a8effd52a8b18d39434a6627")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatusResponse)))
  "Returns md5sum for a message object of type 'StatusResponse"
  "f45eaca0a8effd52a8b18d39434a6627")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatusResponse>)))
  "Returns full string definition for message of type '<StatusResponse>"
  (cl:format cl:nil "# Copyright 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# A common message type to indicate the outcome of a service call.~%uint8 code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatusResponse)))
  "Returns full string definition for message of type 'StatusResponse"
  (cl:format cl:nil "# Copyright 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# A common message type to indicate the outcome of a service call.~%uint8 code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatusResponse>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatusResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'StatusResponse
    (cl:cons ':code (code msg))
    (cl:cons ':message (message msg))
))
