; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-msg)


;//! \htmlinclude SensorTopics.msg.html

(cl:defclass <SensorTopics> (roslisp-msg-protocol:ros-message)
  ((laser_scan_topic
    :reader laser_scan_topic
    :initarg :laser_scan_topic
    :type cl:string
    :initform "")
   (multi_echo_laser_scan_topic
    :reader multi_echo_laser_scan_topic
    :initarg :multi_echo_laser_scan_topic
    :type cl:string
    :initform "")
   (point_cloud2_topic
    :reader point_cloud2_topic
    :initarg :point_cloud2_topic
    :type cl:string
    :initform "")
   (imu_topic
    :reader imu_topic
    :initarg :imu_topic
    :type cl:string
    :initform "")
   (odometry_topic
    :reader odometry_topic
    :initarg :odometry_topic
    :type cl:string
    :initform "")
   (nav_sat_fix_topic
    :reader nav_sat_fix_topic
    :initarg :nav_sat_fix_topic
    :type cl:string
    :initform "")
   (landmark_topic
    :reader landmark_topic
    :initarg :landmark_topic
    :type cl:string
    :initform ""))
)

(cl:defclass SensorTopics (<SensorTopics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorTopics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorTopics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-msg:<SensorTopics> is deprecated: use cartographer_ros_msgs-msg:SensorTopics instead.")))

(cl:ensure-generic-function 'laser_scan_topic-val :lambda-list '(m))
(cl:defmethod laser_scan_topic-val ((m <SensorTopics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:laser_scan_topic-val is deprecated.  Use cartographer_ros_msgs-msg:laser_scan_topic instead.")
  (laser_scan_topic m))

(cl:ensure-generic-function 'multi_echo_laser_scan_topic-val :lambda-list '(m))
(cl:defmethod multi_echo_laser_scan_topic-val ((m <SensorTopics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:multi_echo_laser_scan_topic-val is deprecated.  Use cartographer_ros_msgs-msg:multi_echo_laser_scan_topic instead.")
  (multi_echo_laser_scan_topic m))

(cl:ensure-generic-function 'point_cloud2_topic-val :lambda-list '(m))
(cl:defmethod point_cloud2_topic-val ((m <SensorTopics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:point_cloud2_topic-val is deprecated.  Use cartographer_ros_msgs-msg:point_cloud2_topic instead.")
  (point_cloud2_topic m))

(cl:ensure-generic-function 'imu_topic-val :lambda-list '(m))
(cl:defmethod imu_topic-val ((m <SensorTopics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:imu_topic-val is deprecated.  Use cartographer_ros_msgs-msg:imu_topic instead.")
  (imu_topic m))

(cl:ensure-generic-function 'odometry_topic-val :lambda-list '(m))
(cl:defmethod odometry_topic-val ((m <SensorTopics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:odometry_topic-val is deprecated.  Use cartographer_ros_msgs-msg:odometry_topic instead.")
  (odometry_topic m))

(cl:ensure-generic-function 'nav_sat_fix_topic-val :lambda-list '(m))
(cl:defmethod nav_sat_fix_topic-val ((m <SensorTopics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:nav_sat_fix_topic-val is deprecated.  Use cartographer_ros_msgs-msg:nav_sat_fix_topic instead.")
  (nav_sat_fix_topic m))

(cl:ensure-generic-function 'landmark_topic-val :lambda-list '(m))
(cl:defmethod landmark_topic-val ((m <SensorTopics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-msg:landmark_topic-val is deprecated.  Use cartographer_ros_msgs-msg:landmark_topic instead.")
  (landmark_topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorTopics>) ostream)
  "Serializes a message object of type '<SensorTopics>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'laser_scan_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'laser_scan_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'multi_echo_laser_scan_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'multi_echo_laser_scan_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'point_cloud2_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'point_cloud2_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'imu_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'imu_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'odometry_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'odometry_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nav_sat_fix_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nav_sat_fix_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'landmark_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'landmark_topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorTopics>) istream)
  "Deserializes a message object of type '<SensorTopics>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'laser_scan_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'laser_scan_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'multi_echo_laser_scan_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'multi_echo_laser_scan_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'point_cloud2_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'point_cloud2_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'imu_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'imu_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'odometry_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'odometry_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nav_sat_fix_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nav_sat_fix_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'landmark_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'landmark_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorTopics>)))
  "Returns string type for a message object of type '<SensorTopics>"
  "cartographer_ros_msgs/SensorTopics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorTopics)))
  "Returns string type for a message object of type 'SensorTopics"
  "cartographer_ros_msgs/SensorTopics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorTopics>)))
  "Returns md5sum for a message object of type '<SensorTopics>"
  "bafbff7d66e3eeeb8d4a9195096cba08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorTopics)))
  "Returns md5sum for a message object of type 'SensorTopics"
  "bafbff7d66e3eeeb8d4a9195096cba08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorTopics>)))
  "Returns full string definition for message of type '<SensorTopics>"
  (cl:format cl:nil "# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string laser_scan_topic~%string multi_echo_laser_scan_topic~%string point_cloud2_topic~%string imu_topic~%string odometry_topic~%string nav_sat_fix_topic~%string landmark_topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorTopics)))
  "Returns full string definition for message of type 'SensorTopics"
  (cl:format cl:nil "# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string laser_scan_topic~%string multi_echo_laser_scan_topic~%string point_cloud2_topic~%string imu_topic~%string odometry_topic~%string nav_sat_fix_topic~%string landmark_topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorTopics>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'laser_scan_topic))
     4 (cl:length (cl:slot-value msg 'multi_echo_laser_scan_topic))
     4 (cl:length (cl:slot-value msg 'point_cloud2_topic))
     4 (cl:length (cl:slot-value msg 'imu_topic))
     4 (cl:length (cl:slot-value msg 'odometry_topic))
     4 (cl:length (cl:slot-value msg 'nav_sat_fix_topic))
     4 (cl:length (cl:slot-value msg 'landmark_topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorTopics>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorTopics
    (cl:cons ':laser_scan_topic (laser_scan_topic msg))
    (cl:cons ':multi_echo_laser_scan_topic (multi_echo_laser_scan_topic msg))
    (cl:cons ':point_cloud2_topic (point_cloud2_topic msg))
    (cl:cons ':imu_topic (imu_topic msg))
    (cl:cons ':odometry_topic (odometry_topic msg))
    (cl:cons ':nav_sat_fix_topic (nav_sat_fix_topic msg))
    (cl:cons ':landmark_topic (landmark_topic msg))
))
