; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-msg)


;//! \htmlinclude SubmapTexture.msg.html

(cl:defclass <SubmapTexture> (roslisp-msg-protocol:ros-message)
  ((cells
    :reader cells
    :initarg :cells
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (resolution
    :reader resolution
    :initarg :resolution
    :type cl:float
    :initform 0.0)
   (slice_pose
    :reader slice_pose
    :initarg :slice_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SubmapTexture (<SubmapTexture>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubmapTexture>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubmapTexture)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-msg:<SubmapTexture> is deprecated: use cartographer_ros_msgs-msg:SubmapTexture instead.")))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <SubmapTexture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:cells-val is deprecated.  Use cartographer_ros_msgs-msg:cells instead.")
  (cells m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <SubmapTexture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:width-val is deprecated.  Use cartographer_ros_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <SubmapTexture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:height-val is deprecated.  Use cartographer_ros_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'resolution-val :lambda-list '(m))
(cl:defmethod resolution-val ((m <SubmapTexture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:resolution-val is deprecated.  Use cartographer_ros_msgs-msg:resolution instead.")
  (resolution m))

(cl:ensure-generic-function 'slice_pose-val :lambda-list '(m))
(cl:defmethod slice_pose-val ((m <SubmapTexture>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:slice_pose-val is deprecated.  Use cartographer_ros_msgs-msg:slice_pose instead.")
  (slice_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubmapTexture>) ostream)
  "Serializes a message object of type '<SubmapTexture>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'cells))
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'slice_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubmapTexture>) istream)
  "Deserializes a message object of type '<SubmapTexture>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cells) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cells)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resolution) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'slice_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubmapTexture>)))
  "Returns string type for a message object of type '<SubmapTexture>"
  "cartographer_ros_msgs/SubmapTexture")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmapTexture)))
  "Returns string type for a message object of type 'SubmapTexture"
  "cartographer_ros_msgs/SubmapTexture")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubmapTexture>)))
  "Returns md5sum for a message object of type '<SubmapTexture>"
  "26187fc048d2d8e578b6c781f3b53158")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubmapTexture)))
  "Returns md5sum for a message object of type 'SubmapTexture"
  "26187fc048d2d8e578b6c781f3b53158")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubmapTexture>)))
  "Returns full string definition for message of type '<SubmapTexture>"
  (cl:format cl:nil "# Copyright 2017 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%uint8[] cells~%int32 width~%int32 height~%float64 resolution~%geometry_msgs/Pose slice_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubmapTexture)))
  "Returns full string definition for message of type 'SubmapTexture"
  (cl:format cl:nil "# Copyright 2017 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%uint8[] cells~%int32 width~%int32 height~%float64 resolution~%geometry_msgs/Pose slice_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubmapTexture>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'slice_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubmapTexture>))
  "Converts a ROS message object to a list"
  (cl:list 'SubmapTexture
    (cl:cons ':cells (cells msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':resolution (resolution msg))
    (cl:cons ':slice_pose (slice_pose msg))
))
