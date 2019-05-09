;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::LandmarkList)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'LandmarkList (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::LANDMARKLIST")
  (make-package "CARTOGRAPHER_ROS_MSGS::LANDMARKLIST"))

(in-package "ROS")
;;//! \htmlinclude LandmarkList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cartographer_ros_msgs::LandmarkList
  :super ros::object
  :slots (_header _landmark ))

(defmethod cartographer_ros_msgs::LandmarkList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:landmark __landmark) (let (r) (dotimes (i 0) (push (instance cartographer_ros_msgs::LandmarkEntry :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _landmark __landmark)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:landmark
   (&rest __landmark)
   (if (keywordp (car __landmark))
       (send* _landmark __landmark)
     (progn
       (if __landmark (setq _landmark (car __landmark)))
       _landmark)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cartographer_ros_msgs/LandmarkEntry[] _landmark
    (apply #'+ (send-all _landmark :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cartographer_ros_msgs/LandmarkEntry[] _landmark
     (write-long (length _landmark) s)
     (dolist (elem _landmark)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cartographer_ros_msgs/LandmarkEntry[] _landmark
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmark (let (r) (dotimes (i n) (push (instance cartographer_ros_msgs::LandmarkEntry :init) r)) r))
     (dolist (elem- _landmark)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cartographer_ros_msgs::LandmarkList :md5sum-) "301d0343edf9ac469d5bbb0142518bf8")
(setf (get cartographer_ros_msgs::LandmarkList :datatype-) "cartographer_ros_msgs/LandmarkList")
(setf (get cartographer_ros_msgs::LandmarkList :definition-)
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

std_msgs/Header header
cartographer_ros_msgs/LandmarkEntry[] landmark

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: cartographer_ros_msgs/LandmarkEntry
# 2018 The Cartographer Authors
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

string id
geometry_msgs/Pose tracking_from_landmark_transform
float64 translation_weight
float64 rotation_weight

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :cartographer_ros_msgs/LandmarkList "301d0343edf9ac469d5bbb0142518bf8")


