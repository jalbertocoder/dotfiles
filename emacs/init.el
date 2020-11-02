;; _          _
;;| |__   ___| |_ ___
;;| '_ \ / _ \ __/ _ \
;;| |_) |  __/ || (_) |
;;|_.__/ \___|\__\___/
;;

;; .emacs.d/init.el

(setq straight-use-package-by-default t)
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode 1)
(set-frame-font "Jetbrains Mono-15")
(global-hl-line-mode t)
(show-paren-mode t)
(electric-pair-mode t)
(ido-mode 1)
; probably only for mac to use flyspell
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))
(setq inhibit-splash-screen t)
(setq gnutls-verify-error t)
(setq tls-checktrust t)
(setq mode-require-final-newline t)
(setq echo-keystrokes 0.5)
(setq-default bidi-paragraph-direction 'left-to-right)
(use-package rainbow-mode)
(use-package nord-theme)
(use-package gruber-darker-theme)
(use-package atom-one-dark-theme)
(use-package monokai-theme)
(use-package solarized-theme)
(load-theme 'nord t)
(use-package which-key
 :init (which-key-mode))
(use-package powerline
  :init (powerline-default-theme))
(use-package neotree)
(use-package magit)
(use-package org)
(use-package org-bullets)
(add-hook 'org-mode-hook 'org-bullets-mode)
(use-package dumb-jump)
(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)
(use-package hl-todo
  :hook (prog-mode . hl-todo-mode)
    :config
    (setq hl-todo-highlight-punctuation ":"
          hl-todo-keyword-faces
          `(("TODO"       warning bold)
            ("FIXME"      error bold)
            ("HACK"       font-lock-constant-face bold)
            ("REVIEW"     font-lock-keyword-face bold)
            ("NOTE"       success bold)
            ("DEPRECATED" font-lock-doc-face bold))))
(use-package company)
(add-hook 'after-init-hook 'global-company-mode)
(use-package projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(setq projectile-project-search-path '("~/workspace/personal/"))
(use-package lua-mode)
(use-package php-mode)
(use-package web-mode)
(use-package go-mode)
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
(add-hook 'after-init-hook #'global-flycheck-mode)
