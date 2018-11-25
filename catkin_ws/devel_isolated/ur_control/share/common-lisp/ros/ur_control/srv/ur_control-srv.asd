
(cl:in-package :asdf)

(defsystem "ur_control-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RG2_Grip" :depends-on ("_package_RG2_Grip"))
    (:file "_package_RG2_Grip" :depends-on ("_package"))
    (:file "RG2" :depends-on ("_package_RG2"))
    (:file "_package_RG2" :depends-on ("_package"))
  ))