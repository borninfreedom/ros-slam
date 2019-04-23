;; Auto-generated. Do not edit!


(when (boundp 'rosserial_mbed::Adc)
  (if (not (find-package "ROSSERIAL_MBED"))
    (make-package "ROSSERIAL_MBED"))
  (shadow 'Adc (find-package "ROSSERIAL_MBED")))
(unless (find-package "ROSSERIAL_MBED::ADC")
  (make-package "ROSSERIAL_MBED::ADC"))

(in-package "ROS")
;;//! \htmlinclude Adc.msg.html


(defclass rosserial_mbed::Adc
  :super ros::object
  :slots (_adc0 _adc1 _adc2 _adc3 _adc4 _adc5 ))

(defmethod rosserial_mbed::Adc
  (:init
   (&key
    ((:adc0 __adc0) 0)
    ((:adc1 __adc1) 0)
    ((:adc2 __adc2) 0)
    ((:adc3 __adc3) 0)
    ((:adc4 __adc4) 0)
    ((:adc5 __adc5) 0)
    )
   (send-super :init)
   (setq _adc0 (round __adc0))
   (setq _adc1 (round __adc1))
   (setq _adc2 (round __adc2))
   (setq _adc3 (round __adc3))
   (setq _adc4 (round __adc4))
   (setq _adc5 (round __adc5))
   self)
  (:adc0
   (&optional __adc0)
   (if __adc0 (setq _adc0 __adc0)) _adc0)
  (:adc1
   (&optional __adc1)
   (if __adc1 (setq _adc1 __adc1)) _adc1)
  (:adc2
   (&optional __adc2)
   (if __adc2 (setq _adc2 __adc2)) _adc2)
  (:adc3
   (&optional __adc3)
   (if __adc3 (setq _adc3 __adc3)) _adc3)
  (:adc4
   (&optional __adc4)
   (if __adc4 (setq _adc4 __adc4)) _adc4)
  (:adc5
   (&optional __adc5)
   (if __adc5 (setq _adc5 __adc5)) _adc5)
  (:serialization-length
   ()
   (+
    ;; uint16 _adc0
    2
    ;; uint16 _adc1
    2
    ;; uint16 _adc2
    2
    ;; uint16 _adc3
    2
    ;; uint16 _adc4
    2
    ;; uint16 _adc5
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _adc0
       (write-word _adc0 s)
     ;; uint16 _adc1
       (write-word _adc1 s)
     ;; uint16 _adc2
       (write-word _adc2 s)
     ;; uint16 _adc3
       (write-word _adc3 s)
     ;; uint16 _adc4
       (write-word _adc4 s)
     ;; uint16 _adc5
       (write-word _adc5 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _adc0
     (setq _adc0 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _adc1
     (setq _adc1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _adc2
     (setq _adc2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _adc3
     (setq _adc3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _adc4
     (setq _adc4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _adc5
     (setq _adc5 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rosserial_mbed::Adc :md5sum-) "6d7853a614e2e821319068311f2af25b")
(setf (get rosserial_mbed::Adc :datatype-) "rosserial_mbed/Adc")
(setf (get rosserial_mbed::Adc :definition-)
      "uint16 adc0
uint16 adc1
uint16 adc2
uint16 adc3
uint16 adc4
uint16 adc5

")



(provide :rosserial_mbed/Adc "6d7853a614e2e821319068311f2af25b")


