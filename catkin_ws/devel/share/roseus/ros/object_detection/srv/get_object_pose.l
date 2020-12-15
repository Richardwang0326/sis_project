;; Auto-generated. Do not edit!


(when (boundp 'object_detection::get_object_pose)
  (if (not (find-package "OBJECT_DETECTION"))
    (make-package "OBJECT_DETECTION"))
  (shadow 'get_object_pose (find-package "OBJECT_DETECTION")))
(unless (find-package "OBJECT_DETECTION::GET_OBJECT_POSE")
  (make-package "OBJECT_DETECTION::GET_OBJECT_POSE"))
(unless (find-package "OBJECT_DETECTION::GET_OBJECT_POSEREQUEST")
  (make-package "OBJECT_DETECTION::GET_OBJECT_POSEREQUEST"))
(unless (find-package "OBJECT_DETECTION::GET_OBJECT_POSERESPONSE")
  (make-package "OBJECT_DETECTION::GET_OBJECT_POSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass object_detection::get_object_poseRequest
  :super ros::object
  :slots ())

(defmethod object_detection::get_object_poseRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass object_detection::get_object_poseResponse
  :super ros::object
  :slots (_pose ))

(defmethod object_detection::get_object_poseResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
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
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass object_detection::get_object_pose
  :super ros::object
  :slots ())

(setf (get object_detection::get_object_pose :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get object_detection::get_object_pose :datatype-) "object_detection/get_object_pose")
(setf (get object_detection::get_object_pose :request) object_detection::get_object_poseRequest)
(setf (get object_detection::get_object_pose :response) object_detection::get_object_poseResponse)

(defmethod object_detection::get_object_poseRequest
  (:response () (instance object_detection::get_object_poseResponse :init)))

(setf (get object_detection::get_object_poseRequest :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get object_detection::get_object_poseRequest :datatype-) "object_detection/get_object_poseRequest")
(setf (get object_detection::get_object_poseRequest :definition-)
      "---
geometry_msgs/Pose pose

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

(setf (get object_detection::get_object_poseResponse :md5sum-) "f192399f711a48924df9a394d37edd67")
(setf (get object_detection::get_object_poseResponse :datatype-) "object_detection/get_object_poseResponse")
(setf (get object_detection::get_object_poseResponse :definition-)
      "---
geometry_msgs/Pose pose

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



(provide :object_detection/get_object_pose "f192399f711a48924df9a394d37edd67")


