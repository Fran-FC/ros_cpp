
(cl:in-package :asdf)

(defsystem "my_custom_srv_msg_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MyCustomServiceMessage" :depends-on ("_package_MyCustomServiceMessage"))
    (:file "_package_MyCustomServiceMessage" :depends-on ("_package"))
  ))