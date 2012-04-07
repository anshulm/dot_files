(add-to-list 'load-path "~/.emacs.d/Plugins")
(setq custom-file "~/.emacs.d/custom.el")


(require 'marmalade)
(require 'nginx-mode)
(require 'project-mode)
(require 'rvm)
(require 'rspec-mode)
(require 'yaml-mode)
(require 'slim-mode)
(set-face-attribute 'default nil :font "Inconsolata" :height 140)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(autoload 'puppet-mode "puppet-mode" "Major mode for editing puppet manifests")
(add-to-list 'auto-mode-alist '("\\.pp$" . puppet-mode))
(add-to-list 'auto-mode-alist '("\\.feature$" . feature-mode))

;;Auto_complete
(add-to-list 'load-path "~/.emacs.d/Plugins/AutoComplete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/Plugins/AutoComplete//ac-dict")
(ac-config-default)
(define-key ac-complete-mode-map "\t" 'ac-complete)
(define-key ac-complete-mode-map "\r" nil)

(load custom-file 'noerror)
(line-number-mode)
(highline-mode)
(cua-mode t)

(setq inhibit-startup-message t) 

;;YASsnippets
(add-to-list 'load-path "~/.emacs.d/Plugins/yasnippet/")
(require 'yasnippet)
(yas/global-mode 1)

(yas/initialize)
    (yas/load-directory "~/.emacs.d/Plugins/yasnippet/")


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

;;No-backup-file creation
(setq make-backup-files nil)
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
(load-file "/Users/Admin/.emacs.d/themes/zen-mod-theme.el")

;; ===== Function to delete a line =====

;; First define a variable which will store the previous column position
(defvar previous-column nil "Save the column position")

;; Define the nuke-line function. The line is killed, then the newline
;; character is deleted. The column which the cursor was positioned at is then
;; restored. Because the kill-line function is used, the contents deleted can
;; be later restored by usibackward-delete-char-untabifyng the yank commands.
(defun nuke-line()
  "Kill an entire line, including the trailing newline character"
  (interactive)

  ;; Store the current column position, so it can later be restored for a more
  ;; natural feel to the deletion
  (setq previous-column (current-column))

  ;; Now move to the end of the current line
  (end-of-line)

  ;; Test the length of the line. If it is 0, there is no need for a
  ;; kill-line. All that happens in this case is that the new-line character
  ;; is deleted.
  (if (= (current-column) 0)
    (delete-char 1)

    ;; This is the 'else' clause. The current line being deleted is not zero
    ;; in length. First remove the line by moving to its start and then
    ;; killing, followed by deletion of the newline character, and then
    ;; finally restoration of the column position.
    (progn
      (beginning-of-line)
      (kill-line)
      (delete-char 1)
      (move-to-column previous-column))))

;; Now bind the delete line function to the F8 key
(global-set-key [f8] 'nuke-line)
