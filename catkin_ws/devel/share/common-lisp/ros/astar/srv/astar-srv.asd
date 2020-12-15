
(cl:in-package :asdf)

(defsystem "astar-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GoToPos" :depends-on ("_package_GoToPos"))
    (:file "_package_GoToPos" :depends-on ("_package"))
  ))