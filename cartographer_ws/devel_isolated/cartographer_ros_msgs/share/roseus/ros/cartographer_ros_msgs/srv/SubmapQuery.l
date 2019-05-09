;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::SubmapQuery)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'SubmapQuery (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::SUBMAPQUERY")
  (make-package "CARTOGRAPHER_ROS_MSGS::SUBMAPQUERY"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::SUBMAPQUERYREQUEST")
  (make-package "CARTOGRAPHER_ROS_MSGS::SUBMAPQUERYREQUEST"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::SUBMAPQUERYRESPONSE")
  (make-package "CARTOGRAPHER_ROS_MSGS::SUBMAPQUERYRESPONSE"))

(in-package "ROS")





(defclass cartographer_ros_msgs::SubmapQueryRequest
  :super ros::object
  :slots (_trajectory_id _submap_index ))

(defmethod cartographer_ros_msgs::SubmapQueryRequest
  (:init
   (&key
    ((:trajectory_id __trajectory_id) 0)
    ((:submap_index __submap_index) 0)
    )
   (send-super :init)
   (setq _trajectory_id (round __trajectory_id))
   (setq _submap_index (round __submap_index))
   self)
  (:trajectory_id
   (&optional __trajectory_id)
   (if __trajectory_id (setq _trajectory_id __trajectory_id)) _trajectory_id)
  (:submap_index
   (&optional __submap_index)
   (if __submap_index (setq _submap_index __submap_index)) _submap_index)
  (:serialization-length
   ()
   (+
    ;; int32 _trajectory_id
    4
    ;; int32 _submap_index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _trajectory_id
       (write-long _trajectory_id s)
     ;; int32 _submap_index
       (write-long _submap_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _trajectory_id
     (setq _trajectory_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _submap_index
     (setq _submap_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cartographer_ros_msgs::SubmapQueryResponse
  :super ros::object
  :slots (_status _submap_version _textures ))

(defmethod cartographer_ros_msgs::SubmapQueryResponse
  (:init
   (&key
    ((:status __status) (instance cartographer_ros_msgs::StatusResponse :init))
    ((:submap_version __submap_version) 0)
    ((:textures __textures) (let (r) (dotimes (i 0) (push (instance cartographer_ros_msgs::SubmapTexture :init) r)) r))
    )
   (send-super :init)
   (setq _status __status)
   (setq _submap_version (round __submap_version))
   (setq _textures __textures)
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:submap_version
   (&optional __submap_version)
   (if __submap_version (setq _submap_version __submap_version)) _submap_version)
  (:textures
   (&rest __textures)
   (if (keywordp (car __textures))
       (send* _textures __textures)
     (progn
       (if __textures (setq _textures (car __textures)))
       _textures)))
  (:serialization-length
   ()
   (+
    ;; cartographer_ros_msgs/StatusResponse _status
    (send _status :serialization-length)
    ;; int32 _submap_version
    4
    ;; cartographer_ros_msgs/SubmapTexture[] _textures
    (apply #'+ (send-all _textures :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cartographer_ros_msgs/StatusResponse _status
       (send _status :serialize s)
     ;; int32 _submap_version
       (write-long _submap_version s)
     ;; cartographer_ros_msgs/SubmapTexture[] _textures
     (write-long (length _textures) s)
     (dolist (elem _textures)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cartographer_ros_msgs/StatusResponse _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; int32 _submap_version
     (setq _submap_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; cartographer_ros_msgs/SubmapTexture[] _textures
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _textures (let (r) (dotimes (i n) (push (instance cartographer_ros_msgs::SubmapTexture :init) r)) r))
     (dolist (elem- _textures)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cartographer_ros_msgs::SubmapQuery
  :super ros::object
  :slots ())

(setf (get cartographer_ros_msgs::SubmapQuery :md5sum-) "d39f26c172921775c4ad99dbf7cb0792")
(setf (get cartographer_ros_msgs::SubmapQuery :datatype-) "cartographer_ros_msgs/SubmapQuery")
(setf (get cartographer_ros_msgs::SubmapQuery :request) cartographer_ros_msgs::SubmapQueryRequest)
(setf (get cartographer_ros_msgs::SubmapQuery :response) cartographer_ros_msgs::SubmapQueryResponse)

(defmethod cartographer_ros_msgs::SubmapQueryRequest
  (:response () (instance cartographer_ros_msgs::SubmapQueryResponse :init)))

(setf (get cartographer_ros_msgs::SubmapQueryRequest :md5sum-) "d39f26c172921775c4ad99dbf7cb0792")
(setf (get cartographer_ros_msgs::SubmapQueryRequest :datatype-) "cartographer_ros_msgs/SubmapQueryRequest")
(setf (get cartographer_ros_msgs::SubmapQueryRequest :definition-)
      "













int32 trajectory_id
int32 submap_index
---
cartographer_ros_msgs/StatusResponse status
int32 submap_version
cartographer_ros_msgs/SubmapTexture[] textures


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

================================================================================
MSG: cartographer_ros_msgs/SubmapTexture
# Copyright 2017 The Cartographer Authors
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

(setf (get cartographer_ros_msgs::SubmapQueryResponse :md5sum-) "d39f26c172921775c4ad99dbf7cb0792")
(setf (get cartographer_ros_msgs::SubmapQueryResponse :datatype-) "cartographer_ros_msgs/SubmapQueryResponse")
(setf (get cartographer_ros_msgs::SubmapQueryResponse :definition-)
      "













int32 trajectory_id
int32 submap_index
---
cartographer_ros_msgs/StatusResponse status
int32 submap_version
cartographer_ros_msgs/SubmapTexture[] textures


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

================================================================================
MSG: cartographer_ros_msgs/SubmapTexture
# Copyright 2017 The Cartographer Authors
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



(provide :cartographer_ros_msgs/SubmapQuery "d39f26c172921775c4ad99dbf7cb0792")


