; Auto-generated. Do not edit!


(cl:in-package my_custom_srv_msg_pkg-srv)


;//! \htmlinclude MyCustomServiceMessage-request.msg.html

(cl:defclass <MyCustomServiceMessage-request> (roslisp-msg-protocol:ros-message)
  ((duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0))
)

(cl:defclass MyCustomServiceMessage-request (<MyCustomServiceMessage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MyCustomServiceMessage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MyCustomServiceMessage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_custom_srv_msg_pkg-srv:<MyCustomServiceMessage-request> is deprecated: use my_custom_srv_msg_pkg-srv:MyCustomServiceMessage-request instead.")))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <MyCustomServiceMessage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_srv_msg_pkg-srv:duration-val is deprecated.  Use my_custom_srv_msg_pkg-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MyCustomServiceMessage-request>) ostream)
  "Serializes a message object of type '<MyCustomServiceMessage-request>"
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MyCustomServiceMessage-request>) istream)
  "Deserializes a message object of type '<MyCustomServiceMessage-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MyCustomServiceMessage-request>)))
  "Returns string type for a service object of type '<MyCustomServiceMessage-request>"
  "my_custom_srv_msg_pkg/MyCustomServiceMessageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyCustomServiceMessage-request)))
  "Returns string type for a service object of type 'MyCustomServiceMessage-request"
  "my_custom_srv_msg_pkg/MyCustomServiceMessageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MyCustomServiceMessage-request>)))
  "Returns md5sum for a message object of type '<MyCustomServiceMessage-request>"
  "b92c952a9248b3029cefe45f52f6ffde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MyCustomServiceMessage-request)))
  "Returns md5sum for a message object of type 'MyCustomServiceMessage-request"
  "b92c952a9248b3029cefe45f52f6ffde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MyCustomServiceMessage-request>)))
  "Returns full string definition for message of type '<MyCustomServiceMessage-request>"
  (cl:format cl:nil "int32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MyCustomServiceMessage-request)))
  "Returns full string definition for message of type 'MyCustomServiceMessage-request"
  (cl:format cl:nil "int32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MyCustomServiceMessage-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MyCustomServiceMessage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MyCustomServiceMessage-request
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude MyCustomServiceMessage-response.msg.html

(cl:defclass <MyCustomServiceMessage-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MyCustomServiceMessage-response (<MyCustomServiceMessage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MyCustomServiceMessage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MyCustomServiceMessage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_custom_srv_msg_pkg-srv:<MyCustomServiceMessage-response> is deprecated: use my_custom_srv_msg_pkg-srv:MyCustomServiceMessage-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MyCustomServiceMessage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_custom_srv_msg_pkg-srv:success-val is deprecated.  Use my_custom_srv_msg_pkg-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MyCustomServiceMessage-response>) ostream)
  "Serializes a message object of type '<MyCustomServiceMessage-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MyCustomServiceMessage-response>) istream)
  "Deserializes a message object of type '<MyCustomServiceMessage-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MyCustomServiceMessage-response>)))
  "Returns string type for a service object of type '<MyCustomServiceMessage-response>"
  "my_custom_srv_msg_pkg/MyCustomServiceMessageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyCustomServiceMessage-response)))
  "Returns string type for a service object of type 'MyCustomServiceMessage-response"
  "my_custom_srv_msg_pkg/MyCustomServiceMessageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MyCustomServiceMessage-response>)))
  "Returns md5sum for a message object of type '<MyCustomServiceMessage-response>"
  "b92c952a9248b3029cefe45f52f6ffde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MyCustomServiceMessage-response)))
  "Returns md5sum for a message object of type 'MyCustomServiceMessage-response"
  "b92c952a9248b3029cefe45f52f6ffde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MyCustomServiceMessage-response>)))
  "Returns full string definition for message of type '<MyCustomServiceMessage-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MyCustomServiceMessage-response)))
  "Returns full string definition for message of type 'MyCustomServiceMessage-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MyCustomServiceMessage-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MyCustomServiceMessage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MyCustomServiceMessage-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MyCustomServiceMessage)))
  'MyCustomServiceMessage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MyCustomServiceMessage)))
  'MyCustomServiceMessage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyCustomServiceMessage)))
  "Returns string type for a service object of type '<MyCustomServiceMessage>"
  "my_custom_srv_msg_pkg/MyCustomServiceMessage")