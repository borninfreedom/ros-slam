;; Auto-generated. Do not edit!


(when (boundp 'ros_arduino_msgs::DigitalWrite)
  (if (not (find-package "ROS_ARDUINO_MSGS"))
    (make-package "ROS_ARDUINO_MSGS"))
  (shadow 'DigitalWrite (find-package "ROS_ARDUINO_MSGS")))
(unless (find-package "ROS_ARDUINO_MSGS::DIGITALWRITE")
  (make-package "ROS_ARDUINO_MSGS::DIGITALWRITE"))
(unless (find-package "ROS_ARDUINO_MSGS::DIGITALWRITEREQUEST")
  (make-package "ROS_ARDUINO_MSGS::DIGITALWRITEREQUEST"))
(unless (find-package "ROS_ARDUINO_MSGS::DIGITALWRITERESPONSE")
  (make-package "ROS_ARDUINO_MSGS::DIGITALWRITERESPONSE"))

(in-package "ROS")





(defclass ros_arduino_msgs::DigitalWriteRequest
  :super ros::object
  :slots (_pin _value ))

(defmethod ros_arduino_msgs::DigitalWriteRequest
  (:init
   (&key
    ((:pin __pin) 0)
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _value __value)
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_arduino_msgs::DigitalWriteResponse
  :super ros::object
  :slots ())

(defmethod ros_arduino_msgs::DigitalWriteResponse
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

(defclass ros_arduino_msgs::DigitalWrite
  :super ros::object
  :slots ())

(setf (get ros_arduino_msgs::DigitalWrite :md5sum-) "9965f904e6efea32066b0a4a77246056")
(setf (get ros_arduino_msgs::DigitalWrite :datatype-) "ros_arduino_msgs/DigitalWrite")
(setf (get ros_arduino_msgs::DigitalWrite :request) ros_arduino_msgs::DigitalWriteRequest)
(setf (get ros_arduino_msgs::DigitalWrite :response) ros_arduino_msgs::DigitalWriteResponse)

(defmethod ros_arduino_msgs::DigitalWriteRequest
  (:response () (instance ros_arduino_msgs::DigitalWriteResponse :init)))

(setf (get ros_arduino_msgs::DigitalWriteRequest :md5sum-) "9965f904e6efea32066b0a4a77246056")
(setf (get ros_arduino_msgs::DigitalWriteRequest :datatype-) "ros_arduino_msgs/DigitalWriteRequest")
(setf (get ros_arduino_msgs::DigitalWriteRequest :definition-)
      "uint8 pin
bool value
---

")

(setf (get ros_arduino_msgs::DigitalWriteResponse :md5sum-) "9965f904e6efea32066b0a4a77246056")
(setf (get ros_arduino_msgs::DigitalWriteResponse :datatype-) "ros_arduino_msgs/DigitalWriteResponse")
(setf (get ros_arduino_msgs::DigitalWriteResponse :definition-)
      "uint8 pin
bool value
---

")



(provide :ros_arduino_msgs/DigitalWrite "9965f904e6efea32066b0a4a77246056")


