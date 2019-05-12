
(cl:in-package :asdf)

(defsystem "robot_pose_ekf-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetStatus" :depends-on ("_package_GetStatus"))
    (:file "_package_GetStatus" :depends-on ("_package"))
  ))