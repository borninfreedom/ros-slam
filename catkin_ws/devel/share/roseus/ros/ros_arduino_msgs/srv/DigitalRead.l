;; Auto-generated. Do not edit!


(when (boundp 'ros_arduino_msgs::DigitalRead)
  (if (not (find-package "ROS_ARDUINO_MSGS"))
    (make-package "ROS_ARDUINO_MSGS"))
  (shadow 'DigitalRead (find-package "ROS_ARDUINO_MSGS")))
(unless (find-package "ROS_ARDUINO_MSGS::DIGITALREAD")
  (make-package "ROS_ARDUINO_MSGS::DIGITALREAD"))
(unless (find-package "ROS_ARDUINO_MSGS::DIGITALREADREQUEST")
  (make-package "ROS_ARDUINO_MSGS::DIGITALREADREQUEST"))
(unless (find-package "ROS_ARDUINO_MSGS::DIGITALREADRESPONSE")
  (make-package "ROS_ARDUINO_MSGS::DIGITALREADRESPONSE"))

(in-package "ROS")





(defclass ros_arduino_msgs::DigitalReadRequest
  :super ros::object
  :slots (_pin ))

(defmethod ros_arduino_msgs::DigitalReadRequest
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

(defclass ros_arduino_msgs::DigitalReadResponse
  :super ros::object
  :slots (_value ))

(defmethod ros_arduino_msgs::DigitalReadResponse
  (:init
   (&key
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_arduino_msgs::DigitalRead
  :super ros::object
  :slots ())

(setf (get ros_arduino_msgs::DigitalRead :md5sum-) "78b8839065b88768904414e0b6e384fc")
(setf (get ros_arduino_msgs::DigitalRead :datatype-) "ros_arduino_msgs/DigitalRead")
(setf (get ros_arduino_msgs::DigitalRead :request) ros_arduino_msgs::DigitalReadRequest)
(setf (get ros_arduino_msgs::DigitalRead :response) ros_arduino_msgs::DigitalReadResponse)

(defmethod ros_arduino_msgs::DigitalReadRequest
  (:response () (instance ros_arduino_msgs::DigitalReadResponse :init)))

(setf (get ros_arduino_msgs::DigitalReadRequest :md5sum-) "78b8839065b88768904414e0b6e384fc")
(setf (get ros_arduino_msgs::DigitalReadRequest :datatype-) "ros_arduino_msgs/DigitalReadRequest")
(setf (get ros_arduino_msgs::DigitalReadRequest :definition-)
      "uint8 pin
---
bool value

")

(setf (get ros_arduino_msgs::DigitalReadResponse :md5sum-) "78b8839065b88768904414e0b6e384fc")
(setf (get ros_arduino_msgs::DigitalReadResponse :datatype-) "ros_arduino_msgs/DigitalReadResponse")
(setf (get ros_arduino_msgs::DigitalReadResponse :definition-)
      "uint8 pin
---
bool value

")



(provide :ros_arduino_msgs/DigitalRead "78b8839065b88768904414e0b6e384fc")


