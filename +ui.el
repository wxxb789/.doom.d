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
(setq doom-unicode-extra-fonts (delete "file-icons" doom-unicode-extra-fonts))
(push "Sarasa Mono SC Nerd" doom-unicode-extra-fonts)

(setq doom-font (font-spec :family "Iosevka" :size 34)
      doom-serif-font (font-spec :family "Sarasa Mono SC Nerd")
      doom-variable-pitch-font (font-spec :family "Iosevka")
      doom-unicode-font (font-spec :family "Sarasa Mono SC Nerd")
      doom-big-font (font-spec :family "Sarasa Mono SC Nerd" :size 42))
;;
;; (setq doom-font (font-spec :family "Sarasa Mono SC" :size 32))

;; (defun win10/set-unicode-fonts ()
;;   (interactive)
;;   (set-fontset-font "fontset-default" 'symbol (font-spec :family "Segoe UI Emoji" :size 14) nil 'prepend ))

;; (add-hook 'window-setup-hook :append 'win10/set-unicode-fonts) ;;言

;; avoid emacs ui lagging
(setq x-select-enable-clipboard-manager nil)
