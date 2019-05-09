;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::SubmapEntry)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'SubmapEntry (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::SUBMAPENTRY")
  (make-package "CARTOGRAPHER_ROS_MSGS::SUBMAPENTRY"))

(in-package "ROS")
;;//! \htmlinclude SubmapEntry.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cartographer_ros_msgs::SubmapEntry
  :super ros::object
  :slots (_trajectory_id _submap_index _submap_version _pose ))

(defmethod cartographer_ros_msgs::SubmapEntry
  (:init
   (&key
    ((:trajectory_id __trajectory_id) 0)
    ((:submap_index __submap_index) 0)
    ((:submap_version __submap_version) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _trajectory_id (round __trajectory_id))
   (setq _submap_index (round __submap_index))
   (setq _submap_version (round __submap_version))
   (setq _pose __pose)
   self)
  (:trajectory_id
   (&optional __trajectory_id)
   (if __trajectory_id (setq _trajectory_id __trajectory_id)) _trajectory_id)
  (:submap_index
   (&optional __submap_index)
   (if __submap_index (setq _submap_index __submap_index)) _submap_index)
  (:submap_version
   (&optional __submap_version)
   (if __submap_version (setq _submap_version __submap_version)) _submap_version)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _trajectory_id
    4
    ;; int32 _submap_index
    4
    ;; int32 _submap_version
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _trajectory_id
       (write-long _trajectory_id s)
     ;; int32 _submap_index
       (write-long _submap_index s)
     ;; int32 _submap_version
       (write-long _submap_version s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _trajectory_id
     (setq _trajectory_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _submap_index
     (setq _submap_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _submap_version
     (setq _submap_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get cartographer_ros_msgs::SubmapEntry :md5sum-) "85508bfe057d19be9b747d647b124234")
(setf (get cartographer_ros_msgs::SubmapEntry :datatype-) "cartographer_ros_msgs/SubmapEntry")
(setf (get cartographer_ros_msgs::SubmapEntry :definition-)
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



(provide :cartographer_ros_msgs/SubmapEntry "85508bfe057d19be9b747d647b124234")


