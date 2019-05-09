; Auto-generated. Do not edit!


(cl:in-package cartographer_ros_msgs-srv)


;//! \htmlinclude StartTrajectory-request.msg.html

(cl:defclass <StartTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((options
    :reader options
    :initarg :options
    :type cartographer_ros_msgs-msg:TrajectoryOptions
    :initform (cl:make-instance 'cartographer_ros_msgs-msg:TrajectoryOptions))
   (topics
    :reader topics
    :initarg :topics
    :type cartographer_ros_msgs-msg:SensorTopics
    :initform (cl:make-instance 'cartographer_ros_msgs-msg:SensorTopics)))
)

(cl:defclass StartTrajectory-request (<StartTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-srv:<StartTrajectory-request> is deprecated: use cartographer_ros_msgs-srv:StartTrajectory-request instead.")))

(cl:ensure-generic-function 'options-val :lambda-list '(m))
(cl:defmethod options-val ((m <StartTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:options-val is deprecated.  Use cartographer_ros_msgs-srv:options instead.")
  (options m))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <StartTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:topics-val is deprecated.  Use cartographer_ros_msgs-srv:topics instead.")
  (topics m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartTrajectory-request>) ostream)
  "Serializes a message object of type '<StartTrajectory-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'options) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'topics) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartTrajectory-request>) istream)
  "Deserializes a message object of type '<StartTrajectory-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'options) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'topics) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartTrajectory-request>)))
  "Returns string type for a service object of type '<StartTrajectory-request>"
  "cartographer_ros_msgs/StartTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTrajectory-request)))
  "Returns string type for a service object of type 'StartTrajectory-request"
  "cartographer_ros_msgs/StartTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartTrajectory-request>)))
  "Returns md5sum for a message object of type '<StartTrajectory-request>"
  "bed83613a1da70f1e83eafd765dad59d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartTrajectory-request)))
  "Returns md5sum for a message object of type 'StartTrajectory-request"
  "bed83613a1da70f1e83eafd765dad59d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartTrajectory-request>)))
  "Returns full string definition for message of type '<StartTrajectory-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%cartographer_ros_msgs/TrajectoryOptions options~%cartographer_ros_msgs/SensorTopics topics~%~%================================================================================~%MSG: cartographer_ros_msgs/TrajectoryOptions~%# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string tracking_frame~%string published_frame~%string odom_frame~%bool provide_odom_frame~%bool use_odometry~%bool use_nav_sat~%bool use_landmarks~%bool publish_frame_projected_to_2d~%int32 num_laser_scans~%int32 num_multi_echo_laser_scans~%int32 num_subdivisions_per_laser_scan~%int32 num_point_clouds~%float64 rangefinder_sampling_ratio~%float64 odometry_sampling_ratio~%float64 fixed_frame_pose_sampling_ratio~%float64 imu_sampling_ratio~%float64 landmarks_sampling_ratio~%~%# This is a binary-encoded~%# 'cartographer.mapping.proto.TrajectoryBuilderOptions' proto.~%string trajectory_builder_options_proto~%~%================================================================================~%MSG: cartographer_ros_msgs/SensorTopics~%# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string laser_scan_topic~%string multi_echo_laser_scan_topic~%string point_cloud2_topic~%string imu_topic~%string odometry_topic~%string nav_sat_fix_topic~%string landmark_topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartTrajectory-request)))
  "Returns full string definition for message of type 'StartTrajectory-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%cartographer_ros_msgs/TrajectoryOptions options~%cartographer_ros_msgs/SensorTopics topics~%~%================================================================================~%MSG: cartographer_ros_msgs/TrajectoryOptions~%# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string tracking_frame~%string published_frame~%string odom_frame~%bool provide_odom_frame~%bool use_odometry~%bool use_nav_sat~%bool use_landmarks~%bool publish_frame_projected_to_2d~%int32 num_laser_scans~%int32 num_multi_echo_laser_scans~%int32 num_subdivisions_per_laser_scan~%int32 num_point_clouds~%float64 rangefinder_sampling_ratio~%float64 odometry_sampling_ratio~%float64 fixed_frame_pose_sampling_ratio~%float64 imu_sampling_ratio~%float64 landmarks_sampling_ratio~%~%# This is a binary-encoded~%# 'cartographer.mapping.proto.TrajectoryBuilderOptions' proto.~%string trajectory_builder_options_proto~%~%================================================================================~%MSG: cartographer_ros_msgs/SensorTopics~%# Copyright 2016 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string laser_scan_topic~%string multi_echo_laser_scan_topic~%string point_cloud2_topic~%string imu_topic~%string odometry_topic~%string nav_sat_fix_topic~%string landmark_topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartTrajectory-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'options))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'topics))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartTrajectory-request
    (cl:cons ':options (options msg))
    (cl:cons ':topics (topics msg))
))
;//! \htmlinclude StartTrajectory-response.msg.html

(cl:defclass <StartTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cartographer_ros_msgs-msg:StatusResponse
    :initform (cl:make-instance 'cartographer_ros_msgs-msg:StatusResponse))
   (trajectory_id
    :reader trajectory_id
    :initarg :trajectory_id
    :type cl:integer
    :initform 0))
)

(cl:defclass StartTrajectory-response (<StartTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cartographer_ros_msgs-srv:<StartTrajectory-response> is deprecated: use cartographer_ros_msgs-srv:StartTrajectory-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <StartTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:status-val is deprecated.  Use cartographer_ros_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'trajectory_id-val :lambda-list '(m))
(cl:defmethod trajectory_id-val ((m <StartTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cartographer_ros_msgs-srv:trajectory_id-val is deprecated.  Use cartographer_ros_msgs-srv:trajectory_id instead.")
  (trajectory_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartTrajectory-response>) ostream)
  "Serializes a message object of type '<StartTrajectory-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:let* ((signed (cl:slot-value msg 'trajectory_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartTrajectory-response>) istream)
  "Deserializes a message object of type '<StartTrajectory-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trajectory_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartTrajectory-response>)))
  "Returns string type for a service object of type '<StartTrajectory-response>"
  "cartographer_ros_msgs/StartTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTrajectory-response)))
  "Returns string type for a service object of type 'StartTrajectory-response"
  "cartographer_ros_msgs/StartTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartTrajectory-response>)))
  "Returns md5sum for a message object of type '<StartTrajectory-response>"
  "bed83613a1da70f1e83eafd765dad59d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartTrajectory-response)))
  "Returns md5sum for a message object of type 'StartTrajectory-response"
  "bed83613a1da70f1e83eafd765dad59d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartTrajectory-response>)))
  "Returns full string definition for message of type '<StartTrajectory-response>"
  (cl:format cl:nil "cartographer_ros_msgs/StatusResponse status~%int32 trajectory_id~%~%~%================================================================================~%MSG: cartographer_ros_msgs/StatusResponse~%# Copyright 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# A common message type to indicate the outcome of a service call.~%uint8 code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartTrajectory-response)))
  "Returns full string definition for message of type 'StartTrajectory-response"
  (cl:format cl:nil "cartographer_ros_msgs/StatusResponse status~%int32 trajectory_id~%~%~%================================================================================~%MSG: cartographer_ros_msgs/StatusResponse~%# Copyright 2018 The Cartographer Authors~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# A common message type to indicate the outcome of a service call.~%uint8 code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartTrajectory-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartTrajectory-response
    (cl:cons ':status (status msg))
    (cl:cons ':trajectory_id (trajectory_id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartTrajectory)))
  'StartTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartTrajectory)))
  'StartTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartTrajectory)))
  "Returns string type for a service object of type '<StartTrajectory>"
  "cartographer_ros_msgs/StartTrajectory")