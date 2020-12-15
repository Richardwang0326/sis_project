;; Auto-generated. Do not edit!


(when (boundp 'astar::GoToPos)
  (if (not (find-package "ASTAR"))
    (make-package "ASTAR"))
  (shadow 'GoToPos (find-package "ASTAR")))
(unless (find-package "ASTAR::GOTOPOS")
  (make-package "ASTAR::GOTOPOS"))
(unless (find-package "ASTAR::GOTOPOSREQUEST")
  (make-package "ASTAR::GOTOPOSREQUEST"))
(unless (find-package "ASTAR::GOTOPOSRESPONSE")
  (make-package "ASTAR::GOTOPOSRESPONSE"))

(in-package "ROS")





(defclass astar::GoToPosRequest
  :super ros::object
  :slots (_pos ))

(defmethod astar::GoToPosRequest
  (:init
   (&key
    ((:pos __pos) 0)
    )
   (send-super :init)
   (setq _pos (round __pos))
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:serialization-length
   ()
   (+
    ;; int8 _pos
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _pos
       (write-byte _pos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _pos
     (setq _pos (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pos 127) (setq _pos (- _pos 256)))
   ;;
   self)
  )

(defclass astar::GoToPosResponse
  :super ros::object
  :slots (_result ))

(defmethod astar::GoToPosResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass astar::GoToPos
  :super ros::object
  :slots ())

(setf (get astar::GoToPos :md5sum-) "c4572a94d2113bac1ddcbfd514e67b1a")
(setf (get astar::GoToPos :datatype-) "astar/GoToPos")
(setf (get astar::GoToPos :request) astar::GoToPosRequest)
(setf (get astar::GoToPos :response) astar::GoToPosResponse)

(defmethod astar::GoToPosRequest
  (:response () (instance astar::GoToPosResponse :init)))

(setf (get astar::GoToPosRequest :md5sum-) "c4572a94d2113bac1ddcbfd514e67b1a")
(setf (get astar::GoToPosRequest :datatype-) "astar/GoToPosRequest")
(setf (get astar::GoToPosRequest :definition-)
      "
int8 pos
---

bool result
")

(setf (get astar::GoToPosResponse :md5sum-) "c4572a94d2113bac1ddcbfd514e67b1a")
(setf (get astar::GoToPosResponse :datatype-) "astar/GoToPosResponse")
(setf (get astar::GoToPosResponse :definition-)
      "
int8 pos
---

bool result
")



(provide :astar/GoToPos "c4572a94d2113bac1ddcbfd514e67b1a")


