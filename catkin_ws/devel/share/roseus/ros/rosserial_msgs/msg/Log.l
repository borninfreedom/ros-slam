;; Auto-generated. Do not edit!


(when (boundp 'rosserial_msgs::Log)
  (if (not (find-package "ROSSERIAL_MSGS"))
    (make-package "ROSSERIAL_MSGS"))
  (shadow 'Log (find-package "ROSSERIAL_MSGS")))
(unless (find-package "ROSSERIAL_MSGS::LOG")
  (make-package "ROSSERIAL_MSGS::LOG"))

(in-package "ROS")
;;//! \htmlinclude Log.msg.html


(intern "*ROSDEBUG*" (find-package "ROSSERIAL_MSGS::LOG"))
(shadow '*ROSDEBUG* (find-package "ROSSERIAL_MSGS::LOG"))
(defconstant rosserial_msgs::Log::*ROSDEBUG* 0)
(intern "*INFO*" (find-package "ROSSERIAL_MSGS::LOG"))
(shadow '*INFO* (find-package "ROSSERIAL_MSGS::LOG"))
(defconstant rosserial_msgs::Log::*INFO* 1)
(intern "*WARN*" (find-package "ROSSERIAL_MSGS::LOG"))
(shadow '*WARN* (find-package "ROSSERIAL_MSGS::LOG"))
(defconstant rosserial_msgs::Log::*WARN* 2)
(intern "*ERROR*" (find-package "ROSSERIAL_MSGS::LOG"))
(shadow '*ERROR* (find-package "ROSSERIAL_MSGS::LOG"))
(defconstant rosserial_msgs::Log::*ERROR* 3)
(intern "*FATAL*" (find-package "ROSSERIAL_MSGS::LOG"))
(shadow '*FATAL* (find-package "ROSSERIAL_MSGS::LOG"))
(defconstant rosserial_msgs::Log::*FATAL* 4)
(defclass rosserial_msgs::Log
  :super ros::object
  :slots (_level _msg ))

(defmethod rosserial_msgs::Log
  (:init
   (&key
    ((:level __level) 0)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _level (round __level))
   (setq _msg (string __msg))
   self)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; uint8 _level
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _level
       (write-byte _level s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rosserial_msgs::Log :md5sum-) "11abd731c25933261cd6183bd12d6295")
(setf (get rosserial_msgs::Log :datatype-) "rosserial_msgs/Log")
(setf (get rosserial_msgs::Log :definition-)
      "
#ROS Logging Levels
uint8 ROSDEBUG=0
uint8 INFO=1
uint8 WARN=2
uint8 ERROR=3
uint8 FATAL=4

uint8 level
string msg

")



(provide :rosserial_msgs/Log "11abd731c25933261cd6183bd12d6295")


