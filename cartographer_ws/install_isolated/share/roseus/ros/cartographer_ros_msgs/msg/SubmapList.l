;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::SubmapList)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'SubmapList (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::SUBMAPLIST")
  (make-package "CARTOGRAPHER_ROS_MSGS::SUBMAPLIST"))

(in-package "ROS")
;;//! \htmlinclude SubmapList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cartographer_ros_msgs::SubmapList
  :super ros::object
  :slots (_header _submap ))

(defmethod cartographer_ros_msgs::SubmapList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:submap __submap) (let (r) (dotimes (i 0) (push (instance cartographer_ros_msgs::SubmapEntry :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _submap __submap)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:submap
   (&rest __submap)
   (if (keywordp (car __submap))
       (send* _submap __submap)
     (progn
       (if __submap (setq _submap (car __submap)))
       _submap)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cartographer_ros_msgs/SubmapEntry[] _submap
    (apply #'+ (send-all _submap :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cartographer_ros_msgs/SubmapEntry[] _submap
     (write-long (length _submap) s)
     (dolist (elem _submap)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cartographer_ros_msgs/SubmapEntry[] _submap
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _submap (let (r) (dotimes (i n) (push (instance cartographer_ros_msgs::SubmapEntry :init) r)) r))
     (dolist (elem- _submap)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cartographer_ros_msgs::SubmapList :md5sum-) "6efe809c4a0e69266aa99b3bea531f2a")
(setf (get cartographer_ros_msgs::SubmapList :datatype-) "cartographer_ros_msgs/SubmapList")
(setf (get cartographer_ros_msgs::SubmapList :definition-)
      "# Copyright 2016 The Cartographer Authors
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
cartographer_ros_msgs/SubmapEntry[] submap

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
MSG: cartographer_ros_msgs/SubmapEntry
# Copyright 2016 The Cartographer Authors
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

int32 trajectory_id
int32 submap_index
int32 submap_version
geometry_msgs/Pose pose

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



(provide :cartographer_ros_msgs/SubmapList "6efe809c4a0e69266aa99b3bea531f2a")


