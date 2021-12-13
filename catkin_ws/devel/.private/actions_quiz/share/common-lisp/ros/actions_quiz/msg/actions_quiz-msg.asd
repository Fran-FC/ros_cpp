
(cl:in-package :asdf)

(defsystem "actions_quiz-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CustomActionMsgAction" :depends-on ("_package_CustomActionMsgAction"))
    (:file "_package_CustomActionMsgAction" :depends-on ("_package"))
    (:file "CustomActionMsgActionFeedback" :depends-on ("_package_CustomActionMsgActionFeedback"))
    (:file "_package_CustomActionMsgActionFeedback" :depends-on ("_package"))
    (:file "CustomActionMsgActionGoal" :depends-on ("_package_CustomActionMsgActionGoal"))
    (:file "_package_CustomActionMsgActionGoal" :depends-on ("_package"))
    (:file "CustomActionMsgActionResult" :depends-on ("_package_CustomActionMsgActionResult"))
    (:file "_package_CustomActionMsgActionResult" :depends-on ("_package"))
    (:file "CustomActionMsgFeedback" :depends-on ("_package_CustomActionMsgFeedback"))
    (:file "_package_CustomActionMsgFeedback" :depends-on ("_package"))
    (:file "CustomActionMsgGoal" :depends-on ("_package_CustomActionMsgGoal"))
    (:file "_package_CustomActionMsgGoal" :depends-on ("_package"))
    (:file "CustomActionMsgResult" :depends-on ("_package_CustomActionMsgResult"))
    (:file "_package_CustomActionMsgResult" :depends-on ("_package"))
  ))