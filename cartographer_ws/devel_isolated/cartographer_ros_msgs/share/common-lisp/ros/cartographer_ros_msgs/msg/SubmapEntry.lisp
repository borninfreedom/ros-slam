; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-msg)


;//! \htmlinclude SubmapEntry.msg.html

(cl:defclass <SubmapEntry> (roslisp-msg-protocol:ros-message)
  ((trajectory_id
    :reader trajectory_id
    :initarg :trajectory_id
    :type cl:integer
    :initform 0)
   (submap_index
    :reader submap_index
    :initarg :submap_index
    :type cl:integer
    :initform 0)
   (submap_version
    :reader submap_version
    :initarg :submap_version
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SubmapEntry (<SubmapEntry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubmapEntry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubmapEntry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-msg:<SubmapEntry> is deprecated: use cartographer_ros_msgs-msg:SubmapEntry instead.")))

(cl:ensure-generic-function 'trajectory_id-val :lambda-list '(m))
(cl:defmethod trajectory_id-val ((m <SubmapEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:trajectory_id-val is deprecated.  Use cartographer_ros_msgs-msg:trajectory_id instead.")
  (trajectory_id m))

(cl:ensure-generic-function 'submap_index-val :lambda-list '(m))
(cl:defmethod submap_index-val ((m <SubmapEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:submap_index-val is deprecated.  Use cartographer_ros_msgs-msg:submap_index instead.")
  (submap_index m))

(cl:ensure-generic-function 'submap_version-val :lambda-list '(m))
(cl:defmethod submap_version-val ((m <SubmapEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:submap_version-val is deprecated.  Use cartographer_ros_msgs-msg:submap_version instead.")
  (submap_version m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SubmapEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:pose-val is deprecated.  Use cartographer_ros_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubmapEntry>) ostream)
  "Serializes a message object of type '<SubmapEntry>"
  (cl:let* ((signed (cl:slot-value msg 'trajectory_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'submap_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'submap_version)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubmapEntry>) istream)
  "Deserializes a message object of type '<SubmapEntry>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trajectory_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'submap_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'submap_version) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubmapEntry>)))
  "Returns string type for a message object of type '<SubmapEntry>"
  "cartographer_ros_msgs/SubmapEntry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmapEntry)))
  "Returns string type for a message object of type 'SubmapEntry"
  "cartographer_ros_msgs/SubmapEntry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubmapEntry>)))
  "Returns md5sum for a message object of type '<SubmapEntry>"
  "85508bfe057d19be9b747d647b124234")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubmapEntry)))
  "Returns md5sum for a message object of type 'SubmapEntry"
  "85508bfe057d19be9b747d647b124234")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubmapEntry>)))
  "Returns full string definition for message of type '<SubmapEntry>"
  (cl:format cl:nil "# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%int32 trajectory_id~%int32 submap_index~%int32 submap_version~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubmapEntry)))
  "Returns full string definition for message of type 'SubmapEntry"
  (cl:format cl:nil "# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%int32 trajectory_id~%int32 submap_index~%int32 submap_version~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubmapEntry>))
  (cl:+ 0
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubmapEntry>))
  "Converts a ROS message object to a list"
  (cl:list 'SubmapEntry
    (cl:cons ':trajectory_id (trajectory_id msg))
    (cl:cons ':submap_index (submap_index msg))
    (cl:cons ':submap_version (submap_version msg))
    (cl:cons ':pose (pose msg))
))
