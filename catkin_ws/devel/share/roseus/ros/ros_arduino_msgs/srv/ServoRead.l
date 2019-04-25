;; Auto-generated. Do not edit!


(when (boundp 'ros_arduino_msgs::ServoRead)
  (if (not (find-package "ROS_ARDUINO_MSGS"))
    (make-package "ROS_ARDUINO_MSGS"))
  (shadow 'ServoRead (find-package "ROS_ARDUINO_MSGS")))
(unless (find-package "ROS_ARDUINO_MSGS::SERVOREAD")
  (make-package "ROS_ARDUINO_MSGS::SERVOREAD"))
(unless (find-package "ROS_ARDUINO_MSGS::SERVOREADREQUEST")
  (make-package "ROS_ARDUINO_MSGS::SERVOREADREQUEST"))
(unless (find-package "ROS_ARDUINO_MSGS::SERVOREADRESPONSE")
  (make-package "ROS_ARDUINO_MSGS::SERVOREADRESPONSE"))

(in-package "ROS")





(defclass ros_arduino_msgs::ServoReadRequest
  :super ros::object
  :slots (_id ))

(defmethod ros_arduino_msgs::ServoReadRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_arduino_msgs::ServoReadResponse
  :super ros::object
  :slots (_value ))

(defmethod ros_arduino_msgs::ServoReadResponse
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_arduino_msgs::ServoRead
  :super ros::object
  :slots ())

(setf (get ros_arduino_msgs::ServoRead :md5sum-) "6685c94dd9155802f37ed34fb627a83a")
(setf (get ros_arduino_msgs::ServoRead :datatype-) "ros_arduino_msgs/ServoRead")
(setf (get ros_arduino_msgs::ServoRead :request) ros_arduino_msgs::ServoReadRequest)
(setf (get ros_arduino_msgs::ServoRead :response) ros_arduino_msgs::ServoReadResponse)

(defmethod ros_arduino_msgs::ServoReadRequest
  (:response () (instance ros_arduino_msgs::ServoReadResponse :init)))

(setf (get ros_arduino_msgs::ServoReadRequest :md5sum-) "6685c94dd9155802f37ed34fb627a83a")
(setf (get ros_arduino_msgs::ServoReadRequest :datatype-) "ros_arduino_msgs/ServoReadRequest")
(setf (get ros_arduino_msgs::ServoReadRequest :definition-)
      "uint8 id
---
float32 value

")

(setf (get ros_arduino_msgs::ServoReadResponse :md5sum-) "6685c94dd9155802f37ed34fb627a83a")
(setf (get ros_arduino_msgs::ServoReadResponse :datatype-) "ros_arduino_msgs/ServoReadResponse")
(setf (get ros_arduino_msgs::ServoReadResponse :definition-)
      "uint8 id
---
float32 value

")



(provide :ros_arduino_msgs/ServoRead "6685c94dd9155802f37ed34fb627a83a")


