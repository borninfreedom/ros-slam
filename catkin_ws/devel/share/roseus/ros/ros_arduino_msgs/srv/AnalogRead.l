;; Auto-generated. Do not edit!


(when (boundp 'ros_arduino_msgs::AnalogRead)
  (if (not (find-package "ROS_ARDUINO_MSGS"))
    (make-package "ROS_ARDUINO_MSGS"))
  (shadow 'AnalogRead (find-package "ROS_ARDUINO_MSGS")))
(unless (find-package "ROS_ARDUINO_MSGS::ANALOGREAD")
  (make-package "ROS_ARDUINO_MSGS::ANALOGREAD"))
(unless (find-package "ROS_ARDUINO_MSGS::ANALOGREADREQUEST")
  (make-package "ROS_ARDUINO_MSGS::ANALOGREADREQUEST"))
(unless (find-package "ROS_ARDUINO_MSGS::ANALOGREADRESPONSE")
  (make-package "ROS_ARDUINO_MSGS::ANALOGREADRESPONSE"))

(in-package "ROS")





(defclass ros_arduino_msgs::AnalogReadRequest
  :super ros::object
  :slots (_pin ))

(defmethod ros_arduino_msgs::AnalogReadRequest
  (:init
   (&key
    ((:pin __pin) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_arduino_msgs::AnalogReadResponse
  :super ros::object
  :slots (_value ))

(defmethod ros_arduino_msgs::AnalogReadResponse
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass ros_arduino_msgs::AnalogRead
  :super ros::object
  :slots ())

(setf (get ros_arduino_msgs::AnalogRead :md5sum-) "390d2907e6c6cb9c9490e8fab3391260")
(setf (get ros_arduino_msgs::AnalogRead :datatype-) "ros_arduino_msgs/AnalogRead")
(setf (get ros_arduino_msgs::AnalogRead :request) ros_arduino_msgs::AnalogReadRequest)
(setf (get ros_arduino_msgs::AnalogRead :response) ros_arduino_msgs::AnalogReadResponse)

(defmethod ros_arduino_msgs::AnalogReadRequest
  (:response () (instance ros_arduino_msgs::AnalogReadResponse :init)))

(setf (get ros_arduino_msgs::AnalogReadRequest :md5sum-) "390d2907e6c6cb9c9490e8fab3391260")
(setf (get ros_arduino_msgs::AnalogReadRequest :datatype-) "ros_arduino_msgs/AnalogReadRequest")
(setf (get ros_arduino_msgs::AnalogReadRequest :definition-)
      "uint8 pin
---
uint16 value

")

(setf (get ros_arduino_msgs::AnalogReadResponse :md5sum-) "390d2907e6c6cb9c9490e8fab3391260")
(setf (get ros_arduino_msgs::AnalogReadResponse :datatype-) "ros_arduino_msgs/AnalogReadResponse")
(setf (get ros_arduino_msgs::AnalogReadResponse :definition-)
      "uint8 pin
---
uint16 value

")



(provide :ros_arduino_msgs/AnalogRead "390d2907e6c6cb9c9490e8fab3391260")


