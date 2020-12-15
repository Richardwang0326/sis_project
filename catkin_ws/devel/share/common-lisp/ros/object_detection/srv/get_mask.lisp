; Auto-generated. Do not edit!


(cl:in-package object_detection-srv)


;//! \htmlinclude get_mask-request.msg.html

(cl:defclass <get_mask-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_mask-request (<get_mask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_mask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_mask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection-srv:<get_mask-request> is deprecated: use object_detection-srv:get_mask-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_mask-request>) ostream)
  "Serializes a message object of type '<get_mask-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_mask-request>) istream)
  "Deserializes a message object of type '<get_mask-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_mask-request>)))
  "Returns string type for a service object of type '<get_mask-request>"
  "object_detection/get_maskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_mask-request)))
  "Returns string type for a service object of type 'get_mask-request"
  "object_detection/get_maskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_mask-request>)))
  "Returns md5sum for a message object of type '<get_mask-request>"
  "94d4ff6c19cb75835eb16aafc2cfe0e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_mask-request)))
  "Returns md5sum for a message object of type 'get_mask-request"
  "94d4ff6c19cb75835eb16aafc2cfe0e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_mask-request>)))
  "Returns full string definition for message of type '<get_mask-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_mask-request)))
  "Returns full string definition for message of type 'get_mask-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_mask-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_mask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_mask-request
))
;//! \htmlinclude get_mask-response.msg.html

(cl:defclass <get_mask-response> (roslisp-msg-protocol:ros-message)
  ((mask_cloud
    :reader mask_cloud
    :initarg :mask_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass get_mask-response (<get_mask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_mask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_mask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection-srv:<get_mask-response> is deprecated: use object_detection-srv:get_mask-response instead.")))

(cl:ensure-generic-function 'mask_cloud-val :lambda-list '(m))
(cl:defmethod mask_cloud-val ((m <get_mask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection-srv:mask_cloud-val is deprecated.  Use object_detection-srv:mask_cloud instead.")
  (mask_cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_mask-response>) ostream)
  "Serializes a message object of type '<get_mask-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mask_cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_mask-response>) istream)
  "Deserializes a message object of type '<get_mask-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mask_cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_mask-response>)))
  "Returns string type for a service object of type '<get_mask-response>"
  "object_detection/get_maskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_mask-response)))
  "Returns string type for a service object of type 'get_mask-response"
  "object_detection/get_maskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_mask-response>)))
  "Returns md5sum for a message object of type '<get_mask-response>"
  "94d4ff6c19cb75835eb16aafc2cfe0e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_mask-response)))
  "Returns md5sum for a message object of type 'get_mask-response"
  "94d4ff6c19cb75835eb16aafc2cfe0e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_mask-response>)))
  "Returns full string definition for message of type '<get_mask-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 mask_cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_mask-response)))
  "Returns full string definition for message of type 'get_mask-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2 mask_cloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_mask-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mask_cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_mask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_mask-response
    (cl:cons ':mask_cloud (mask_cloud msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_mask)))
  'get_mask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_mask)))
  'get_mask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_mask)))
  "Returns string type for a service object of type '<get_mask>"
  "object_detection/get_mask")