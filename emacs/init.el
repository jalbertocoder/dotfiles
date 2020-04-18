(package-initialize)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(menu-bar-mode 1)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode 1)
(set-default-font "Jetbrains Mono-15")

(require 'powerline)
(powerline-default-theme)

(ido-mode 1)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(which-key-mode 1)

(custom-set-variables
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("0598c6a29e13e7112cfbc2f523e31927ab7dce56ebb2016b567e1eff6dc1fd4f" default)))
 '(package-selected-packages (quote (solarized-theme which-key smex powerline))))
(custom-set-faces
 )
