;; Auto-generated. Do not edit!


(when (boundp 'rosserial_msgs::TopicInfo)
  (if (not (find-package "ROSSERIAL_MSGS"))
    (make-package "ROSSERIAL_MSGS"))
  (shadow 'TopicInfo (find-package "ROSSERIAL_MSGS")))
(unless (find-package "ROSSERIAL_MSGS::TOPICINFO")
  (make-package "ROSSERIAL_MSGS::TOPICINFO"))

(in-package "ROS")
;;//! \htmlinclude TopicInfo.msg.html


(intern "*ID_PUBLISHER*" (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(shadow '*ID_PUBLISHER* (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(defconstant rosserial_msgs::TopicInfo::*ID_PUBLISHER* 0)
(intern "*ID_SUBSCRIBER*" (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(shadow '*ID_SUBSCRIBER* (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(defconstant rosserial_msgs::TopicInfo::*ID_SUBSCRIBER* 1)
(intern "*ID_SERVICE_SERVER*" (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(shadow '*ID_SERVICE_SERVER* (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(defconstant rosserial_msgs::TopicInfo::*ID_SERVICE_SERVER* 2)
(intern "*ID_SERVICE_CLIENT*" (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(shadow '*ID_SERVICE_CLIENT* (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(defconstant rosserial_msgs::TopicInfo::*ID_SERVICE_CLIENT* 4)
(intern "*ID_PARAMETER_REQUEST*" (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(shadow '*ID_PARAMETER_REQUEST* (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(defconstant rosserial_msgs::TopicInfo::*ID_PARAMETER_REQUEST* 6)
(intern "*ID_LOG*" (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(shadow '*ID_LOG* (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(defconstant rosserial_msgs::TopicInfo::*ID_LOG* 7)
(intern "*ID_TIME*" (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(shadow '*ID_TIME* (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(defconstant rosserial_msgs::TopicInfo::*ID_TIME* 10)
(intern "*ID_TX_STOP*" (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(shadow '*ID_TX_STOP* (find-package "ROSSERIAL_MSGS::TOPICINFO"))
(defconstant rosserial_msgs::TopicInfo::*ID_TX_STOP* 11)
(defclass rosserial_msgs::TopicInfo
  :super ros::object
  :slots (_topic_id _topic_name _message_type _md5sum _buffer_size ))

(defmethod rosserial_msgs::TopicInfo
  (:init
   (&key
    ((:topic_id __topic_id) 0)
    ((:topic_name __topic_name) "")
    ((:message_type __message_type) "")
    ((:md5sum __md5sum) "")
    ((:buffer_size __buffer_size) 0)
    )
   (send-super :init)
   (setq _topic_id (round __topic_id))
   (setq _topic_name (string __topic_name))
   (setq _message_type (string __message_type))
   (setq _md5sum (string __md5sum))
   (setq _buffer_size (round __buffer_size))
   self)
  (:topic_id
   (&optional __topic_id)
   (if __topic_id (setq _topic_id __topic_id)) _topic_id)
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:message_type
   (&optional __message_type)
   (if __message_type (setq _message_type __message_type)) _message_type)
  (:md5sum
   (&optional __md5sum)
   (if __md5sum (setq _md5sum __md5sum)) _md5sum)
  (:buffer_size
   (&optional __buffer_size)
   (if __buffer_size (setq _buffer_size __buffer_size)) _buffer_size)
  (:serialization-length
   ()
   (+
    ;; uint16 _topic_id
    2
    ;; string _topic_name
    4 (length _topic_name)
    ;; string _message_type
    4 (length _message_type)
    ;; string _md5sum
    4 (length _md5sum)
    ;; int32 _buffer_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _topic_id
       (write-word _topic_id s)
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;; string _message_type
       (write-long (length _message_type) s) (princ _message_type s)
     ;; string _md5sum
       (write-long (length _md5sum) s) (princ _md5sum s)
     ;; int32 _buffer_size
       (write-long _buffer_size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _topic_id
     (setq _topic_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _md5sum
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _md5sum (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _buffer_size
     (setq _buffer_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rosserial_msgs::TopicInfo :md5sum-) "0ad51f88fc44892f8c10684077646005")
(setf (get rosserial_msgs::TopicInfo :datatype-) "rosserial_msgs/TopicInfo")
(setf (get rosserial_msgs::TopicInfo :definition-)
      "# special topic_ids
uint16 ID_PUBLISHER=0
uint16 ID_SUBSCRIBER=1
uint16 ID_SERVICE_SERVER=2
uint16 ID_SERVICE_CLIENT=4
uint16 ID_PARAMETER_REQUEST=6
uint16 ID_LOG=7
uint16 ID_TIME=10
uint16 ID_TX_STOP=11

# The endpoint ID for this topic
uint16 topic_id

string topic_name
string message_type

# MD5 checksum for this message type
string md5sum

# size of the buffer message must fit in
int32 buffer_size

")



(provide :rosserial_msgs/TopicInfo "0ad51f88fc44892f8c10684077646005")


