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



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cartographer_ros_msgs::SubmapQueryRequest
  :super ros::object
  :slots (_submap_id _trajectory_id ))

(defmethod cartographer_ros_msgs::SubmapQueryRequest
  (:init
   (&key
    ((:submap_id __submap_id) 0)
    ((:trajectory_id __trajectory_id) 0)
    )
   (send-super :init)
   (setq _submap_id (round __submap_id))
   (setq _trajectory_id (round __trajectory_id))
   self)
  (:submap_id
   (&optional __submap_id)
   (if __submap_id (setq _submap_id __submap_id)) _submap_id)
  (:trajectory_id
   (&optional __trajectory_id)
   (if __trajectory_id (setq _trajectory_id __trajectory_id)) _trajectory_id)
  (:serialization-length
   ()
   (+
    ;; int32 _submap_id
    4
    ;; int32 _trajectory_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _submap_id
       (write-long _submap_id s)
     ;; int32 _trajectory_id
       (write-long _trajectory_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _submap_id
     (setq _submap_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _trajectory_id
     (setq _trajectory_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cartographer_ros_msgs::SubmapQueryResponse
  :super ros::object
  :slots (_submap_version _cells _width _height _resolution _slice_pose _error_message ))

(defmethod cartographer_ros_msgs::SubmapQueryResponse
  (:init
   (&key
    ((:submap_version __submap_version) 0)
    ((:cells __cells) (make-array 0 :initial-element 0 :element-type :char))
    ((:width __width) 0)
    ((:height __height) 0)
    ((:resolution __resolution) 0.0)
    ((:slice_pose __slice_pose) (instance geometry_msgs::Pose :init))
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _submap_version (round __submap_version))
   (setq _cells __cells)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _resolution (float __resolution))
   (setq _slice_pose __slice_pose)
   (setq _error_message (string __error_message))
   self)
  (:submap_version
   (&optional __submap_version)
   (if __submap_version (setq _submap_version __submap_version)) _submap_version)
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
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; int32 _submap_version
    4
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
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _submap_version
       (write-long _submap_version s)
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
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _submap_version
     (setq _submap_version (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cartographer_ros_msgs::SubmapQuery
  :super ros::object
  :slots ())

(setf (get cartographer_ros_msgs::SubmapQuery :md5sum-) "0db2c1e6e0442d0daae552833fa004b1")
(setf (get cartographer_ros_msgs::SubmapQuery :datatype-) "cartographer_ros_msgs/SubmapQuery")
(setf (get cartographer_ros_msgs::SubmapQuery :request) cartographer_ros_msgs::SubmapQueryRequest)
(setf (get cartographer_ros_msgs::SubmapQuery :response) cartographer_ros_msgs::SubmapQueryResponse)

(defmethod cartographer_ros_msgs::SubmapQueryRequest
  (:response () (instance cartographer_ros_msgs::SubmapQueryResponse :init)))

(setf (get cartographer_ros_msgs::SubmapQueryRequest :md5sum-) "0db2c1e6e0442d0daae552833fa004b1")
(setf (get cartographer_ros_msgs::SubmapQueryRequest :datatype-) "cartographer_ros_msgs/SubmapQueryRequest")
(setf (get cartographer_ros_msgs::SubmapQueryRequest :definition-)
      "













int32 submap_id
int32 trajectory_id
---
int32 submap_version
uint8[] cells
int32 width
int32 height
float64 resolution
geometry_msgs/Pose slice_pose
string error_message


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

(setf (get cartographer_ros_msgs::SubmapQueryResponse :md5sum-) "0db2c1e6e0442d0daae552833fa004b1")
(setf (get cartographer_ros_msgs::SubmapQueryResponse :datatype-) "cartographer_ros_msgs/SubmapQueryResponse")
(setf (get cartographer_ros_msgs::SubmapQueryResponse :definition-)
      "













int32 submap_id
int32 trajectory_id
---
int32 submap_version
uint8[] cells
int32 width
int32 height
float64 resolution
geometry_msgs/Pose slice_pose
string error_message


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



(provide :cartographer_ros_msgs/SubmapQuery "0db2c1e6e0442d0daae552833fa004b1")


