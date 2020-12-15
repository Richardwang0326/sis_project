
(cl:in-package :asdf)

(defsystem "object_detection-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "get_mask" :depends-on ("_package_get_mask"))
    (:file "_package_get_mask" :depends-on ("_package"))
    (:file "get_object_pose" :depends-on ("_package_get_object_pose"))
    (:file "_package_get_object_pose" :depends-on ("_package"))
  ))