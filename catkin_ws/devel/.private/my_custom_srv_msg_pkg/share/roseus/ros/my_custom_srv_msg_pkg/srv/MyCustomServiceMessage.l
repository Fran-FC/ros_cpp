;; Auto-generated. Do not edit!


(when (boundp 'my_custom_srv_msg_pkg::MyCustomServiceMessage)
  (if (not (find-package "MY_CUSTOM_SRV_MSG_PKG"))
    (make-package "MY_CUSTOM_SRV_MSG_PKG"))
  (shadow 'MyCustomServiceMessage (find-package "MY_CUSTOM_SRV_MSG_PKG")))
(unless (find-package "MY_CUSTOM_SRV_MSG_PKG::MYCUSTOMSERVICEMESSAGE")
  (make-package "MY_CUSTOM_SRV_MSG_PKG::MYCUSTOMSERVICEMESSAGE"))
(unless (find-package "MY_CUSTOM_SRV_MSG_PKG::MYCUSTOMSERVICEMESSAGEREQUEST")
  (make-package "MY_CUSTOM_SRV_MSG_PKG::MYCUSTOMSERVICEMESSAGEREQUEST"))
(unless (find-package "MY_CUSTOM_SRV_MSG_PKG::MYCUSTOMSERVICEMESSAGERESPONSE")
  (make-package "MY_CUSTOM_SRV_MSG_PKG::MYCUSTOMSERVICEMESSAGERESPONSE"))

(in-package "ROS")





(defclass my_custom_srv_msg_pkg::MyCustomServiceMessageRequest
  :super ros::object
  :slots (_duration ))

(defmethod my_custom_srv_msg_pkg::MyCustomServiceMessageRequest
  (:init
   (&key
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _duration (round __duration))
   self)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; int32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _duration
       (write-long _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_custom_srv_msg_pkg::MyCustomServiceMessageResponse
  :super ros::object
  :slots (_success ))

(defmethod my_custom_srv_msg_pkg::MyCustomServiceMessageResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass my_custom_srv_msg_pkg::MyCustomServiceMessage
  :super ros::object
  :slots ())

(setf (get my_custom_srv_msg_pkg::MyCustomServiceMessage :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get my_custom_srv_msg_pkg::MyCustomServiceMessage :datatype-) "my_custom_srv_msg_pkg/MyCustomServiceMessage")
(setf (get my_custom_srv_msg_pkg::MyCustomServiceMessage :request) my_custom_srv_msg_pkg::MyCustomServiceMessageRequest)
(setf (get my_custom_srv_msg_pkg::MyCustomServiceMessage :response) my_custom_srv_msg_pkg::MyCustomServiceMessageResponse)

(defmethod my_custom_srv_msg_pkg::MyCustomServiceMessageRequest
  (:response () (instance my_custom_srv_msg_pkg::MyCustomServiceMessageResponse :init)))

(setf (get my_custom_srv_msg_pkg::MyCustomServiceMessageRequest :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get my_custom_srv_msg_pkg::MyCustomServiceMessageRequest :datatype-) "my_custom_srv_msg_pkg/MyCustomServiceMessageRequest")
(setf (get my_custom_srv_msg_pkg::MyCustomServiceMessageRequest :definition-)
      "int32 duration
---
bool success
")

(setf (get my_custom_srv_msg_pkg::MyCustomServiceMessageResponse :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get my_custom_srv_msg_pkg::MyCustomServiceMessageResponse :datatype-) "my_custom_srv_msg_pkg/MyCustomServiceMessageResponse")
(setf (get my_custom_srv_msg_pkg::MyCustomServiceMessageResponse :definition-)
      "int32 duration
---
bool success
")



(provide :my_custom_srv_msg_pkg/MyCustomServiceMessage "b92c952a9248b3029cefe45f52f6ffde")


