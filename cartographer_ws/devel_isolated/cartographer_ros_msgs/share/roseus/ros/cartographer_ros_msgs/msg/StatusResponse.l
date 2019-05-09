;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::StatusResponse)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'StatusResponse (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::STATUSRESPONSE")
  (make-package "CARTOGRAPHER_ROS_MSGS::STATUSRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude StatusResponse.msg.html


(defclass cartographer_ros_msgs::StatusResponse
  :super ros::object
  :slots (_code _message ))

(defmethod cartographer_ros_msgs::StatusResponse
  (:init
   (&key
    ((:code __code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _code (round __code))
   (setq _message (string __message))
   self)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint8 _code
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _code
       (write-byte _code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _code
     (setq _code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get cartographer_ros_msgs::StatusResponse :md5sum-) "f45eaca0a8effd52a8b18d39434a6627")
(setf (get cartographer_ros_msgs::StatusResponse :datatype-) "cartographer_ros_msgs/StatusResponse")
(setf (get cartographer_ros_msgs::StatusResponse :definition-)
      "# Copyright 2018 The Cartographer Authors
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



(provide :cartographer_ros_msgs/StatusResponse "f45eaca0a8effd52a8b18d39434a6627")


