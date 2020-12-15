
(cl:in-package :asdf)

(defsystem "camera_rotation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "find_plate" :depends-on ("_package_find_plate"))
    (:file "_package_find_plate" :depends-on ("_package"))
  ))