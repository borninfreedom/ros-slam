;; Auto-generated. Do not edit!


(when (boundp 'cartographer_ros_msgs::FinishTrajectory)
  (if (not (find-package "CARTOGRAPHER_ROS_MSGS"))
    (make-package "CARTOGRAPHER_ROS_MSGS"))
  (shadow 'FinishTrajectory (find-package "CARTOGRAPHER_ROS_MSGS")))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORY")
  (make-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORY"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORYREQUEST")
  (make-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORYREQUEST"))
(unless (find-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORYRESPONSE")
  (make-package "CARTOGRAPHER_ROS_MSGS::FINISHTRAJECTORYRESPONSE"))

(in-package "ROS")





(defclass cartographer_ros_msgs::FinishTrajectoryRequest
  :super ros::object
  :slots (_stem ))

(defmethod cartographer_ros_msgs::FinishTrajectoryRequest
  (:init
   (&key
    ((:stem __stem) "")
    )
   (send-super :init)
   (setq _stem (string __stem))
   self)
  (:stem
   (&optional __stem)
   (if __stem (setq _stem __stem)) _stem)
  (:serialization-length
   ()
   (+
    ;; string _stem
    4 (length _stem)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _stem
       (write-long (length _stem) s) (princ _stem s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _stem
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _stem (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cartographer_ros_msgs::FinishTrajectoryResponse
  :super ros::object
  :slots ())

(defmethod cartographer_ros_msgs::FinishTrajectoryResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cartographer_ros_msgs::FinishTrajectory
  :super ros::object
  :slots ())

(setf (get cartographer_ros_msgs::FinishTrajectory :md5sum-) "1ca78fe806c5256bb03c4e35886127f9")
(setf (get cartographer_ros_msgs::FinishTrajectory :datatype-) "cartographer_ros_msgs/FinishTrajectory")
(setf (get cartographer_ros_msgs::FinishTrajectory :request) cartographer_ros_msgs::FinishTrajectoryRequest)
(setf (get cartographer_ros_msgs::FinishTrajectory :response) cartographer_ros_msgs::FinishTrajectoryResponse)

(defmethod cartographer_ros_msgs::FinishTrajectoryRequest
  (:response () (instance cartographer_ros_msgs::FinishTrajectoryResponse :init)))

(setf (get cartographer_ros_msgs::FinishTrajectoryRequest :md5sum-) "1ca78fe806c5256bb03c4e35886127f9")
(setf (get cartographer_ros_msgs::FinishTrajectoryRequest :datatype-) "cartographer_ros_msgs/FinishTrajectoryRequest")
(setf (get cartographer_ros_msgs::FinishTrajectoryRequest :definition-)
      "













string stem
---

")

(setf (get cartographer_ros_msgs::FinishTrajectoryResponse :md5sum-) "1ca78fe806c5256bb03c4e35886127f9")
(setf (get cartographer_ros_msgs::FinishTrajectoryResponse :datatype-) "cartographer_ros_msgs/FinishTrajectoryResponse")
(setf (get cartographer_ros_msgs::FinishTrajectoryResponse :definition-)
      "













string stem
---

")



(provide :cartographer_ros_msgs/FinishTrajectory "1ca78fe806c5256bb03c4e35886127f9")


