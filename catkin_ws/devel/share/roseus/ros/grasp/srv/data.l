;; Auto-generated. Do not edit!


(when (boundp 'grasp::data)
  (if (not (find-package "GRASP"))
    (make-package "GRASP"))
  (shadow 'data (find-package "GRASP")))
(unless (find-package "GRASP::DATA")
  (make-package "GRASP::DATA"))
(unless (find-package "GRASP::DATAREQUEST")
  (make-package "GRASP::DATAREQUEST"))
(unless (find-package "GRASP::DATARESPONSE")
  (make-package "GRASP::DATARESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass grasp::dataRequest
  :super ros::object
  :slots (_pose _id ))

(defmethod grasp::dataRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _id (round __id))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; int64 _id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; int64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; int64 _id
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass grasp::dataResponse
  :super ros::object
  :slots (_obj_id ))

(defmethod grasp::dataResponse
  (:init
   (&key
    ((:obj_id __obj_id) 0)
    )
   (send-super :init)
   (setq _obj_id (round __obj_id))
   self)
  (:obj_id
   (&optional __obj_id)
   (if __obj_id (setq _obj_id __obj_id)) _obj_id)
  (:serialization-length
   ()
   (+
    ;; int64 _obj_id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _obj_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _obj_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _obj_id) (= (length (_obj_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_obj_id . bv) 0) 0) s)
              (write-long (ash (elt (_obj_id . bv) 1) -1) s))
             ((and (class _obj_id) (= (length (_obj_id . bv)) 1)) ;; big1
              (write-long (elt (_obj_id . bv) 0) s)
              (write-long (if (>= _obj_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _obj_id s)(write-long (if (>= _obj_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _obj_id
#+(or :alpha :irix6 :x86_64)
      (setf _obj_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _obj_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass grasp::data
  :super ros::object
  :slots ())

(setf (get grasp::data :md5sum-) "19190b8de1560dc26185b95bdbc3e5ac")
(setf (get grasp::data :datatype-) "grasp/data")
(setf (get grasp::data :request) grasp::dataRequest)
(setf (get grasp::data :response) grasp::dataResponse)

(defmethod grasp::dataRequest
  (:response () (instance grasp::dataResponse :init)))

(setf (get grasp::dataRequest :md5sum-) "19190b8de1560dc26185b95bdbc3e5ac")
(setf (get grasp::dataRequest :datatype-) "grasp/dataRequest")
(setf (get grasp::dataRequest :definition-)
      "geometry_msgs/Pose pose
int64 id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int64 obj_id

")

(setf (get grasp::dataResponse :md5sum-) "19190b8de1560dc26185b95bdbc3e5ac")
(setf (get grasp::dataResponse :datatype-) "grasp/dataResponse")
(setf (get grasp::dataResponse :definition-)
      "geometry_msgs/Pose pose
int64 id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int64 obj_id

")



(provide :grasp/data "19190b8de1560dc26185b95bdbc3e5ac")


