;;; +keybings.el -*- lexical-binding: t; -*-

;; comma leader define
(map!
 :nv ",ci" 'evilnc-comment-or-uncomment-lines
 :nv ",cl" 'evilnc-quick-comment-or-uncomment-to-the-line
 :nv ",cc" 'evilnc-copy-and-comment-lines
 :nv ",cp" 'my-evilnc-comment-or-uncomment-paragraphs
 )
