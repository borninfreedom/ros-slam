;; Auto-generated. Do not edit!


(when (boundp 'navfn::MakeNavPlan)
  (if (not (find-package "NAVFN"))
    (make-package "NAVFN"))
  (shadow 'MakeNavPlan (find-package "NAVFN")))
(unless (find-package "NAVFN::MAKENAVPLAN")
  (make-package "NAVFN::MAKENAVPLAN"))
(unless (find-package "NAVFN::MAKENAVPLANREQUEST")
  (make-package "NAVFN::MAKENAVPLANREQUEST"))
(unless (find-package "NAVFN::MAKENAVPLANRESPONSE")
  (make-package "NAVFN::MAKENAVPLANRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass navfn::MakeNavPlanRequest
  :super ros::object
  :slots (_start _goal ))

(defmethod navfn::MakeNavPlanRequest
  (:init
   (&key
    ((:start __start) (instance geometry_msgs::PoseStamped :init))
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _start __start)
   (setq _goal __goal)
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _start
    (send _start :serialization-length)
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _start
       (send _start :serialize s)
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass navfn::MakeNavPlanResponse
  :super ros::object
  :slots (_plan_found _error_message _path ))

(defmethod navfn::MakeNavPlanResponse
  (:init
   (&key
    ((:plan_found __plan_found) 0)
    ((:error_message __error_message) "")
    ((:path __path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    )
   (send-super :init)
   (setq _plan_found (round __plan_found))
   (setq _error_message (string __error_message))
   (setq _path __path)
   self)
  (:plan_found
   (&optional __plan_found)
   (if __plan_found (setq _plan_found __plan_found)) _plan_found)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; uint8 _plan_found
    1
    ;; string _error_message
    4 (length _error_message)
    ;; geometry_msgs/PoseStamped[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _plan_found
       (write-byte _plan_found s)
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;; geometry_msgs/PoseStamped[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _plan_found
     (setq _plan_found (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass navfn::MakeNavPlan
  :super ros::object
  :slots ())

(setf (get navfn::MakeNavPlan :md5sum-) "8ffef29bc8b086289124c16a8daa989d")
(setf (get navfn::MakeNavPlan :datatype-) "navfn/MakeNavPlan")
(setf (get navfn::MakeNavPlan :request) navfn::MakeNavPlanRequest)
(setf (get navfn::MakeNavPlan :response) navfn::MakeNavPlanResponse)

(defmethod navfn::MakeNavPlanRequest
  (:response () (instance navfn::MakeNavPlanResponse :init)))

(setf (get navfn::MakeNavPlanRequest :md5sum-) "8ffef29bc8b086289124c16a8daa989d")
(setf (get navfn::MakeNavPlanRequest :datatype-) "navfn/MakeNavPlanRequest")
(setf (get navfn::MakeNavPlanRequest :definition-)
      "geometry_msgs/PoseStamped start
geometry_msgs/PoseStamped goal

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
---

uint8 plan_found
string error_message


geometry_msgs/PoseStamped[] path


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

(setf (get navfn::MakeNavPlanResponse :md5sum-) "8ffef29bc8b086289124c16a8daa989d")
(setf (get navfn::MakeNavPlanResponse :datatype-) "navfn/MakeNavPlanResponse")
(setf (get navfn::MakeNavPlanResponse :definition-)
      "geometry_msgs/PoseStamped start
geometry_msgs/PoseStamped goal

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
---

uint8 plan_found
string error_message


geometry_msgs/PoseStamped[] path


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :navfn/MakeNavPlan "8ffef29bc8b086289124c16a8daa989d")


