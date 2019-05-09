;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::StatusCode)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'StatusCode (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE")
  (make-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))

(in-package "ROS")
;;//! \htmlinclude StatusCode.msg.html


(intern "*OK*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*OK* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*OK* 0)
(intern "*CANCELLED*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*CANCELLED* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*CANCELLED* 1)
(intern "*UNKNOWN*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*UNKNOWN* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*UNKNOWN* 2)
(intern "*INVALID_ARGUMENT*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*INVALID_ARGUMENT* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*INVALID_ARGUMENT* 3)
(intern "*DEADLINE_EXCEEDED*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*DEADLINE_EXCEEDED* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*DEADLINE_EXCEEDED* 4)
(intern "*NOT_FOUND*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*NOT_FOUND* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*NOT_FOUND* 5)
(intern "*ALREADY_EXISTS*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*ALREADY_EXISTS* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*ALREADY_EXISTS* 6)
(intern "*PERMISSION_DENIED*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*PERMISSION_DENIED* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*PERMISSION_DENIED* 7)
(intern "*RESOURCE_EXHAUSTED*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*RESOURCE_EXHAUSTED* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*RESOURCE_EXHAUSTED* 8)
(intern "*FAILED_PRECONDITION*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*FAILED_PRECONDITION* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*FAILED_PRECONDITION* 9)
(intern "*ABORTED*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*ABORTED* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*ABORTED* 10)
(intern "*OUT_OF_RANGE*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*OUT_OF_RANGE* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*OUT_OF_RANGE* 11)
(intern "*UNIMPLEMENTED*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*UNIMPLEMENTED* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*UNIMPLEMENTED* 12)
(intern "*INTERNAL*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*INTERNAL* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*INTERNAL* 13)
(intern "*UNAVAILABLE*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*UNAVAILABLE* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*UNAVAILABLE* 14)
(intern "*DATA_LOSS*" (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(shadow '*DATA_LOSS* (find-package "CARTOGRAPHER_ROS_MSGS::STATUSCODE"))
(defconstant cartographer_ros_msgs::StatusCode::*DATA_LOSS* 15)
(defclass cartographer_ros_msgs::StatusCode
  :super ros::object
  :slots ())

(defmethod cartographer_ros_msgs::StatusCode
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get cartographer_ros_msgs::StatusCode :md5sum-) "90c460dc6da71af1a19af6615a8dc9a4")
(setf (get cartographer_ros_msgs::StatusCode :datatype-) "cartographer_ros_msgs/StatusCode")
(setf (get cartographer_ros_msgs::StatusCode :definition-)
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

# Definition of status code constants equivalent to the gRPC API.
# https://developers.google.com/maps-booking/reference/grpc-api/status_codes
uint8 OK=0
uint8 CANCELLED=1
uint8 UNKNOWN=2
uint8 INVALID_ARGUMENT=3
uint8 DEADLINE_EXCEEDED=4
uint8 NOT_FOUND=5
uint8 ALREADY_EXISTS=6
uint8 PERMISSION_DENIED=7
uint8 RESOURCE_EXHAUSTED=8
uint8 FAILED_PRECONDITION=9
uint8 ABORTED=10
uint8 OUT_OF_RANGE=11
uint8 UNIMPLEMENTED=12
uint8 INTERNAL=13
uint8 UNAVAILABLE=14
uint8 DATA_LOSS=15

")



(provide :cartographer_ros_msgs/StatusCode "90c460dc6da71af1a19af6615a8dc9a4")


