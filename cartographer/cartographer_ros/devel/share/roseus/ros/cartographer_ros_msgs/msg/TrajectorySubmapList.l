;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::TrajectorySubmapList)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'TrajectorySubmapList (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::TRAJECTORYSUBMAPLIST")
  (make-package "CARTOGRAPHER_ROS_MSGS::TRAJECTORYSUBMAPLIST"))

(in-package "ROS")
;;//! \htmlinclude TrajectorySubmapList.msg.html


(defclass cartographer_ros_msgs::TrajectorySubmapList
  :super ros::object
  :slots (_submap ))

(defmethod cartographer_ros_msgs::TrajectorySubmapList
  (:init
   (&key
    ((:submap __submap) (let (r) (dotimes (i 0) (push (instance cartographer_ros_msgs::SubmapEntry :init) r)) r))
    )
   (send-super :init)
   (setq _submap __submap)
   self)
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
    ;; cartographer_ros_msgs/SubmapEntry[] _submap
    (apply #'+ (send-all _submap :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cartographer_ros_msgs/SubmapEntry[] _submap
     (write-long (length _submap) s)
     (dolist (elem _submap)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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

(setf (get cartographer_ros_msgs::TrajectorySubmapList :md5sum-) "408b96b1bf0386ee3f0562ab0ff3304a")
(setf (get cartographer_ros_msgs::TrajectorySubmapList :datatype-) "cartographer_ros_msgs/TrajectorySubmapList")
(setf (get cartographer_ros_msgs::TrajectorySubmapList :definition-)
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

SubmapEntry[] submap

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

uint32 submap_version
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



(provide :cartographer_ros_msgs/TrajectorySubmapList "408b96b1bf0386ee3f0562ab0ff3304a")


