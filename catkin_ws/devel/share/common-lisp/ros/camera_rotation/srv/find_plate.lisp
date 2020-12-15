; Auto-generated. Do not edit!


(cl:in-package camera_rotation-srv)


;//! \htmlinclude find_plate-request.msg.html

(cl:defclass <find_plate-request> (roslisp-msg-protocol:ros-message)
  ((plate
    :reader plate
    :initarg :plate
    :type cl:integer
    :initform 0))
)

(cl:defclass find_plate-request (<find_plate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <find_plate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'find_plate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_rotation-srv:<find_plate-request> is deprecated: use camera_rotation-srv:find_plate-request instead.")))

(cl:ensure-generic-function 'plate-val :lambda-list '(m))
(cl:defmethod plate-val ((m <find_plate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_rotation-srv:plate-val is deprecated.  Use camera_rotation-srv:plate instead.")
  (plate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <find_plate-request>) ostream)
  "Serializes a message object of type '<find_plate-request>"
  (cl:let* ((signed (cl:slot-value msg 'plate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <find_plate-request>) istream)
  "Deserializes a message object of type '<find_plate-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plate) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<find_plate-request>)))
  "Returns string type for a service object of type '<find_plate-request>"
  "camera_rotation/find_plateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'find_plate-request)))
  "Returns string type for a service object of type 'find_plate-request"
  "camera_rotation/find_plateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<find_plate-request>)))
  "Returns md5sum for a message object of type '<find_plate-request>"
  "34313b90b4f673269df1457d530d9d5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'find_plate-request)))
  "Returns md5sum for a message object of type 'find_plate-request"
  "34313b90b4f673269df1457d530d9d5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<find_plate-request>)))
  "Returns full string definition for message of type '<find_plate-request>"
  (cl:format cl:nil "int64 plate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'find_plate-request)))
  "Returns full string definition for message of type 'find_plate-request"
  (cl:format cl:nil "int64 plate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <find_plate-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <find_plate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'find_plate-request
    (cl:cons ':plate (plate msg))
))
;//! \htmlinclude find_plate-response.msg.html

(cl:defclass <find_plate-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass find_plate-response (<find_plate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <find_plate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'find_plate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_rotation-srv:<find_plate-response> is deprecated: use camera_rotation-srv:find_plate-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <find_plate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_rotation-srv:result-val is deprecated.  Use camera_rotation-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <find_plate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_rotation-srv:pose-val is deprecated.  Use camera_rotation-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <find_plate-response>) ostream)
  "Serializes a message object of type '<find_plate-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <find_plate-response>) istream)
  "Deserializes a message object of type '<find_plate-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<find_plate-response>)))
  "Returns string type for a service object of type '<find_plate-response>"
  "camera_rotation/find_plateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'find_plate-response)))
  "Returns string type for a service object of type 'find_plate-response"
  "camera_rotation/find_plateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<find_plate-response>)))
  "Returns md5sum for a message object of type '<find_plate-response>"
  "34313b90b4f673269df1457d530d9d5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'find_plate-response)))
  "Returns md5sum for a message object of type 'find_plate-response"
  "34313b90b4f673269df1457d530d9d5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<find_plate-response>)))
  "Returns full string definition for message of type '<find_plate-response>"
  (cl:format cl:nil "string result~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'find_plate-response)))
  "Returns full string definition for message of type 'find_plate-response"
  (cl:format cl:nil "string result~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <find_plate-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <find_plate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'find_plate-response
    (cl:cons ':result (result msg))
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'find_plate)))
  'find_plate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'find_plate)))
  'find_plate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'find_plate)))
  "Returns string type for a service object of type '<find_plate>"
  "camera_rotation/find_plate")