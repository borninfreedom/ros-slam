;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::SubmapTexture)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'SubmapTexture (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::SUBMAPTEXTURE")
  (make-package "CARTOGRAPHER_ROS_MSGS::SUBMAPTEXTURE"))

(in-package "ROS")
;;//! \htmlinclude SubmapTexture.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cartographer_ros_msgs::SubmapTexture
  :super ros::object
  :slots (_cells _width _height _resolution _slice_pose ))

(defmethod cartographer_ros_msgs::SubmapTexture
  (:init
   (&key
    ((:cells __cells) (make-array 0 :initial-element 0 :element-type :char))
    ((:width __width) 0)
    ((:height __height) 0)
    ((:resolution __resolution) 0.0)
    ((:slice_pose __slice_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _cells __cells)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _resolution (float __resolution))
   (setq _slice_pose __slice_pose)
   self)
  (:cells
   (&optional __cells)
   (if __cells (setq _cells __cells)) _cells)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:slice_pose
   (&rest __slice_pose)
   (if (keywordp (car __slice_pose))
       (send* _slice_pose __slice_pose)
     (progn
       (if __slice_pose (setq _slice_pose (car __slice_pose)))
       _slice_pose)))
  (:serialization-length
   ()
   (+
    ;; uint8[] _cells
    (* 1    (length _cells)) 4
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; float64 _resolution
    8
    ;; geometry_msgs/Pose _slice_pose
    (send _slice_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _cells
     (write-long (length _cells) s)
     (princ _cells s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; float64 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _slice_pose
       (send _slice_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _cells
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _cells (make-array n :element-type :char))
     (replace _cells buf :start2 ptr-) (incf ptr- n))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _resolution
     (setq _resolution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _slice_pose
     (send _slice_pose :deserialize buf ptr-) (incf ptr- (send _slice_pose :serialization-length))
   ;;
   self)
  )

(setf (get cartographer_ros_msgs::SubmapTexture :md5sum-) "26187fc048d2d8e578b6c781f3b53158")
(setf (get cartographer_ros_msgs::SubmapTexture :datatype-) "cartographer_ros_msgs/SubmapTexture")
(setf (get cartographer_ros_msgs::SubmapTexture :definition-)
      "# Copyright 2017 The Cartographer Authors
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

uint8[] cells
int32 width
int32 height
float64 resolution
geometry_msgs/Pose slice_pose

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



(provide :cartographer_ros_msgs/SubmapTexture "26187fc048d2d8e578b6c781f3b53158")


