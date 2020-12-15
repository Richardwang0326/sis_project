;; Auto-generated. Do not edit!


(when (boundp 'camera_rotation::find_plate)
  (if (not (find-package "CAMERA_ROTATION"))
    (make-package "CAMERA_ROTATION"))
  (shadow 'find_plate (find-package "CAMERA_ROTATION")))
(unless (find-package "CAMERA_ROTATION::FIND_PLATE")
  (make-package "CAMERA_ROTATION::FIND_PLATE"))
(unless (find-package "CAMERA_ROTATION::FIND_PLATEREQUEST")
  (make-package "CAMERA_ROTATION::FIND_PLATEREQUEST"))
(unless (find-package "CAMERA_ROTATION::FIND_PLATERESPONSE")
  (make-package "CAMERA_ROTATION::FIND_PLATERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass camera_rotation::find_plateRequest
  :super ros::object
  :slots (_plate ))

(defmethod camera_rotation::find_plateRequest
  (:init
   (&key
    ((:plate __plate) 0)
    )
   (send-super :init)
   (setq _plate (round __plate))
   self)
  (:plate
   (&optional __plate)
   (if __plate (setq _plate __plate)) _plate)
  (:serialization-length
   ()
   (+
    ;; int64 _plate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _plate
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _plate (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _plate) (= (length (_plate . bv)) 2)) ;; bignum
              (write-long (ash (elt (_plate . bv) 0) 0) s)
              (write-long (ash (elt (_plate . bv) 1) -1) s))
             ((and (class _plate) (= (length (_plate . bv)) 1)) ;; big1
              (write-long (elt (_plate . bv) 0) s)
              (write-long (if (>= _plate 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _plate s)(write-long (if (>= _plate 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _plate
#+(or :alpha :irix6 :x86_64)
      (setf _plate (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _plate (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass camera_rotation::find_plateResponse
  :super ros::object
  :slots (_result _pose ))

(defmethod camera_rotation::find_plateResponse
  (:init
   (&key
    ((:result __result) "")
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _result (string __result))
   (setq _pose __pose)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass camera_rotation::find_plate
  :super ros::object
  :slots ())

(setf (get camera_rotation::find_plate :md5sum-) "34313b90b4f673269df1457d530d9d5e")
(setf (get camera_rotation::find_plate :datatype-) "camera_rotation/find_plate")
(setf (get camera_rotation::find_plate :request) camera_rotation::find_plateRequest)
(setf (get camera_rotation::find_plate :response) camera_rotation::find_plateResponse)

(defmethod camera_rotation::find_plateRequest
  (:response () (instance camera_rotation::find_plateResponse :init)))

(setf (get camera_rotation::find_plateRequest :md5sum-) "34313b90b4f673269df1457d530d9d5e")
(setf (get camera_rotation::find_plateRequest :datatype-) "camera_rotation/find_plateRequest")
(setf (get camera_rotation::find_plateRequest :definition-)
      "int64 plate
---
string result
geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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
")

(setf (get camera_rotation::find_plateResponse :md5sum-) "34313b90b4f673269df1457d530d9d5e")
(setf (get camera_rotation::find_plateResponse :datatype-) "camera_rotation/find_plateResponse")
(setf (get camera_rotation::find_plateResponse :definition-)
      "int64 plate
---
string result
geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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
")



(provide :camera_rotation/find_plate "34313b90b4f673269df1457d530d9d5e")


