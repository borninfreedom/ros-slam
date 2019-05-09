; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-msg)


;//! \htmlinclude LandmarkEntry.msg.html

(cl:defclass <LandmarkEntry> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (tracking_from_landmark_transform
    :reader tracking_from_landmark_transform
    :initarg :tracking_from_landmark_transform
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (translation_weight
    :reader translation_weight
    :initarg :translation_weight
    :type cl:float
    :initform 0.0)
   (rotation_weight
    :reader rotation_weight
    :initarg :rotation_weight
    :type cl:float
    :initform 0.0))
)

(cl:defclass LandmarkEntry (<LandmarkEntry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarkEntry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarkEntry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-msg:<LandmarkEntry> is deprecated: use cartographer_ros_msgs-msg:LandmarkEntry instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LandmarkEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:id-val is deprecated.  Use cartographer_ros_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'tracking_from_landmark_transform-val :lambda-list '(m))
(cl:defmethod tracking_from_landmark_transform-val ((m <LandmarkEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:tracking_from_landmark_transform-val is deprecated.  Use cartographer_ros_msgs-msg:tracking_from_landmark_transform instead.")
  (tracking_from_landmark_transform m))

(cl:ensure-generic-function 'translation_weight-val :lambda-list '(m))
(cl:defmethod translation_weight-val ((m <LandmarkEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:translation_weight-val is deprecated.  Use cartographer_ros_msgs-msg:translation_weight instead.")
  (translation_weight m))

(cl:ensure-generic-function 'rotation_weight-val :lambda-list '(m))
(cl:defmethod rotation_weight-val ((m <LandmarkEntry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:rotation_weight-val is deprecated.  Use cartographer_ros_msgs-msg:rotation_weight instead.")
  (rotation_weight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarkEntry>) ostream)
  "Serializes a message object of type '<LandmarkEntry>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tracking_from_landmark_transform) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'translation_weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rotation_weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarkEntry>) istream)
  "Deserializes a message object of type '<LandmarkEntry>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tracking_from_landmark_transform) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'translation_weight) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotation_weight) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarkEntry>)))
  "Returns string type for a message object of type '<LandmarkEntry>"
  "cartographer_ros_msgs/LandmarkEntry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarkEntry)))
  "Returns string type for a message object of type 'LandmarkEntry"
  "cartographer_ros_msgs/LandmarkEntry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarkEntry>)))
  "Returns md5sum for a message object of type '<LandmarkEntry>"
  "133f8dd7259f83a87eb4d78b301c0b70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarkEntry)))
  "Returns md5sum for a message object of type 'LandmarkEntry"
  "133f8dd7259f83a87eb4d78b301c0b70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarkEntry>)))
  "Returns full string definition for message of type '<LandmarkEntry>"
  (cl:format cl:nil "# 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string id~%geometry_msgs/Pose tracking_from_landmark_transform~%float64 translation_weight~%float64 rotation_weight~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarkEntry)))
  "Returns full string definition for message of type 'LandmarkEntry"
  (cl:format cl:nil "# 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string id~%geometry_msgs/Pose tracking_from_landmark_transform~%float64 translation_weight~%float64 rotation_weight~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarkEntry>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tracking_from_landmark_transform))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarkEntry>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarkEntry
    (cl:cons ':id (id msg))
    (cl:cons ':tracking_from_landmark_transform (tracking_from_landmark_transform msg))
    (cl:cons ':translation_weight (translation_weight msg))
    (cl:cons ':rotation_weight (rotation_weight msg))
))
