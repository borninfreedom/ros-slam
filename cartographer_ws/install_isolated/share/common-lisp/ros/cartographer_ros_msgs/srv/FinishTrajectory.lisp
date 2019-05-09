; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-srv)


;//! \htmlinclude FinishTrajectory-request.msg.html

(cl:defclass <FinishTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((trajectory_id
    :reader trajectory_id
    :initarg :trajectory_id
    :type cl:integer
    :initform 0))
)

(cl:defclass FinishTrajectory-request (<FinishTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FinishTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FinishTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-srv:<FinishTrajectory-request> is deprecated: use cartographer_ros_msgs-srv:FinishTrajectory-request instead.")))

(cl:ensure-generic-function 'trajectory_id-val :lambda-list '(m))
(cl:defmethod trajectory_id-val ((m <FinishTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:trajectory_id-val is deprecated.  Use cartographer_ros_msgs-srv:trajectory_id instead.")
  (trajectory_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FinishTrajectory-request>) ostream)
  "Serializes a message object of type '<FinishTrajectory-request>"
  (cl:let* ((signed (cl:slot-value msg 'trajectory_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FinishTrajectory-request>) istream)
  "Deserializes a message object of type '<FinishTrajectory-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trajectory_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  "0feba73841cb434875547ca2a563a021")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FinishTrajectory-request)))
  "Returns md5sum for a message object of type 'FinishTrajectory-request"
  "0feba73841cb434875547ca2a563a021")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FinishTrajectory-request>)))
  "Returns full string definition for message of type '<FinishTrajectory-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%int32 trajectory_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FinishTrajectory-request)))
  "Returns full string definition for message of type 'FinishTrajectory-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%int32 trajectory_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FinishTrajectory-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FinishTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FinishTrajectory-request
    (cl:cons ':trajectory_id (trajectory_id msg))
))
;//! \htmlinclude FinishTrajectory-response.msg.html

(cl:defclass <FinishTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cartographer_ros_msgs-msg:StatusResponse
    :initform (cl:make-instance 'cartographer_ros_msgs-msg:StatusResponse)))
)

(cl:defclass FinishTrajectory-response (<FinishTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FinishTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FinishTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-srv:<FinishTrajectory-response> is deprecated: use cartographer_ros_msgs-srv:FinishTrajectory-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <FinishTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:status-val is deprecated.  Use cartographer_ros_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FinishTrajectory-response>) ostream)
  "Serializes a message object of type '<FinishTrajectory-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FinishTrajectory-response>) istream)
  "Deserializes a message object of type '<FinishTrajectory-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
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
  "0feba73841cb434875547ca2a563a021")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FinishTrajectory-response)))
  "Returns md5sum for a message object of type 'FinishTrajectory-response"
  "0feba73841cb434875547ca2a563a021")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FinishTrajectory-response>)))
  "Returns full string definition for message of type '<FinishTrajectory-response>"
  (cl:format cl:nil "cartographer_ros_msgs/StatusResponse status~%~%~%================================================================================~%MSG: cartographer_ros_msgs/StatusResponse~%# Copyright 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# A common message type to indicate the outcome of a service call.~%uint8 code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FinishTrajectory-response)))
  "Returns full string definition for message of type 'FinishTrajectory-response"
  (cl:format cl:nil "cartographer_ros_msgs/StatusResponse status~%~%~%================================================================================~%MSG: cartographer_ros_msgs/StatusResponse~%# Copyright 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# A common message type to indicate the outcome of a service call.~%uint8 code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FinishTrajectory-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FinishTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FinishTrajectory-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FinishTrajectory)))
  'FinishTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FinishTrajectory)))
  'FinishTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FinishTrajectory)))
  "Returns string type for a service object of type '<FinishTrajectory>"
  "cartographer_ros_msgs/FinishTrajectory")