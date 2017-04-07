; Auto-generated. Do not edit!


(cl:in-package griffin_powermate-msg)


;//! \htmlinclude PowermateEvent.msg.html

(cl:defclass <PowermateEvent> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0)
   (integral
    :reader integral
    :initarg :integral
    :type cl:integer
    :initform 0)
   (is_pressed
    :reader is_pressed
    :initarg :is_pressed
    :type cl:boolean
    :initform cl:nil)
   (push_state_changed
    :reader push_state_changed
    :initarg :push_state_changed
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

(cl:ensure-generic-function 'integral-val :lambda-list '(m))
(cl:defmethod integral-val ((m <PowermateEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader griffin_powermate-msg:integral-val is deprecated.  Use griffin_powermate-msg:integral instead.")
  (integral m))

(cl:ensure-generic-function 'is_pressed-val :lambda-list '(m))
(cl:defmethod is_pressed-val ((m <PowermateEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader griffin_powermate-msg:is_pressed-val is deprecated.  Use griffin_powermate-msg:is_pressed instead.")
  (is_pressed m))

(cl:ensure-generic-function 'push_state_changed-val :lambda-list '(m))
(cl:defmethod push_state_changed-val ((m <PowermateEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader griffin_powermate-msg:push_state_changed-val is deprecated.  Use griffin_powermate-msg:push_state_changed instead.")
  (push_state_changed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowermateEvent>) ostream)
  "Serializes a message object of type '<PowermateEvent>"
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'integral)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'push_state_changed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowermateEvent>) istream)
  "Deserializes a message object of type '<PowermateEvent>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'integral) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'is_pressed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'push_state_changed) (cl:not (cl:zerop (cl:read-byte istream))))
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
  "7c609a1e7695a65cfaa2fdba1e74ac79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowermateEvent)))
  "Returns md5sum for a message object of type 'PowermateEvent"
  "7c609a1e7695a65cfaa2fdba1e74ac79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowermateEvent>)))
  "Returns full string definition for message of type '<PowermateEvent>"
  (cl:format cl:nil "# Dirction values can be -1 for counter-clockwise, 0 for no, and 1 clockwise rotation~%int8 direction~%~%# Sum of direction values since the launch of the node~%int64 integral~%~%# TRUE while button is pressed, FALSE otherwise~%bool is_pressed~%~%# TRUE if the event was triggered by a push or a release of the button; FALSE otherwise~%bool push_state_changed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowermateEvent)))
  "Returns full string definition for message of type 'PowermateEvent"
  (cl:format cl:nil "# Dirction values can be -1 for counter-clockwise, 0 for no, and 1 clockwise rotation~%int8 direction~%~%# Sum of direction values since the launch of the node~%int64 integral~%~%# TRUE while button is pressed, FALSE otherwise~%bool is_pressed~%~%# TRUE if the event was triggered by a push or a release of the button; FALSE otherwise~%bool push_state_changed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowermateEvent>))
  (cl:+ 0
     1
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowermateEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'PowermateEvent
    (cl:cons ':direction (direction msg))
    (cl:cons ':integral (integral msg))
    (cl:cons ':is_pressed (is_pressed msg))
    (cl:cons ':push_state_changed (push_state_changed msg))
))
