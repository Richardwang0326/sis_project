;; Auto-generated. Do not edit!


(when (boundp 'object_detection::get_mask)
  (if (not (find-package "OBJECT_DETECTION"))
    (make-package "OBJECT_DETECTION"))
  (shadow 'get_mask (find-package "OBJECT_DETECTION")))
(unless (find-package "OBJECT_DETECTION::GET_MASK")
  (make-package "OBJECT_DETECTION::GET_MASK"))
(unless (find-package "OBJECT_DETECTION::GET_MASKREQUEST")
  (make-package "OBJECT_DETECTION::GET_MASKREQUEST"))
(unless (find-package "OBJECT_DETECTION::GET_MASKRESPONSE")
  (make-package "OBJECT_DETECTION::GET_MASKRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass object_detection::get_maskRequest
  :super ros::object
  :slots ())

(defmethod object_detection::get_maskRequest
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

(defclass object_detection::get_maskResponse
  :super ros::object
  :slots (_mask_cloud ))

(defmethod object_detection::get_maskResponse
  (:init
   (&key
    ((:mask_cloud __mask_cloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _mask_cloud __mask_cloud)
   self)
  (:mask_cloud
   (&rest __mask_cloud)
   (if (keywordp (car __mask_cloud))
       (send* _mask_cloud __mask_cloud)
     (progn
       (if __mask_cloud (setq _mask_cloud (car __mask_cloud)))
       _mask_cloud)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _mask_cloud
    (send _mask_cloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _mask_cloud
       (send _mask_cloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _mask_cloud
     (send _mask_cloud :deserialize buf ptr-) (incf ptr- (send _mask_cloud :serialization-length))
   ;;
   self)
  )

(defclass object_detection::get_mask
  :super ros::object
  :slots ())

(setf (get object_detection::get_mask :md5sum-) "94d4ff6c19cb75835eb16aafc2cfe0e8")
(setf (get object_detection::get_mask :datatype-) "object_detection/get_mask")
(setf (get object_detection::get_mask :request) object_detection::get_maskRequest)
(setf (get object_detection::get_mask :response) object_detection::get_maskResponse)

(defmethod object_detection::get_maskRequest
  (:response () (instance object_detection::get_maskResponse :init)))

(setf (get object_detection::get_maskRequest :md5sum-) "94d4ff6c19cb75835eb16aafc2cfe0e8")
(setf (get object_detection::get_maskRequest :datatype-) "object_detection/get_maskRequest")
(setf (get object_detection::get_maskRequest :definition-)
      "---
sensor_msgs/PointCloud2 mask_cloud

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
")

(setf (get object_detection::get_maskResponse :md5sum-) "94d4ff6c19cb75835eb16aafc2cfe0e8")
(setf (get object_detection::get_maskResponse :datatype-) "object_detection/get_maskResponse")
(setf (get object_detection::get_maskResponse :definition-)
      "---
sensor_msgs/PointCloud2 mask_cloud

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
")



(provide :object_detection/get_mask "94d4ff6c19cb75835eb16aafc2cfe0e8")


