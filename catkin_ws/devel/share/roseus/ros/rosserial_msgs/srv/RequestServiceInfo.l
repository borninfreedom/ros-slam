;; Auto-generated. Do not edit!


(when (boundp 'rosserial_msgs::RequestServiceInfo)
  (if (not (find-package "ROSSERIAL_MSGS"))
    (make-package "ROSSERIAL_MSGS"))
  (shadow 'RequestServiceInfo (find-package "ROSSERIAL_MSGS")))
(unless (find-package "ROSSERIAL_MSGS::REQUESTSERVICEINFO")
  (make-package "ROSSERIAL_MSGS::REQUESTSERVICEINFO"))
(unless (find-package "ROSSERIAL_MSGS::REQUESTSERVICEINFOREQUEST")
  (make-package "ROSSERIAL_MSGS::REQUESTSERVICEINFOREQUEST"))
(unless (find-package "ROSSERIAL_MSGS::REQUESTSERVICEINFORESPONSE")
  (make-package "ROSSERIAL_MSGS::REQUESTSERVICEINFORESPONSE"))

(in-package "ROS")





(defclass rosserial_msgs::RequestServiceInfoRequest
  :super ros::object
  :slots (_service ))

(defmethod rosserial_msgs::RequestServiceInfoRequest
  (:init
   (&key
    ((:service __service) "")
    )
   (send-super :init)
   (setq _service (string __service))
   self)
  (:service
   (&optional __service)
   (if __service (setq _service __service)) _service)
  (:serialization-length
   ()
   (+
    ;; string _service
    4 (length _service)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _service
       (write-long (length _service) s) (princ _service s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _service
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _service (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosserial_msgs::RequestServiceInfoResponse
  :super ros::object
  :slots (_service_md5 _request_md5 _response_md5 ))

(defmethod rosserial_msgs::RequestServiceInfoResponse
  (:init
   (&key
    ((:service_md5 __service_md5) "")
    ((:request_md5 __request_md5) "")
    ((:response_md5 __response_md5) "")
    )
   (send-super :init)
   (setq _service_md5 (string __service_md5))
   (setq _request_md5 (string __request_md5))
   (setq _response_md5 (string __response_md5))
   self)
  (:service_md5
   (&optional __service_md5)
   (if __service_md5 (setq _service_md5 __service_md5)) _service_md5)
  (:request_md5
   (&optional __request_md5)
   (if __request_md5 (setq _request_md5 __request_md5)) _request_md5)
  (:response_md5
   (&optional __response_md5)
   (if __response_md5 (setq _response_md5 __response_md5)) _response_md5)
  (:serialization-length
   ()
   (+
    ;; string _service_md5
    4 (length _service_md5)
    ;; string _request_md5
    4 (length _request_md5)
    ;; string _response_md5
    4 (length _response_md5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _service_md5
       (write-long (length _service_md5) s) (princ _service_md5 s)
     ;; string _request_md5
       (write-long (length _request_md5) s) (princ _request_md5 s)
     ;; string _response_md5
       (write-long (length _response_md5) s) (princ _response_md5 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _service_md5
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _service_md5 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _request_md5
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request_md5 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _response_md5
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response_md5 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosserial_msgs::RequestServiceInfo
  :super ros::object
  :slots ())

(setf (get rosserial_msgs::RequestServiceInfo :md5sum-) "0961604b984b94b0b68e8074882be071")
(setf (get rosserial_msgs::RequestServiceInfo :datatype-) "rosserial_msgs/RequestServiceInfo")
(setf (get rosserial_msgs::RequestServiceInfo :request) rosserial_msgs::RequestServiceInfoRequest)
(setf (get rosserial_msgs::RequestServiceInfo :response) rosserial_msgs::RequestServiceInfoResponse)

(defmethod rosserial_msgs::RequestServiceInfoRequest
  (:response () (instance rosserial_msgs::RequestServiceInfoResponse :init)))

(setf (get rosserial_msgs::RequestServiceInfoRequest :md5sum-) "0961604b984b94b0b68e8074882be071")
(setf (get rosserial_msgs::RequestServiceInfoRequest :datatype-) "rosserial_msgs/RequestServiceInfoRequest")
(setf (get rosserial_msgs::RequestServiceInfoRequest :definition-)
      "
string service
---
string service_md5
string request_md5
string response_md5

")

(setf (get rosserial_msgs::RequestServiceInfoResponse :md5sum-) "0961604b984b94b0b68e8074882be071")
(setf (get rosserial_msgs::RequestServiceInfoResponse :datatype-) "rosserial_msgs/RequestServiceInfoResponse")
(setf (get rosserial_msgs::RequestServiceInfoResponse :definition-)
      "
string service
---
string service_md5
string request_md5
string response_md5

")



(provide :rosserial_msgs/RequestServiceInfo "0961604b984b94b0b68e8074882be071")


