;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::LandmarkEntry)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'LandmarkEntry (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::LANDMARKENTRY")
  (make-package "CARTOGRAPHER_ROS_MSGS::LANDMARKENTRY"))

(in-package "ROS")
;;//! \htmlinclude LandmarkEntry.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cartographer_ros_msgs::LandmarkEntry
  :super ros::object
  :slots (_id _tracking_from_landmark_transform _translation_weight _rotation_weight ))

(defmethod cartographer_ros_msgs::LandmarkEntry
  (:init
   (&key
    ((:id __id) "")
    ((:tracking_from_landmark_transform __tracking_from_landmark_transform) (instance geometry_msgs::Pose :init))
    ((:translation_weight __translation_weight) 0.0)
    ((:rotation_weight __rotation_weight) 0.0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _tracking_from_landmark_transform __tracking_from_landmark_transform)
   (setq _translation_weight (float __translation_weight))
   (setq _rotation_weight (float __rotation_weight))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:tracking_from_landmark_transform
   (&rest __tracking_from_landmark_transform)
   (if (keywordp (car __tracking_from_landmark_transform))
       (send* _tracking_from_landmark_transform __tracking_from_landmark_transform)
     (progn
       (if __tracking_from_landmark_transform (setq _tracking_from_landmark_transform (car __tracking_from_landmark_transform)))
       _tracking_from_landmark_transform)))
  (:translation_weight
   (&optional __translation_weight)
   (if __translation_weight (setq _translation_weight __translation_weight)) _translation_weight)
  (:rotation_weight
   (&optional __rotation_weight)
   (if __rotation_weight (setq _rotation_weight __rotation_weight)) _rotation_weight)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; geometry_msgs/Pose _tracking_from_landmark_transform
    (send _tracking_from_landmark_transform :serialization-length)
    ;; float64 _translation_weight
    8
    ;; float64 _rotation_weight
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; geometry_msgs/Pose _tracking_from_landmark_transform
       (send _tracking_from_landmark_transform :serialize s)
     ;; float64 _translation_weight
       (sys::poke _translation_weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rotation_weight
       (sys::poke _rotation_weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _tracking_from_landmark_transform
     (send _tracking_from_landmark_transform :deserialize buf ptr-) (incf ptr- (send _tracking_from_landmark_transform :serialization-length))
   ;; float64 _translation_weight
     (setq _translation_weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rotation_weight
     (setq _rotation_weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get cartographer_ros_msgs::LandmarkEntry :md5sum-) "133f8dd7259f83a87eb4d78b301c0b70")
(setf (get cartographer_ros_msgs::LandmarkEntry :datatype-) "cartographer_ros_msgs/LandmarkEntry")
(setf (get cartographer_ros_msgs::LandmarkEntry :definition-)
      "# 2018 The Cartographer Authors
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



(provide :cartographer_ros_msgs/LandmarkEntry "133f8dd7259f83a87eb4d78b301c0b70")


