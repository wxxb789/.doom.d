;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "wxxb"
      user-mail-address "wxxb789@outlook.com")


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;;(setq org-directory "~/OneDrive/Notes/OrgRoam/")

;;(setq org-roam-directory "~/OneDrive/Notes/OrgRoam/")


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(use-package! sis
  :config
  (sis-ism-lazyman-config "1" "2" 'fcitx5)
  (sis-global-cursor-color-mode t)
  (sis-global-respect-mode t)
  (sis-global-context-mode t)
  (sis-global-inline-mode t)
  )

(use-package! evil-escape
  :init
  (setq evil-escape-key-sequence "kj"))

(use-package! markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package! aggressive-indent
  :hook
  ;; (clojure-mode . aggressive-indent-mode)
  ;; (hy-mode . aggressive-indent-mode)
  (emacs-lisp-mode . aggressive-indent-mode)
  (lisp-mode . aggressive-indent-mode))

(setq search-highlight t
      search-whitespace-regexp ".*?"
      isearch-lax-whitespace t
      isearch-regexp-lax-whitespace nil
      isearch-lazy-highlight t
      isearch-lazy-count t
      lazy-count-prefix-format " (%s/%s) "
      lazy-count-suffix-format nil
      isearch-yank-on-move 'shift
      isearch-allow-scroll 'unlimited)

(after! dired
  (setq dired-listing-switches "-aBhl  --group-directories-first"
        dired-dwim-target t
        dired-recursive-copies (quote always)
        dired-recursive-deletes (quote top)))

(use-package! dired-narrow
  :commands (dired-narrow-fuzzy)
  :init
  (map! :map dired-mode-map
        :desc "narrow" "/" #'dired-narrow-fuzzy))

(after! company
  (map! "M-/" #'company-complete))

(use-package! company-posframe
  :hook (company-mode . company-posframe-mode))

(use-package! snails
  :init
  (add-hook 'snails-mode-hook (lambda () (evil-emacs-state)))
  :commands snails)

;; color-rg with evil
;; https://emacs.stackexchange.com/a/10588/22102
;; (eval-after-load 'color-rg
;;   '(progn
;;      (evil-make-overriding-map color-rg-mode-map 'normal)
;;      ;; force update evil keymaps after git-timemachine-mode loaded
;;      (add-hook 'color-rg-mode-hook #'evil-normalize-keymaps)))

(use-package! color-rg
  :commands (color-rg-search-input color-rg-search-symbol
                                   color-rg-search-input-in-project))

;; custom config files
(load! "+ui")
(load! "+keybings")
