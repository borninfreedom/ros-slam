
(cl:in-package :asdf)

(defsystem "base_local_planner-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Position2DInt" :depends-on ("_package_Position2DInt"))
    (:file "_package_Position2DInt" :depends-on ("_package"))
  ))