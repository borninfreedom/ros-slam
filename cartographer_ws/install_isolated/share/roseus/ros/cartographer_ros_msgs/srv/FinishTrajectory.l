;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::FinishTrajectory)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'FinishTrajectory (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORY")
  (make-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORY"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORYREQUEST")
  (make-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORYREQUEST"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORYRESPONSE")
  (make-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass cartographer_ros_msgs::FinishTrajectoryRequest
  :super ros::object
  :slots (_trajectory_id ))

(defmethod cartographer_ros_msgs::FinishTrajectoryRequest
  (:init
   (&key
    ((:trajectory_id __trajectory_id) 0)
    )
   (send-super :init)
   (setq _trajectory_id (round __trajectory_id))
   self)
  (:trajectory_id
   (&optional __trajectory_id)
   (if __trajectory_id (setq _trajectory_id __trajectory_id)) _trajectory_id)
  (:serialization-length
   ()
   (+
    ;; int32 _trajectory_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _trajectory_id
       (write-long _trajectory_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _trajectory_id
     (setq _trajectory_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cartographer_ros_msgs::FinishTrajectoryResponse
  :super ros::object
  :slots (_status ))

(defmethod cartographer_ros_msgs::FinishTrajectoryResponse
  (:init
   (&key
    ((:status __status) (instance cartographer_ros_msgs::StatusResponse :init))
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; cartographer_ros_msgs/StatusResponse _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cartographer_ros_msgs/StatusResponse _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cartographer_ros_msgs/StatusResponse _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(defclass cartographer_ros_msgs::FinishTrajectory
  :super ros::object
  :slots ())

(setf (get cartographer_ros_msgs::FinishTrajectory :md5sum-) "0feba73841cb434875547ca2a563a021")
(setf (get cartographer_ros_msgs::FinishTrajectory :datatype-) "cartographer_ros_msgs/FinishTrajectory")
(setf (get cartographer_ros_msgs::FinishTrajectory :request) cartographer_ros_msgs::FinishTrajectoryRequest)
(setf (get cartographer_ros_msgs::FinishTrajectory :response) cartographer_ros_msgs::FinishTrajectoryResponse)

(defmethod cartographer_ros_msgs::FinishTrajectoryRequest
  (:response () (instance cartographer_ros_msgs::FinishTrajectoryResponse :init)))

(setf (get cartographer_ros_msgs::FinishTrajectoryRequest :md5sum-) "0feba73841cb434875547ca2a563a021")
(setf (get cartographer_ros_msgs::FinishTrajectoryRequest :datatype-) "cartographer_ros_msgs/FinishTrajectoryRequest")
(setf (get cartographer_ros_msgs::FinishTrajectoryRequest :definition-)
      "













int32 trajectory_id
---
cartographer_ros_msgs/StatusResponse status


================================================================================
MSG: cartographer_ros_msgs/StatusResponse
# Copyright 2018 The Cartographer Authors
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# A common message type to indicate the outcome of a service call.
uint8 code
string message
")

(setf (get cartographer_ros_msgs::FinishTrajectoryResponse :md5sum-) "0feba73841cb434875547ca2a563a021")
(setf (get cartographer_ros_msgs::FinishTrajectoryResponse :datatype-) "cartographer_ros_msgs/FinishTrajectoryResponse")
(setf (get cartographer_ros_msgs::FinishTrajectoryResponse :definition-)
      "













int32 trajectory_id
---
cartographer_ros_msgs/StatusResponse status


================================================================================
MSG: cartographer_ros_msgs/StatusResponse
# Copyright 2018 The Cartographer Authors
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# A common message type to indicate the outcome of a service call.
uint8 code
string message
")



(provide :cartographer_ros_msgs/FinishTrajectory "0feba73841cb434875547ca2a563a021")


