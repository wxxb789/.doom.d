;;; $DOOMDIR/+ui.el -*- lexical-binding: t; -*-


;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-nord)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; font settings
;; "Iosevka Nerd Font Mono"

;; Fix unicode file-icon display error.
;; (seq-difference doom-unicode-extra-fonts '("FontAwesome" "file-icons"))
;; (message doom-unicode-extra-fonts)
;; (setq doom-unicode-extra-fonts (seq-difference doom-unicode-extra-fonts '("FontAwesome" "file-icons" "github-octicons")))

(setq doom-font (font-spec :family "Inconsolata NF" :size 32)
      doom-serif-font (font-spec :family "Sarasa Mono SC")
      doom-variable-pitch-font (font-spec :family "Inconsolata NF")
      doom-unicode-font (font-spec :family "Sarasa Mono SC")
      doom-big-font (font-spec :family "Sarasa Mono SC" :size 38))

(defun win10/set-unicode-fonts ()
  (interactive)
  (set-fontset-font "fontset-default" 'symbol (font-spec :family "Segoe UI Emoji" :size 14) nil 'prepend ))

;; {{ Windows Conifg Start
;; set doom-unicode-extra-fonts nil if windows.
;; 中，言，结构
(if IS-WINDOWS
    (setq doom-unicode-extra-fonts nil)
  (push "Sarasa Mono SC Nerd" doom-unicode-extra-fonts)
  (add-hook 'window-setup-hook :append 'win10/set-unicode-fonts))
;;}} Windows Conifg End
