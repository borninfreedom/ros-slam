;; Auto-generated. Do not edit!


(when (boundp 'ros_arduino_msgs::ArduinoConstants)
  (if (not (find-package "ROS_ARDUINO_MSGS"))
    (make-package "ROS_ARDUINO_MSGS"))
  (shadow 'ArduinoConstants (find-package "ROS_ARDUINO_MSGS")))
(unless (find-package "ROS_ARDUINO_MSGS::ARDUINOCONSTANTS")
  (make-package "ROS_ARDUINO_MSGS::ARDUINOCONSTANTS"))

(in-package "ROS")
;;//! \htmlinclude ArduinoConstants.msg.html


(intern "*LOW*" (find-package "ROS_ARDUINO_MSGS::ARDUINOCONSTANTS"))
(shadow '*LOW* (find-package "ROS_ARDUINO_MSGS::ARDUINOCONSTANTS"))
(defconstant ros_arduino_msgs::ArduinoConstants::*LOW* 0)
(intern "*HIGH*" (find-package "ROS_ARDUINO_MSGS::ARDUINOCONSTANTS"))
(shadow '*HIGH* (find-package "ROS_ARDUINO_MSGS::ARDUINOCONSTANTS"))
(defconstant ros_arduino_msgs::ArduinoConstants::*HIGH* 1)
(intern "*INPUT*" (find-package "ROS_ARDUINO_MSGS::ARDUINOCONSTANTS"))
(shadow '*INPUT* (find-package "ROS_ARDUINO_MSGS::ARDUINOCONSTANTS"))
(defconstant ros_arduino_msgs::ArduinoConstants::*INPUT* 0)
(intern "*OUTPUT*" (find-package "ROS_ARDUINO_MSGS::ARDUINOCONSTANTS"))
(shadow '*OUTPUT* (find-package "ROS_ARDUINO_MSGS::ARDUINOCONSTANTS"))
(defconstant ros_arduino_msgs::ArduinoConstants::*OUTPUT* 1)
(defclass ros_arduino_msgs::ArduinoConstants
  :super ros::object
  :slots ())

(defmethod ros_arduino_msgs::ArduinoConstants
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

(setf (get ros_arduino_msgs::ArduinoConstants :md5sum-) "6ca092be59914d9e8dd11612f0a5c895")
(setf (get ros_arduino_msgs::ArduinoConstants :datatype-) "ros_arduino_msgs/ArduinoConstants")
(setf (get ros_arduino_msgs::ArduinoConstants :definition-)
      "# Arduino-style constants
uint8 LOW=0
uint8 HIGH=1
uint8 INPUT=0
uint8 OUTPUT=1

")



(provide :ros_arduino_msgs/ArduinoConstants "6ca092be59914d9e8dd11612f0a5c895")


