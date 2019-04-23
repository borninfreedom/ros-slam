;; Auto-generated. Do not edit!


(when (boundp 'rosserial_arduino::Test)
  (if (not (find-package "ROSSERIAL_ARDUINO"))
    (make-package "ROSSERIAL_ARDUINO"))
  (shadow 'Test (find-package "ROSSERIAL_ARDUINO")))
(unless (find-package "ROSSERIAL_ARDUINO::TEST")
  (make-package "ROSSERIAL_ARDUINO::TEST"))
(unless (find-package "ROSSERIAL_ARDUINO::TESTREQUEST")
  (make-package "ROSSERIAL_ARDUINO::TESTREQUEST"))
(unless (find-package "ROSSERIAL_ARDUINO::TESTRESPONSE")
  (make-package "ROSSERIAL_ARDUINO::TESTRESPONSE"))

(in-package "ROS")





(defclass rosserial_arduino::TestRequest
  :super ros::object
  :slots (_input ))

(defmethod rosserial_arduino::TestRequest
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

(defclass rosserial_arduino::TestResponse
  :super ros::object
  :slots (_output ))

(defmethod rosserial_arduino::TestResponse
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

(defclass rosserial_arduino::Test
  :super ros::object
  :slots ())

(setf (get rosserial_arduino::Test :md5sum-) "c63e85f503b805d84df783e71c6bb0d2")
(setf (get rosserial_arduino::Test :datatype-) "rosserial_arduino/Test")
(setf (get rosserial_arduino::Test :request) rosserial_arduino::TestRequest)
(setf (get rosserial_arduino::Test :response) rosserial_arduino::TestResponse)

(defmethod rosserial_arduino::TestRequest
  (:response () (instance rosserial_arduino::TestResponse :init)))

(setf (get rosserial_arduino::TestRequest :md5sum-) "c63e85f503b805d84df783e71c6bb0d2")
(setf (get rosserial_arduino::TestRequest :datatype-) "rosserial_arduino/TestRequest")
(setf (get rosserial_arduino::TestRequest :definition-)
      "string input
---
string output

")

(setf (get rosserial_arduino::TestResponse :md5sum-) "c63e85f503b805d84df783e71c6bb0d2")
(setf (get rosserial_arduino::TestResponse :datatype-) "rosserial_arduino/TestResponse")
(setf (get rosserial_arduino::TestResponse :definition-)
      "string input
---
string output

")



(provide :rosserial_arduino/Test "c63e85f503b805d84df783e71c6bb0d2")


