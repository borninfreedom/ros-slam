;; Auto-generated. Do not edit!


(when (boundp 'robot_pose_ekf::GetStatus)
  (if (not (find-package "ROBOT_POSE_EKF"))
    (make-package "ROBOT_POSE_EKF"))
  (shadow 'GetStatus (find-package "ROBOT_POSE_EKF")))
(unless (find-package "ROBOT_POSE_EKF::GETSTATUS")
  (make-package "ROBOT_POSE_EKF::GETSTATUS"))
(unless (find-package "ROBOT_POSE_EKF::GETSTATUSREQUEST")
  (make-package "ROBOT_POSE_EKF::GETSTATUSREQUEST"))
(unless (find-package "ROBOT_POSE_EKF::GETSTATUSRESPONSE")
  (make-package "ROBOT_POSE_EKF::GETSTATUSRESPONSE"))

(in-package "ROS")





(defclass robot_pose_ekf::GetStatusRequest
  :super ros::object
  :slots ())

(defmethod robot_pose_ekf::GetStatusRequest
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

(defclass robot_pose_ekf::GetStatusResponse
  :super ros::object
  :slots (_status ))

(defmethod robot_pose_ekf::GetStatusResponse
  (:init
   (&key
    ((:status __status) "")
    )
   (send-super :init)
   (setq _status (string __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_pose_ekf::GetStatus
  :super ros::object
  :slots ())

(setf (get robot_pose_ekf::GetStatus :md5sum-) "4fe5af303955c287688e7347e9b00278")
(setf (get robot_pose_ekf::GetStatus :datatype-) "robot_pose_ekf/GetStatus")
(setf (get robot_pose_ekf::GetStatus :request) robot_pose_ekf::GetStatusRequest)
(setf (get robot_pose_ekf::GetStatus :response) robot_pose_ekf::GetStatusResponse)

(defmethod robot_pose_ekf::GetStatusRequest
  (:response () (instance robot_pose_ekf::GetStatusResponse :init)))

(setf (get robot_pose_ekf::GetStatusRequest :md5sum-) "4fe5af303955c287688e7347e9b00278")
(setf (get robot_pose_ekf::GetStatusRequest :datatype-) "robot_pose_ekf/GetStatusRequest")
(setf (get robot_pose_ekf::GetStatusRequest :definition-)
      "
---
string status
")

(setf (get robot_pose_ekf::GetStatusResponse :md5sum-) "4fe5af303955c287688e7347e9b00278")
(setf (get robot_pose_ekf::GetStatusResponse :datatype-) "robot_pose_ekf/GetStatusResponse")
(setf (get robot_pose_ekf::GetStatusResponse :definition-)
      "
---
string status
")



(provide :robot_pose_ekf/GetStatus "4fe5af303955c287688e7347e9b00278")


