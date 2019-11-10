;; Common Lisp Script


(asdf/defsystem:defsystem :lisp-chat/server
  :author "Shinoa-Fores"
  :description "An experimental chat irc-like: server"
  :version "0.1.0"
  :license "WTFPL"
  :depends-on ("usocket"
               "bordeaux-threads")
  :pathname "src"
  :components ((:file "config")
               (:file "server" :depends-on ("config"))))

(asdf/defsystem:defsystem :lisp-chat/client
  :author "Shinoa-Fores"
  :description "An experimental chat irc-like: client"
  :version "0.1.0"
  :license "WTFPL"
  :depends-on ("usocket"
               "cl-readline"
               "bordeaux-threads")
  :pathname "src"
  :components ((:file "config")
               (:file "client" :depends-on ("config"))))

(asdf/defsystem:defsystem :lisp-chat
  :author "Shinoa-Fores"
  :description "An experimental chat irc-like"
  :version "0.1.0"
  :license "WTFPL"
  :depends-on ("lisp-chat/client"
               "lisp-chat/server"))
