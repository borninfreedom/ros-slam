;; Auto-generated. Do not edit!


(when (boundp 'navfn::SetCostmap)
  (if (not (find-package "NAVFN"))
    (make-package "NAVFN"))
  (shadow 'SetCostmap (find-package "NAVFN")))
(unless (find-package "NAVFN::SETCOSTMAP")
  (make-package "NAVFN::SETCOSTMAP"))
(unless (find-package "NAVFN::SETCOSTMAPREQUEST")
  (make-package "NAVFN::SETCOSTMAPREQUEST"))
(unless (find-package "NAVFN::SETCOSTMAPRESPONSE")
  (make-package "NAVFN::SETCOSTMAPRESPONSE"))

(in-package "ROS")





(defclass navfn::SetCostmapRequest
  :super ros::object
  :slots (_costs _height _width ))

(defmethod navfn::SetCostmapRequest
  (:init
   (&key
    ((:costs __costs) (make-array 0 :initial-element 0 :element-type :char))
    ((:height __height) 0)
    ((:width __width) 0)
    )
   (send-super :init)
   (setq _costs __costs)
   (setq _height (round __height))
   (setq _width (round __width))
   self)
  (:costs
   (&optional __costs)
   (if __costs (setq _costs __costs)) _costs)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; uint8[] _costs
    (* 1    (length _costs)) 4
    ;; uint16 _height
    2
    ;; uint16 _width
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _costs
     (write-long (length _costs) s)
     (princ _costs s)
     ;; uint16 _height
       (write-word _height s)
     ;; uint16 _width
       (write-word _width s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _costs
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _costs (make-array n :element-type :char))
     (replace _costs buf :start2 ptr-) (incf ptr- n))
   ;; uint16 _height
     (setq _height (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _width
     (setq _width (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass navfn::SetCostmapResponse
  :super ros::object
  :slots ())

(defmethod navfn::SetCostmapResponse
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

(defclass navfn::SetCostmap
  :super ros::object
  :slots ())

(setf (get navfn::SetCostmap :md5sum-) "370ec969cdb71f9cde7c7cbe0d752308")
(setf (get navfn::SetCostmap :datatype-) "navfn/SetCostmap")
(setf (get navfn::SetCostmap :request) navfn::SetCostmapRequest)
(setf (get navfn::SetCostmap :response) navfn::SetCostmapResponse)

(defmethod navfn::SetCostmapRequest
  (:response () (instance navfn::SetCostmapResponse :init)))

(setf (get navfn::SetCostmapRequest :md5sum-) "370ec969cdb71f9cde7c7cbe0d752308")
(setf (get navfn::SetCostmapRequest :datatype-) "navfn/SetCostmapRequest")
(setf (get navfn::SetCostmapRequest :definition-)
      "uint8[] costs
uint16 height
uint16 width
---
")

(setf (get navfn::SetCostmapResponse :md5sum-) "370ec969cdb71f9cde7c7cbe0d752308")
(setf (get navfn::SetCostmapResponse :datatype-) "navfn/SetCostmapResponse")
(setf (get navfn::SetCostmapResponse :definition-)
      "uint8[] costs
uint16 height
uint16 width
---
")



(provide :navfn/SetCostmap "370ec969cdb71f9cde7c7cbe0d752308")


