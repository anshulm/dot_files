(add-to-list 'load-path "~/.emacs.d/Plugins")
(setq custom-file "~/.emacs.d/custom.el")


(require 'marmalade)
(require 'nginx-mode)
(require 'project-mode)
(require 'campfire)
(require 'rvm)
(require 'rspec-mode)
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))
(add-to-list 'auto-mode-alist '("\\.feature$" . feature-mode))

(add-to-list 'load-path "~/.emacs.d/Plugins/AutoComplete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/Plugins/AutoComplete//ac-dict")
(ac-config-default)

(load custom-file 'noerror)
(line-number-mode)
(linum-mode)
(highline-mode)
(cua-mode t)
(yas/global-mode 1) 
(set-face-background 'highline-face "#08252F")
(menu-bar-mode t)

(setq inhibit-startup-message t) 

;; turn on/off menu bar
(menu-bar-mode t)

;;turn on/off toolbar
(tool-bar-mode -1)

;; show column-number in mode line
(column-number-mode t)

;; turn on syntax highlighting
(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode 1))        ; GNU Emacs

;; turn on parentheses highlighting
(show-paren-mode)

;;turn on highlight changes
(highlight-changes-mode t)

;; display date and time always
(setq display-time-day-and-date t)
(display-time)

;; show file size
(size-indication-mode)

;; type "y"/"n" instead of "yes"/"no"
(fset 'yes-or-no-p 'y-or-n-p)

;; disable auto save
(auto-save-mode -1)

;; turn on fancy prompts in the shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; line numbers
(require 'linum)
;; bracket and quotes auto pairing
(require 'autopair)
(autopair-global-mode 1)
;; color themes
(require 'color-theme)
(load-file "~/.emacs.d/elpa/color-theme-twilight-0.1/color-theme-twilight.el")
(color-theme-twilight)
