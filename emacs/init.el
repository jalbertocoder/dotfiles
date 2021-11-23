;; _          _
;;| |__   ___| |_ ___
;;| '_ \ / _ \ __/ _ \
;;| |_) |  __/ || (_) |
;;|_.__/ \___|\__\___/
;;

;; .emacs.d/init.el

(setq inhibit-startup-message t)

;; Disable visible scrollbar
(scroll-bar-mode -1)
;; Disable the toolbar
(tool-bar-mode -1)
;; Disable tooltips
(tooltip-mode -1)
;; Give some breathing room
(set-fringe-mode 10)

;; Disable the menu bar
(menu-bar-mode -1)

;; Set up the visible bell
(setq visible-bell t)

;; Set font family and size
(set-face-attribute 'default nil :font "IBM Plex Mono" :height 160)

;; Set tab width to 2 spaces
(setq-default tab-width 2)

;; Always indent with spaces
(setq-default indent-tabs-mode nil)

;; Display line numbers
(global-display-line-numbers-mode)

;; Highlights current line
(global-hl-line-mode)

;; Use fancy lambdas
(global-prettify-symbols-mode t)

;; Use melpa
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(vterm go-mode php-mode neotree projectile company-box company magit which-key counsel hl-todo org-superstar doom-modeline solarized-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Make the fringe stand out from the background
(setq solarized-distinct-fringe-background t)
;; Don't change the font for some headings and titles
(setq solarized-use-variable-pitch nil)
;; Don't make the modeline high contrast
(setq solarized-high-contrast-mode-line nil)
;; Use less bolding
(setq solarized-use-less-bold t)
;; Use more italics
(setq solarized-use-more-italic t)
;; Use less colors for indicators such as git:gutter, flycheck and similar
(setq solarized-emphasize-indicators nil)
;; Don't change size of org-mode headlines (but keep other size-changes)
(setq solarized-scale-org-headlines nil)
;; Change the size of markdown-mode headlines (off by default)
(setq solarized-scale-markdown-headlines t)
;; Underline position setting
(setq x-underline-at-descent-line t)
;; Load theme
(load-theme 'solarized-dark t)

;; Custom modeline
(doom-modeline-mode 1)
;; How tall the mode-line should be
(setq doom-modeline-height 25)
;; How wide the mode-line bar should be
(setq doom-modeline-bar-width 10)
;; The limit of the window width
(setq doom-modeline-window-width-limit fill-column)
;; How to detect the project root
(setq doom-modeline-project-detection 'auto)
;; Determines the style
(setq doom-modeline-buffer-file-name-style 'auto)
;; Whether display icons in the mode-line
(setq doom-modeline-icon (display-graphic-p))
;; Whether display the icon for `major-mode'
(setq doom-modeline-major-mode-icon t)
;; Whether display the colorful icon for `major-mode'
(setq doom-modeline-major-mode-color-icon t)
;; Whether display the icon for the buffer state
(setq doom-modeline-buffer-state-icon t)
;; Whether display the modification icon for the buffer
(setq doom-modeline-buffer-modification-icon t)
;; Whether to use unicode as a fallback
(setq doom-modeline-unicode-fallback nil)
;; Whether display the minor modes in the mode-line
(setq doom-modeline-minor-modes nil)
;; If non-nil, a word count will be added to the selection-info modeline segment
(setq doom-modeline-enable-word-count t)
;; Whether display the buffer encoding
(setq doom-modeline-buffer-encoding t)
;; Whether display the indentation information
(setq doom-modeline-indent-info t)
;; If non-nil, only display one number for checker information if applicable
(setq doom-modeline-checker-simple-format t)
;; The maximum number displayed for notifications
(setq doom-modeline-number-limit 99)
;; The maximum displayed length of the branch name of version control
(setq doom-modeline-vcs-max-length 12)
;; Whether display the workspace name. Non-nil to display in the mode-line
(setq doom-modeline-workspace-name t)
;; Whether display the perspective name. Non-nil to display in the mode-line.
(setq doom-modeline-persp-name t)
;; If non nil the default perspective name is displayed in the mode-line
(setq doom-modeline-display-default-persp-name nil)
;; If non nil the perspective name is displayed alongside a folder icon
(setq doom-modeline-persp-icon t)
;; Whether display the `lsp' state. Non-nil to display in the mode-line
(setq doom-modeline-lsp t)
;; Whether display the modal state icon.
;; Including `evil', `overwrite', `god', `ryo' and `xah-fly-keys', etc.
(setq doom-modeline-modal-icon t)
;; Whether display the environment version.
(setq doom-modeline-env-version t)
;; What to display as the version while a new one is being loaded
(setq doom-modeline-env-load-string "...")
;; Set font family and size
(set-face-attribute 'mode-line nil :family "IBM Plex Mono" :height 140)
(set-face-attribute 'mode-line-inactive nil :family "IBM Plex Mono" :height 140)

;; Fancy bullets for org-mode
(add-hook 'org-mode-hook
          (lambda ()
            (org-superstar-mode 1)))

(setq org-hide-leading-stars t)
(setq org-ellipsis "⤵")

;; Hightligh TODOs
(setq hl-todo-keyword-faces
      '(("TODO"       . "#b58900")
        ("FIXME"      . "#dc322f")
        ("HACK"       . "#cb4b16")
        ("DEBUG"      . "#d33682")
        ("REVIEW"     . "#6c71c4")
        ("NOTE"       . "#268bd2")
        ("DEPRECATED" . "#2aa198")))
(add-hook 'prog-mode-hook 'hl-todo-mode)

;; Active completion
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")

;; Active keybinding completion
(which-key-mode)

;; Active code completion
(add-hook 'prog-mode-hook 'company-mode)
(add-hook 'company-mode-hook 'company-box-mode)

;; Easy project management and navigation
(projectile-global-mode)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Show icos in neotree
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
