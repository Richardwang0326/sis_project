; Auto-generated. Do not edit!


(cl:in-package astar-srv)


;//! \htmlinclude GoToPos-request.msg.html

(cl:defclass <GoToPos-request> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GoToPos-request (<GoToPos-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToPos-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToPos-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astar-srv:<GoToPos-request> is deprecated: use astar-srv:GoToPos-request instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <GoToPos-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astar-srv:pos-val is deprecated.  Use astar-srv:pos instead.")
  (pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToPos-request>) ostream)
  "Serializes a message object of type '<GoToPos-request>"
  (cl:let* ((signed (cl:slot-value msg 'pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToPos-request>) istream)
  "Deserializes a message object of type '<GoToPos-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToPos-request>)))
  "Returns string type for a service object of type '<GoToPos-request>"
  "astar/GoToPosRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToPos-request)))
  "Returns string type for a service object of type 'GoToPos-request"
  "astar/GoToPosRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToPos-request>)))
  "Returns md5sum for a message object of type '<GoToPos-request>"
  "c4572a94d2113bac1ddcbfd514e67b1a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToPos-request)))
  "Returns md5sum for a message object of type 'GoToPos-request"
  "c4572a94d2113bac1ddcbfd514e67b1a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToPos-request>)))
  "Returns full string definition for message of type '<GoToPos-request>"
  (cl:format cl:nil "~%int8 pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToPos-request)))
  "Returns full string definition for message of type 'GoToPos-request"
  (cl:format cl:nil "~%int8 pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToPos-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToPos-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToPos-request
    (cl:cons ':pos (pos msg))
))
;//! \htmlinclude GoToPos-response.msg.html

(cl:defclass <GoToPos-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GoToPos-response (<GoToPos-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoToPos-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoToPos-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name astar-srv:<GoToPos-response> is deprecated: use astar-srv:GoToPos-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GoToPos-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader astar-srv:result-val is deprecated.  Use astar-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoToPos-response>) ostream)
  "Serializes a message object of type '<GoToPos-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoToPos-response>) istream)
  "Deserializes a message object of type '<GoToPos-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoToPos-response>)))
  "Returns string type for a service object of type '<GoToPos-response>"
  "astar/GoToPosResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToPos-response)))
  "Returns string type for a service object of type 'GoToPos-response"
  "astar/GoToPosResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoToPos-response>)))
  "Returns md5sum for a message object of type '<GoToPos-response>"
  "c4572a94d2113bac1ddcbfd514e67b1a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoToPos-response)))
  "Returns md5sum for a message object of type 'GoToPos-response"
  "c4572a94d2113bac1ddcbfd514e67b1a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoToPos-response>)))
  "Returns full string definition for message of type '<GoToPos-response>"
  (cl:format cl:nil "~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoToPos-response)))
  "Returns full string definition for message of type 'GoToPos-response"
  (cl:format cl:nil "~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoToPos-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoToPos-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoToPos-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoToPos)))
  'GoToPos-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoToPos)))
  'GoToPos-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoToPos)))
  "Returns string type for a service object of type '<GoToPos>"
  "astar/GoToPos")