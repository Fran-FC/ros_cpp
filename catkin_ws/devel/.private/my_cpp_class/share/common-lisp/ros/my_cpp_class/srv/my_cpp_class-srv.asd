
(cl:in-package :asdf)

(defsystem "my_cpp_class-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BB8CustomServiceMessage" :depends-on ("_package_BB8CustomServiceMessage"))
    (:file "_package_BB8CustomServiceMessage" :depends-on ("_package"))
    (:file "MyCustomServiceMessage" :depends-on ("_package_MyCustomServiceMessage"))
    (:file "_package_MyCustomServiceMessage" :depends-on ("_package"))
  ))