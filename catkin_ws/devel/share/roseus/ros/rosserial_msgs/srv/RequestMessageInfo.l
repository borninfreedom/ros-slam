;; Auto-generated. Do not edit!


(when (boundp 'rosserial_msgs::RequestMessageInfo)
  (if (not (find-package "ROSSERIAL_MSGS"))
    (make-package "ROSSERIAL_MSGS"))
  (shadow 'RequestMessageInfo (find-package "ROSSERIAL_MSGS")))
(unless (find-package "ROSSERIAL_MSGS::REQUESTMESSAGEINFO")
  (make-package "ROSSERIAL_MSGS::REQUESTMESSAGEINFO"))
(unless (find-package "ROSSERIAL_MSGS::REQUESTMESSAGEINFOREQUEST")
  (make-package "ROSSERIAL_MSGS::REQUESTMESSAGEINFOREQUEST"))
(unless (find-package "ROSSERIAL_MSGS::REQUESTMESSAGEINFORESPONSE")
  (make-package "ROSSERIAL_MSGS::REQUESTMESSAGEINFORESPONSE"))

(in-package "ROS")





(defclass rosserial_msgs::RequestMessageInfoRequest
  :super ros::object
  :slots (_type ))

(defmethod rosserial_msgs::RequestMessageInfoRequest
  (:init
   (&key
    ((:type __type) "")
    )
   (send-super :init)
   (setq _type (string __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosserial_msgs::RequestMessageInfoResponse
  :super ros::object
  :slots (_md5 _definition ))

(defmethod rosserial_msgs::RequestMessageInfoResponse
  (:init
   (&key
    ((:md5 __md5) "")
    ((:definition __definition) "")
    )
   (send-super :init)
   (setq _md5 (string __md5))
   (setq _definition (string __definition))
   self)
  (:md5
   (&optional __md5)
   (if __md5 (setq _md5 __md5)) _md5)
  (:definition
   (&optional __definition)
   (if __definition (setq _definition __definition)) _definition)
  (:serialization-length
   ()
   (+
    ;; string _md5
    4 (length _md5)
    ;; string _definition
    4 (length _definition)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _md5
       (write-long (length _md5) s) (princ _md5 s)
     ;; string _definition
       (write-long (length _definition) s) (princ _definition s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _md5
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _md5 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _definition
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _definition (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosserial_msgs::RequestMessageInfo
  :super ros::object
  :slots ())

(setf (get rosserial_msgs::RequestMessageInfo :md5sum-) "6416d80296dfbbdd5f7b2cee839f9316")
(setf (get rosserial_msgs::RequestMessageInfo :datatype-) "rosserial_msgs/RequestMessageInfo")
(setf (get rosserial_msgs::RequestMessageInfo :request) rosserial_msgs::RequestMessageInfoRequest)
(setf (get rosserial_msgs::RequestMessageInfo :response) rosserial_msgs::RequestMessageInfoResponse)

(defmethod rosserial_msgs::RequestMessageInfoRequest
  (:response () (instance rosserial_msgs::RequestMessageInfoResponse :init)))

(setf (get rosserial_msgs::RequestMessageInfoRequest :md5sum-) "6416d80296dfbbdd5f7b2cee839f9316")
(setf (get rosserial_msgs::RequestMessageInfoRequest :datatype-) "rosserial_msgs/RequestMessageInfoRequest")
(setf (get rosserial_msgs::RequestMessageInfoRequest :definition-)
      "
string type
---


string md5
string definition

")

(setf (get rosserial_msgs::RequestMessageInfoResponse :md5sum-) "6416d80296dfbbdd5f7b2cee839f9316")
(setf (get rosserial_msgs::RequestMessageInfoResponse :datatype-) "rosserial_msgs/RequestMessageInfoResponse")
(setf (get rosserial_msgs::RequestMessageInfoResponse :definition-)
      "
string type
---


string md5
string definition

")



(provide :rosserial_msgs/RequestMessageInfo "6416d80296dfbbdd5f7b2cee839f9316")


