;; Common Lisp Script
;; Manoel Vilela


(asdf/defsystem:defsystem :lisp-chat/server
  :author "Manoel Vilela"
  :description "An experimental chat irc-like: server"
  :version "0.1.0"
  :mailto "manoel_vilela@engineer.com"
  :license "MIT"
  :depends-on ("usocket")
  :pathname "src"
  :components ((:file "config")
               (:file "server" :depends-on ("config"))))

(asdf/defsystem:defsystem :lisp-chat/client
  :author "Manoel Vilela"
  :description "An experimental chat irc-like: client"
  :version "0.1.0"
  :license "MIT"
  :depends-on ("usocket" "cl-readline")
  :pathname "src"
  :components ((:file "config")
               (:file "client" :depends-on ("config"))))

(asdf/defsystem:defsystem :lisp-chat
  :author "Manoel Vilela"
  :description "An experimental chat irc-like"
  :version "0.1.0"
  :license "MIT"
  :depends-on ("lisp-chat/client"
               "lisp-chat/server"))
