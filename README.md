# Lisp Chat

An experimental chat irc-like written in Lisp, a fork of ryukinix/lisp-chat with roswell and quicklisp crap removed. WIP.

# Installation

`make -f server.mk`   #Build chat server
`make -f client.mk`   #Build chat client

# Usage
To start a server instance:
`./lisp-chat`

To connect to server:

`./lisp-chat-client`

or

`rlwrap nc <ip> <port>`

# TODO:
Cleanup to remove quicklisp dependencies
Cleanup makefiles and build scripts.

<p align="center">
  <a href= http://chat.lerax.me>
    <img src="http://www.lisperati.com/lisplogo_warning2_256.png" width="128" />
  </a>
</p>
