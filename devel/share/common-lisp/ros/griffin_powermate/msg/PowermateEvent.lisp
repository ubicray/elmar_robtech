; Auto-generated. Do not edit!


(cl:in-package griffin_powermate-msg)


;//! \htmlinclude PowermateEvent.msg.html

(cl:defclass <PowermateEvent> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0)
   (is_pressed
    :reader is_pressed
    :initarg :is_pressed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PowermateEvent (<PowermateEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowermateEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowermateEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name griffin_powermate-msg:<PowermateEvent> is deprecated: use griffin_powermate-msg:PowermateEvent instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <PowermateEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader griffin_powermate-msg:direction-val is deprecated.  Use griffin_powermate-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PowermateEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader griffin_powermate-msg:value-val is deprecated.  Use griffin_powermate-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'is_pressed-val :lambda-list '(m))
(cl:defmethod is_pressed-val ((m <PowermateEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader griffin_powermate-msg:is_pressed-val is deprecated.  Use griffin_powermate-msg:is_pressed instead.")
  (is_pressed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowermateEvent>) ostream)
  "Serializes a message object of type '<PowermateEvent>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_pressed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowermateEvent>) istream)
  "Deserializes a message object of type '<PowermateEvent>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'is_pressed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowermateEvent>)))
  "Returns string type for a message object of type '<PowermateEvent>"
  "griffin_powermate/PowermateEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowermateEvent)))
  "Returns string type for a message object of type 'PowermateEvent"
  "griffin_powermate/PowermateEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowermateEvent>)))
  "Returns md5sum for a message object of type '<PowermateEvent>"
  "d15e43bdf8af87dc4194680348af71e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowermateEvent)))
  "Returns md5sum for a message object of type 'PowermateEvent"
  "d15e43bdf8af87dc4194680348af71e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowermateEvent>)))
  "Returns full string definition for message of type '<PowermateEvent>"
  (cl:format cl:nil "string direction~%~%# Sum of direction values since the launch of the node~%int64 value~%~%# TRUE while button is pressed, FALSE otherwise~%bool is_pressed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowermateEvent)))
  "Returns full string definition for message of type 'PowermateEvent"
  (cl:format cl:nil "string direction~%~%# Sum of direction values since the launch of the node~%int64 value~%~%# TRUE while button is pressed, FALSE otherwise~%bool is_pressed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowermateEvent>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'direction))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowermateEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'PowermateEvent
    (cl:cons ':direction (direction msg))
    (cl:cons ':value (value msg))
    (cl:cons ':is_pressed (is_pressed msg))
))
