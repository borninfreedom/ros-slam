; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-msg)


;//! \htmlinclude TrajectorySubmapList.msg.html

(cl:defclass <TrajectorySubmapList> (roslisp-msg-protocol:ros-message)
  ((submap
    :reader submap
    :initarg :submap
    :type (cl:vector cartographer_ros_msgs-msg:SubmapEntry)
   :initform (cl:make-array 0 :element-type 'cartographer_ros_msgs-msg:SubmapEntry :initial-element (cl:make-instance 'cartographer_ros_msgs-msg:SubmapEntry))))
)

(cl:defclass TrajectorySubmapList (<TrajectorySubmapList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectorySubmapList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectorySubmapList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-msg:<TrajectorySubmapList> is deprecated: use cartographer_ros_msgs-msg:TrajectorySubmapList instead.")))

(cl:ensure-generic-function 'submap-val :lambda-list '(m))
(cl:defmethod submap-val ((m <TrajectorySubmapList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:submap-val is deprecated.  Use cartographer_ros_msgs-msg:submap instead.")
  (submap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectorySubmapList>) ostream)
  "Serializes a message object of type '<TrajectorySubmapList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'submap))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'submap))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectorySubmapList>) istream)
  "Deserializes a message object of type '<TrajectorySubmapList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'submap) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'submap)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cartographer_ros_msgs-msg:SubmapEntry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectorySubmapList>)))
  "Returns string type for a message object of type '<TrajectorySubmapList>"
  "cartographer_ros_msgs/TrajectorySubmapList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectorySubmapList)))
  "Returns string type for a message object of type 'TrajectorySubmapList"
  "cartographer_ros_msgs/TrajectorySubmapList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectorySubmapList>)))
  "Returns md5sum for a message object of type '<TrajectorySubmapList>"
  "408b96b1bf0386ee3f0562ab0ff3304a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectorySubmapList)))
  "Returns md5sum for a message object of type 'TrajectorySubmapList"
  "408b96b1bf0386ee3f0562ab0ff3304a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectorySubmapList>)))
  "Returns full string definition for message of type '<TrajectorySubmapList>"
  (cl:format cl:nil "# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%SubmapEntry[] submap~%~%================================================================================~%MSG: cartographer_ros_msgs/SubmapEntry~%# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%uint32 submap_version~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectorySubmapList)))
  "Returns full string definition for message of type 'TrajectorySubmapList"
  (cl:format cl:nil "# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%SubmapEntry[] submap~%~%================================================================================~%MSG: cartographer_ros_msgs/SubmapEntry~%# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%uint32 submap_version~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectorySubmapList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'submap) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectorySubmapList>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectorySubmapList
    (cl:cons ':submap (submap msg))
))
