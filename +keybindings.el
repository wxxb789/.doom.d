;;; +keybings.el -*- lexical-binding: t; -*-

;; {{ comma leader define
(map!
 :nv ",," 'evilnc-comment-operator
 :nv ",ci" 'evilnc-comment-or-uncomment-lines
 :nv ",cc" 'evilnc-copy-and-comment-lines
 ;; :nv ",cl" 'evilnc-quick-comment-or-uncomment-to-the-line
 ;; :nv ",cp" 'my-evilnc-comment-or-uncomment-paragraphs
 )
;; }}
