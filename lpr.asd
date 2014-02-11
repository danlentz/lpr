;;;;; -*- mode: lisp; syntax: common-lisp; coding: utf-8; base: 10; -*-

(defsystem :lpr
  :serial t
  :depends-on (:uiop)
  :components
  ((:file "package")
    (:file "print-op")))

(defmethod asdf:perform :after ((op asdf:load-op) (sys (eql (asdf:find-system :lpr))))
  (pushnew :lpr *features*))
