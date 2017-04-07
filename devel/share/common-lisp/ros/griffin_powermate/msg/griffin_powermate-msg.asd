
(cl:in-package :asdf)

(defsystem "griffin_powermate-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PowermateEvent" :depends-on ("_package_PowermateEvent"))
    (:file "_package_PowermateEvent" :depends-on ("_package"))
  ))