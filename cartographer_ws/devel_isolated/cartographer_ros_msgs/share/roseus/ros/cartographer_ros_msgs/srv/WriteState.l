;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::WriteState)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'WriteState (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::WRITESTATE")
  (make-package "CARTOGRAPHER_ROS_MSGS::WRITESTATE"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::WRITESTATEREQUEST")
  (make-package "CARTOGRAPHER_ROS_MSGS::WRITESTATEREQUEST"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::WRITESTATERESPONSE")
  (make-package "CARTOGRAPHER_ROS_MSGS::WRITESTATERESPONSE"))

(in-package "ROS")





(defclass cartographer_ros_msgs::WriteStateRequest
  :super ros::object
  :slots (_filename ))

(defmethod cartographer_ros_msgs::WriteStateRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cartographer_ros_msgs::WriteStateResponse
  :super ros::object
  :slots (_status ))

(defmethod cartographer_ros_msgs::WriteStateResponse
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

(defclass cartographer_ros_msgs::WriteState
  :super ros::object
  :slots ())

(setf (get cartographer_ros_msgs::WriteState :md5sum-) "701ed54905b621b74c47cfc92a733a5e")
(setf (get cartographer_ros_msgs::WriteState :datatype-) "cartographer_ros_msgs/WriteState")
(setf (get cartographer_ros_msgs::WriteState :request) cartographer_ros_msgs::WriteStateRequest)
(setf (get cartographer_ros_msgs::WriteState :response) cartographer_ros_msgs::WriteStateResponse)

(defmethod cartographer_ros_msgs::WriteStateRequest
  (:response () (instance cartographer_ros_msgs::WriteStateResponse :init)))

(setf (get cartographer_ros_msgs::WriteStateRequest :md5sum-) "701ed54905b621b74c47cfc92a733a5e")
(setf (get cartographer_ros_msgs::WriteStateRequest :datatype-) "cartographer_ros_msgs/WriteStateRequest")
(setf (get cartographer_ros_msgs::WriteStateRequest :definition-)
      "













string filename
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

(setf (get cartographer_ros_msgs::WriteStateResponse :md5sum-) "701ed54905b621b74c47cfc92a733a5e")
(setf (get cartographer_ros_msgs::WriteStateResponse :datatype-) "cartographer_ros_msgs/WriteStateResponse")
(setf (get cartographer_ros_msgs::WriteStateResponse :definition-)
      "













string filename
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



(provide :cartographer_ros_msgs/WriteState "701ed54905b621b74c47cfc92a733a5e")


