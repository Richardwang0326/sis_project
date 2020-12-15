
(cl:in-package :asdf)

(defsystem "place-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "place_data" :depends-on ("_package_place_data"))
    (:file "_package_place_data" :depends-on ("_package"))
  ))