;; Auto-generated. Do not edit!


(when (boundp 'rosserial_mbed::Test)
  (if (not (find-package "ROSSERIAL_MBED"))
    (make-package "ROSSERIAL_MBED"))
  (shadow 'Test (find-package "ROSSERIAL_MBED")))
(unless (find-package "ROSSERIAL_MBED::TEST")
  (make-package "ROSSERIAL_MBED::TEST"))
(unless (find-package "ROSSERIAL_MBED::TESTREQUEST")
  (make-package "ROSSERIAL_MBED::TESTREQUEST"))
(unless (find-package "ROSSERIAL_MBED::TESTRESPONSE")
  (make-package "ROSSERIAL_MBED::TESTRESPONSE"))

(in-package "ROS")





(defclass rosserial_mbed::TestRequest
  :super ros::object
  :slots (_input ))

(defmethod rosserial_mbed::TestRequest
  (:init
   (&key
    ((:input __input) "")
    )
   (send-super :init)
   (setq _input (string __input))
   self)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:serialization-length
   ()
   (+
    ;; string _input
    4 (length _input)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _input
       (write-long (length _input) s) (princ _input s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _input
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosserial_mbed::TestResponse
  :super ros::object
  :slots (_output ))

(defmethod rosserial_mbed::TestResponse
  (:init
   (&key
    ((:output __output) "")
    )
   (send-super :init)
   (setq _output (string __output))
   self)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:serialization-length
   ()
   (+
    ;; string _output
    4 (length _output)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _output
       (write-long (length _output) s) (princ _output s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _output
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosserial_mbed::Test
  :super ros::object
  :slots ())

(setf (get rosserial_mbed::Test :md5sum-) "c63e85f503b805d84df783e71c6bb0d2")
(setf (get rosserial_mbed::Test :datatype-) "rosserial_mbed/Test")
(setf (get rosserial_mbed::Test :request) rosserial_mbed::TestRequest)
(setf (get rosserial_mbed::Test :response) rosserial_mbed::TestResponse)

(defmethod rosserial_mbed::TestRequest
  (:response () (instance rosserial_mbed::TestResponse :init)))

(setf (get rosserial_mbed::TestRequest :md5sum-) "c63e85f503b805d84df783e71c6bb0d2")
(setf (get rosserial_mbed::TestRequest :datatype-) "rosserial_mbed/TestRequest")
(setf (get rosserial_mbed::TestRequest :definition-)
      "string input
---
string output

")

(setf (get rosserial_mbed::TestResponse :md5sum-) "c63e85f503b805d84df783e71c6bb0d2")
(setf (get rosserial_mbed::TestResponse :datatype-) "rosserial_mbed/TestResponse")
(setf (get rosserial_mbed::TestResponse :definition-)
      "string input
---
string output

")



(provide :rosserial_mbed/Test "c63e85f503b805d84df783e71c6bb0d2")


