;; Auto-generated. Do not edit!


(when (boundp 'costmap_2d::VoxelGrid)
  (if (not (find-package "COSTMAP_2D"))
    (make-package "COSTMAP_2D"))
  (shadow 'VoxelGrid (find-package "COSTMAP_2D")))
(unless (find-package "COSTMAP_2D::VOXELGRID")
  (make-package "COSTMAP_2D::VOXELGRID"))

(in-package "ROS")
;;//! \htmlinclude VoxelGrid.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass costmap_2d::VoxelGrid
  :super ros::object
  :slots (_header _data _origin _resolutions _size_x _size_y _size_z ))

(defmethod costmap_2d::VoxelGrid
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    ((:origin __origin) (instance geometry_msgs::Point32 :init))
    ((:resolutions __resolutions) (instance geometry_msgs::Vector3 :init))
    ((:size_x __size_x) 0)
    ((:size_y __size_y) 0)
    ((:size_z __size_z) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   (setq _origin __origin)
   (setq _resolutions __resolutions)
   (setq _size_x (round __size_x))
   (setq _size_y (round __size_y))
   (setq _size_z (round __size_z))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:origin
   (&rest __origin)
   (if (keywordp (car __origin))
       (send* _origin __origin)
     (progn
       (if __origin (setq _origin (car __origin)))
       _origin)))
  (:resolutions
   (&rest __resolutions)
   (if (keywordp (car __resolutions))
       (send* _resolutions __resolutions)
     (progn
       (if __resolutions (setq _resolutions (car __resolutions)))
       _resolutions)))
  (:size_x
   (&optional __size_x)
   (if __size_x (setq _size_x __size_x)) _size_x)
  (:size_y
   (&optional __size_y)
   (if __size_y (setq _size_y __size_y)) _size_y)
  (:size_z
   (&optional __size_z)
   (if __size_z (setq _size_z __size_z)) _size_z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[] _data
    (* 4    (length _data)) 4
    ;; geometry_msgs/Point32 _origin
    (send _origin :serialization-length)
    ;; geometry_msgs/Vector3 _resolutions
    (send _resolutions :serialization-length)
    ;; uint32 _size_x
    4
    ;; uint32 _size_y
    4
    ;; uint32 _size_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-long (elt _data i) s)
       )
     ;; geometry_msgs/Point32 _origin
       (send _origin :serialize s)
     ;; geometry_msgs/Vector3 _resolutions
       (send _resolutions :serialize s)
     ;; uint32 _size_x
       (write-long _size_x s)
     ;; uint32 _size_y
       (write-long _size_y s)
     ;; uint32 _size_z
       (write-long _size_z s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Point32 _origin
     (send _origin :deserialize buf ptr-) (incf ptr- (send _origin :serialization-length))
   ;; geometry_msgs/Vector3 _resolutions
     (send _resolutions :deserialize buf ptr-) (incf ptr- (send _resolutions :serialization-length))
   ;; uint32 _size_x
     (setq _size_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _size_y
     (setq _size_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _size_z
     (setq _size_z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get costmap_2d::VoxelGrid :md5sum-) "48a040827e1322073d78ece5a497029c")
(setf (get costmap_2d::VoxelGrid :datatype-) "costmap_2d/VoxelGrid")
(setf (get costmap_2d::VoxelGrid :definition-)
      "Header header
uint32[] data
geometry_msgs/Point32 origin
geometry_msgs/Vector3 resolutions
uint32 size_x
uint32 size_y
uint32 size_z


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
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :costmap_2d/VoxelGrid "48a040827e1322073d78ece5a497029c")


