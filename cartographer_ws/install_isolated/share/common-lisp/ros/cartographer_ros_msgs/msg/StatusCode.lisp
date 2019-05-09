; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-msg)


;//! \htmlinclude StatusCode.msg.html

(cl:defclass <StatusCode> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StatusCode (<StatusCode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatusCode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatusCode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-msg:<StatusCode> is deprecated: use cartographer_ros_msgs-msg:StatusCode instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StatusCode>)))
    "Constants for message type '<StatusCode>"
  '((:OK . 0)
    (:CANCELLED . 1)
    (:UNKNOWN . 2)
    (:INVALID_ARGUMENT . 3)
    (:DEADLINE_EXCEEDED . 4)
    (:NOT_FOUND . 5)
    (:ALREADY_EXISTS . 6)
    (:PERMISSION_DENIED . 7)
    (:RESOURCE_EXHAUSTED . 8)
    (:FAILED_PRECONDITION . 9)
    (:ABORTED . 10)
    (:OUT_OF_RANGE . 11)
    (:UNIMPLEMENTED . 12)
    (:INTERNAL . 13)
    (:UNAVAILABLE . 14)
    (:DATA_LOSS . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StatusCode)))
    "Constants for message type 'StatusCode"
  '((:OK . 0)
    (:CANCELLED . 1)
    (:UNKNOWN . 2)
    (:INVALID_ARGUMENT . 3)
    (:DEADLINE_EXCEEDED . 4)
    (:NOT_FOUND . 5)
    (:ALREADY_EXISTS . 6)
    (:PERMISSION_DENIED . 7)
    (:RESOURCE_EXHAUSTED . 8)
    (:FAILED_PRECONDITION . 9)
    (:ABORTED . 10)
    (:OUT_OF_RANGE . 11)
    (:UNIMPLEMENTED . 12)
    (:INTERNAL . 13)
    (:UNAVAILABLE . 14)
    (:DATA_LOSS . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatusCode>) ostream)
  "Serializes a message object of type '<StatusCode>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatusCode>) istream)
  "Deserializes a message object of type '<StatusCode>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatusCode>)))
  "Returns string type for a message object of type '<StatusCode>"
  "cartographer_ros_msgs/StatusCode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatusCode)))
  "Returns string type for a message object of type 'StatusCode"
  "cartographer_ros_msgs/StatusCode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatusCode>)))
  "Returns md5sum for a message object of type '<StatusCode>"
  "90c460dc6da71af1a19af6615a8dc9a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatusCode)))
  "Returns md5sum for a message object of type 'StatusCode"
  "90c460dc6da71af1a19af6615a8dc9a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatusCode>)))
  "Returns full string definition for message of type '<StatusCode>"
  (cl:format cl:nil "# Copyright 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# Definition of status code constants equivalent to the gRPC API.~%# https://developers.google.com/maps-booking/reference/grpc-api/status_codes~%uint8 OK=0~%uint8 CANCELLED=1~%uint8 UNKNOWN=2~%uint8 INVALID_ARGUMENT=3~%uint8 DEADLINE_EXCEEDED=4~%uint8 NOT_FOUND=5~%uint8 ALREADY_EXISTS=6~%uint8 PERMISSION_DENIED=7~%uint8 RESOURCE_EXHAUSTED=8~%uint8 FAILED_PRECONDITION=9~%uint8 ABORTED=10~%uint8 OUT_OF_RANGE=11~%uint8 UNIMPLEMENTED=12~%uint8 INTERNAL=13~%uint8 UNAVAILABLE=14~%uint8 DATA_LOSS=15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatusCode)))
  "Returns full string definition for message of type 'StatusCode"
  (cl:format cl:nil "# Copyright 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# Definition of status code constants equivalent to the gRPC API.~%# https://developers.google.com/maps-booking/reference/grpc-api/status_codes~%uint8 OK=0~%uint8 CANCELLED=1~%uint8 UNKNOWN=2~%uint8 INVALID_ARGUMENT=3~%uint8 DEADLINE_EXCEEDED=4~%uint8 NOT_FOUND=5~%uint8 ALREADY_EXISTS=6~%uint8 PERMISSION_DENIED=7~%uint8 RESOURCE_EXHAUSTED=8~%uint8 FAILED_PRECONDITION=9~%uint8 ABORTED=10~%uint8 OUT_OF_RANGE=11~%uint8 UNIMPLEMENTED=12~%uint8 INTERNAL=13~%uint8 UNAVAILABLE=14~%uint8 DATA_LOSS=15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatusCode>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatusCode>))
  "Converts a ROS message object to a list"
  (cl:list 'StatusCode
))
