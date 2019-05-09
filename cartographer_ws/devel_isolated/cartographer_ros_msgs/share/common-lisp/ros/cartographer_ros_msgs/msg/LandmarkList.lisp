; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-msg)


;//! \htmlinclude LandmarkList.msg.html

(cl:defclass <LandmarkList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (landmark
    :reader landmark
    :initarg :landmark
    :type (cl:vector cartographer_ros_msgs-msg:LandmarkEntry)
   :initform (cl:make-array 0 :element-type 'cartographer_ros_msgs-msg:LandmarkEntry :initial-element (cl:make-instance 'cartographer_ros_msgs-msg:LandmarkEntry))))
)

(cl:defclass LandmarkList (<LandmarkList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarkList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarkList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-msg:<LandmarkList> is deprecated: use cartographer_ros_msgs-msg:LandmarkList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LandmarkList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:header-val is deprecated.  Use cartographer_ros_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'landmark-val :lambda-list '(m))
(cl:defmethod landmark-val ((m <LandmarkList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:landmark-val is deprecated.  Use cartographer_ros_msgs-msg:landmark instead.")
  (landmark m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarkList>) ostream)
  "Serializes a message object of type '<LandmarkList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmark))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmark))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarkList>) istream)
  "Deserializes a message object of type '<LandmarkList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmark) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmark)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cartographer_ros_msgs-msg:LandmarkEntry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarkList>)))
  "Returns string type for a message object of type '<LandmarkList>"
  "cartographer_ros_msgs/LandmarkList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarkList)))
  "Returns string type for a message object of type 'LandmarkList"
  "cartographer_ros_msgs/LandmarkList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarkList>)))
  "Returns md5sum for a message object of type '<LandmarkList>"
  "301d0343edf9ac469d5bbb0142518bf8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarkList)))
  "Returns md5sum for a message object of type 'LandmarkList"
  "301d0343edf9ac469d5bbb0142518bf8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarkList>)))
  "Returns full string definition for message of type '<LandmarkList>"
  (cl:format cl:nil "# Copyright 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%std_msgs/Header header~%cartographer_ros_msgs/LandmarkEntry[] landmark~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cartographer_ros_msgs/LandmarkEntry~%# 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string id~%geometry_msgs/Pose tracking_from_landmark_transform~%float64 translation_weight~%float64 rotation_weight~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarkList)))
  "Returns full string definition for message of type 'LandmarkList"
  (cl:format cl:nil "# Copyright 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%std_msgs/Header header~%cartographer_ros_msgs/LandmarkEntry[] landmark~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cartographer_ros_msgs/LandmarkEntry~%# 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string id~%geometry_msgs/Pose tracking_from_landmark_transform~%float64 translation_weight~%float64 rotation_weight~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarkList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmark) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarkList>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarkList
    (cl:cons ':header (header msg))
    (cl:cons ':landmark (landmark msg))
))
