
(cl:in-package :asdf)

(defsystem "project5-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "OddEvenCheck" :depends-on ("_package_OddEvenCheck"))
    (:file "_package_OddEvenCheck" :depends-on ("_package"))
  ))