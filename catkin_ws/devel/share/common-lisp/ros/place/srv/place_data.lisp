; Auto-generated. Do not edit!


(cl:in-package place-srv)


;//! \htmlinclude place_data-request.msg.html

(cl:defclass <place_data-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass place_data-request (<place_data-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <place_data-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'place_data-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name place-srv:<place_data-request> is deprecated: use place-srv:place_data-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <place_data-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader place-srv:pose-val is deprecated.  Use place-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <place_data-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader place-srv:id-val is deprecated.  Use place-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <place_data-request>) ostream)
  "Serializes a message object of type '<place_data-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <place_data-request>) istream)
  "Deserializes a message object of type '<place_data-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<place_data-request>)))
  "Returns string type for a service object of type '<place_data-request>"
  "place/place_dataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'place_data-request)))
  "Returns string type for a service object of type 'place_data-request"
  "place/place_dataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<place_data-request>)))
  "Returns md5sum for a message object of type '<place_data-request>"
  "19190b8de1560dc26185b95bdbc3e5ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'place_data-request)))
  "Returns md5sum for a message object of type 'place_data-request"
  "19190b8de1560dc26185b95bdbc3e5ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<place_data-request>)))
  "Returns full string definition for message of type '<place_data-request>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%int64 id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'place_data-request)))
  "Returns full string definition for message of type 'place_data-request"
  (cl:format cl:nil "geometry_msgs/Pose pose~%int64 id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <place_data-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <place_data-request>))
  "Converts a ROS message object to a list"
  (cl:list 'place_data-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':id (id msg))
))
;//! \htmlinclude place_data-response.msg.html

(cl:defclass <place_data-response> (roslisp-msg-protocol:ros-message)
  ((obj_id
    :reader obj_id
    :initarg :obj_id
    :type cl:integer
    :initform 0))
)

(cl:defclass place_data-response (<place_data-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <place_data-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'place_data-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name place-srv:<place_data-response> is deprecated: use place-srv:place_data-response instead.")))

(cl:ensure-generic-function 'obj_id-val :lambda-list '(m))
(cl:defmethod obj_id-val ((m <place_data-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader place-srv:obj_id-val is deprecated.  Use place-srv:obj_id instead.")
  (obj_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <place_data-response>) ostream)
  "Serializes a message object of type '<place_data-response>"
  (cl:let* ((signed (cl:slot-value msg 'obj_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <place_data-response>) istream)
  "Deserializes a message object of type '<place_data-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obj_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<place_data-response>)))
  "Returns string type for a service object of type '<place_data-response>"
  "place/place_dataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'place_data-response)))
  "Returns string type for a service object of type 'place_data-response"
  "place/place_dataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<place_data-response>)))
  "Returns md5sum for a message object of type '<place_data-response>"
  "19190b8de1560dc26185b95bdbc3e5ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'place_data-response)))
  "Returns md5sum for a message object of type 'place_data-response"
  "19190b8de1560dc26185b95bdbc3e5ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<place_data-response>)))
  "Returns full string definition for message of type '<place_data-response>"
  (cl:format cl:nil "int64 obj_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'place_data-response)))
  "Returns full string definition for message of type 'place_data-response"
  (cl:format cl:nil "int64 obj_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <place_data-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <place_data-response>))
  "Converts a ROS message object to a list"
  (cl:list 'place_data-response
    (cl:cons ':obj_id (obj_id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'place_data)))
  'place_data-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'place_data)))
  'place_data-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'place_data)))
  "Returns string type for a service object of type '<place_data>"
  "place/place_data")