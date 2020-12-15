
(cl:in-package :asdf)

(defsystem "grasp-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "data" :depends-on ("_package_data"))
    (:file "_package_data" :depends-on ("_package"))
  ))