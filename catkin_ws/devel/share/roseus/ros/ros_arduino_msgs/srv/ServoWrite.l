;; Auto-generated. Do not edit!


(when (boundp 'ros_arduino_msgs::ServoWrite)
  (if (not (find-package "ROS_ARDUINO_MSGS"))
    (make-package "ROS_ARDUINO_MSGS"))
  (shadow 'ServoWrite (find-package "ROS_ARDUINO_MSGS")))
(unless (find-package "ROS_ARDUINO_MSGS::SERVOWRITE")
  (make-package "ROS_ARDUINO_MSGS::SERVOWRITE"))
(unless (find-package "ROS_ARDUINO_MSGS::SERVOWRITEREQUEST")
  (make-package "ROS_ARDUINO_MSGS::SERVOWRITEREQUEST"))
(unless (find-package "ROS_ARDUINO_MSGS::SERVOWRITERESPONSE")
  (make-package "ROS_ARDUINO_MSGS::SERVOWRITERESPONSE"))

(in-package "ROS")





(defclass ros_arduino_msgs::ServoWriteRequest
  :super ros::object
  :slots (_id _value ))

(defmethod ros_arduino_msgs::ServoWriteRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _value (float __value))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_arduino_msgs::ServoWriteResponse
  :super ros::object
  :slots ())

(defmethod ros_arduino_msgs::ServoWriteResponse
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

(defclass ros_arduino_msgs::ServoWrite
  :super ros::object
  :slots ())

(setf (get ros_arduino_msgs::ServoWrite :md5sum-) "f90a4a27fdac2d3886d60d19d2b742b2")
(setf (get ros_arduino_msgs::ServoWrite :datatype-) "ros_arduino_msgs/ServoWrite")
(setf (get ros_arduino_msgs::ServoWrite :request) ros_arduino_msgs::ServoWriteRequest)
(setf (get ros_arduino_msgs::ServoWrite :response) ros_arduino_msgs::ServoWriteResponse)

(defmethod ros_arduino_msgs::ServoWriteRequest
  (:response () (instance ros_arduino_msgs::ServoWriteResponse :init)))

(setf (get ros_arduino_msgs::ServoWriteRequest :md5sum-) "f90a4a27fdac2d3886d60d19d2b742b2")
(setf (get ros_arduino_msgs::ServoWriteRequest :datatype-) "ros_arduino_msgs/ServoWriteRequest")
(setf (get ros_arduino_msgs::ServoWriteRequest :definition-)
      "uint8 id
float32 value
---

")

(setf (get ros_arduino_msgs::ServoWriteResponse :md5sum-) "f90a4a27fdac2d3886d60d19d2b742b2")
(setf (get ros_arduino_msgs::ServoWriteResponse :datatype-) "ros_arduino_msgs/ServoWriteResponse")
(setf (get ros_arduino_msgs::ServoWriteResponse :definition-)
      "uint8 id
float32 value
---

")



(provide :ros_arduino_msgs/ServoWrite "f90a4a27fdac2d3886d60d19d2b742b2")


