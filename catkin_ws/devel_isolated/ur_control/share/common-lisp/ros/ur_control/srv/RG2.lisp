; Auto-generated. Do not edit!


(cl:in-package ur_control-srv)


;//! \htmlinclude RG2-request.msg.html

(cl:defclass <RG2-request> (roslisp-msg-protocol:ros-message)
  ((target_width
    :reader target_width
    :initarg :target_width
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass RG2-request (<RG2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RG2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RG2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_control-srv:<RG2-request> is deprecated: use ur_control-srv:RG2-request instead.")))

(cl:ensure-generic-function 'target_width-val :lambda-list '(m))
(cl:defmethod target_width-val ((m <RG2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_control-srv:target_width-val is deprecated.  Use ur_control-srv:target_width instead.")
  (target_width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RG2-request>) ostream)
  "Serializes a message object of type '<RG2-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_width) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RG2-request>) istream)
  "Deserializes a message object of type '<RG2-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_width) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RG2-request>)))
  "Returns string type for a service object of type '<RG2-request>"
  "ur_control/RG2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RG2-request)))
  "Returns string type for a service object of type 'RG2-request"
  "ur_control/RG2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RG2-request>)))
  "Returns md5sum for a message object of type '<RG2-request>"
  "e9f43d43d0606566dbbf901fbd3b24a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RG2-request)))
  "Returns md5sum for a message object of type 'RG2-request"
  "e9f43d43d0606566dbbf901fbd3b24a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RG2-request>)))
  "Returns full string definition for message of type '<RG2-request>"
  (cl:format cl:nil "~%std_msgs/Float64 target_width~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RG2-request)))
  "Returns full string definition for message of type 'RG2-request"
  (cl:format cl:nil "~%std_msgs/Float64 target_width~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RG2-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_width))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RG2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RG2-request
    (cl:cons ':target_width (target_width msg))
))
;//! \htmlinclude RG2-response.msg.html

(cl:defclass <RG2-response> (roslisp-msg-protocol:ros-message)
  ((current_width
    :reader current_width
    :initarg :current_width
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass RG2-response (<RG2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RG2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RG2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur_control-srv:<RG2-response> is deprecated: use ur_control-srv:RG2-response instead.")))

(cl:ensure-generic-function 'current_width-val :lambda-list '(m))
(cl:defmethod current_width-val ((m <RG2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur_control-srv:current_width-val is deprecated.  Use ur_control-srv:current_width instead.")
  (current_width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RG2-response>) ostream)
  "Serializes a message object of type '<RG2-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_width) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RG2-response>) istream)
  "Deserializes a message object of type '<RG2-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_width) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RG2-response>)))
  "Returns string type for a service object of type '<RG2-response>"
  "ur_control/RG2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RG2-response)))
  "Returns string type for a service object of type 'RG2-response"
  "ur_control/RG2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RG2-response>)))
  "Returns md5sum for a message object of type '<RG2-response>"
  "e9f43d43d0606566dbbf901fbd3b24a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RG2-response)))
  "Returns md5sum for a message object of type 'RG2-response"
  "e9f43d43d0606566dbbf901fbd3b24a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RG2-response>)))
  "Returns full string definition for message of type '<RG2-response>"
  (cl:format cl:nil "std_msgs/Float64 current_width~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RG2-response)))
  "Returns full string definition for message of type 'RG2-response"
  (cl:format cl:nil "std_msgs/Float64 current_width~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RG2-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_width))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RG2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RG2-response
    (cl:cons ':current_width (current_width msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RG2)))
  'RG2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RG2)))
  'RG2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RG2)))
  "Returns string type for a service object of type '<RG2>"
  "ur_control/RG2")