; Auto-generated. Do not edit!


(cl:in-package ur_control-srv)


;//! \htmlinclude RG2_Grip-request.msg.html

(cl:defclass <RG2_Grip-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RG2_Grip-request (<RG2_Grip-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RG2_Grip-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RG2_Grip-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_control-srv:<RG2_Grip-request> is deprecated: use ur_control-srv:RG2_Grip-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RG2_Grip-request>) ostream)
  "Serializes a message object of type '<RG2_Grip-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RG2_Grip-request>) istream)
  "Deserializes a message object of type '<RG2_Grip-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RG2_Grip-request>)))
  "Returns string type for a service object of type '<RG2_Grip-request>"
  "ur_control/RG2_GripRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RG2_Grip-request)))
  "Returns string type for a service object of type 'RG2_Grip-request"
  "ur_control/RG2_GripRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RG2_Grip-request>)))
  "Returns md5sum for a message object of type '<RG2_Grip-request>"
  "e59cc69aa535dfedb8f29528fe2a1de3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RG2_Grip-request)))
  "Returns md5sum for a message object of type 'RG2_Grip-request"
  "e59cc69aa535dfedb8f29528fe2a1de3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RG2_Grip-request>)))
  "Returns full string definition for message of type '<RG2_Grip-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RG2_Grip-request)))
  "Returns full string definition for message of type 'RG2_Grip-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RG2_Grip-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RG2_Grip-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RG2_Grip-request
))
;//! \htmlinclude RG2_Grip-response.msg.html

(cl:defclass <RG2_Grip-response> (roslisp-msg-protocol:ros-message)
  ((gripped
    :reader gripped
    :initarg :gripped
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RG2_Grip-response (<RG2_Grip-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RG2_Grip-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RG2_Grip-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_control-srv:<RG2_Grip-response> is deprecated: use ur_control-srv:RG2_Grip-response instead.")))

(cl:ensure-generic-function 'gripped-val :lambda-list '(m))
(cl:defmethod gripped-val ((m <RG2_Grip-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_control-srv:gripped-val is deprecated.  Use ur_control-srv:gripped instead.")
  (gripped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RG2_Grip-response>) ostream)
  "Serializes a message object of type '<RG2_Grip-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gripped) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RG2_Grip-response>) istream)
  "Deserializes a message object of type '<RG2_Grip-response>"
    (cl:setf (cl:slot-value msg 'gripped) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RG2_Grip-response>)))
  "Returns string type for a service object of type '<RG2_Grip-response>"
  "ur_control/RG2_GripResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RG2_Grip-response)))
  "Returns string type for a service object of type 'RG2_Grip-response"
  "ur_control/RG2_GripResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RG2_Grip-response>)))
  "Returns md5sum for a message object of type '<RG2_Grip-response>"
  "e59cc69aa535dfedb8f29528fe2a1de3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RG2_Grip-response)))
  "Returns md5sum for a message object of type 'RG2_Grip-response"
  "e59cc69aa535dfedb8f29528fe2a1de3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RG2_Grip-response>)))
  "Returns full string definition for message of type '<RG2_Grip-response>"
  (cl:format cl:nil "bool gripped~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RG2_Grip-response)))
  "Returns full string definition for message of type 'RG2_Grip-response"
  (cl:format cl:nil "bool gripped~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RG2_Grip-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RG2_Grip-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RG2_Grip-response
    (cl:cons ':gripped (gripped msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RG2_Grip)))
  'RG2_Grip-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RG2_Grip)))
  'RG2_Grip-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RG2_Grip)))
  "Returns string type for a service object of type '<RG2_Grip>"
  "ur_control/RG2_Grip")