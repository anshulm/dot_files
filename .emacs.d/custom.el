;; 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(custom-enabled-themes (quote (solarized-normal)))
 '(custom-safe-themes (quote ("ca8c523685a59a264cc846e462911e4445ca6edd" "a52081eacf3615157904c53fbc5a1610acc94fcf" "9bcca0afb74d49c4a3f01d81942c7eb9ed68f07d" "e042bdae7a5bb5972c8e5d37850af39ed3c1fde9" "5b454ceae8b32bbfab307109f8ee26dc1633b05d" "de78bc39bed5aaf12cfaa19b8a4cce4b3ef20518" "cf4dda59b259ca9c6214a8e9acf84bf5909c6e59" "e254937cba0f82c2d9eb3189a60748df9e486522" "f36c3d85ad1cd2120163c0bb0a82b8d062a6fec5" "1440d751f5ef51f9245f8910113daee99848e2c0" "485737acc3bedc0318a567f1c0f5e7ed2dfde3fb" "35bbc02a67f685bf35db3c3bf156f95687fff729" "858c7e46cb5fc78dd1f034924a50555182e508bc" "c8f1f8a5c04b9489af67bd63159b81791c1e1070" default)))
 '(custom-theme-directory "~/.emacs.d/themes/")
 '(exec-path (quote ("/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin" "/usr/local/bin" "/usr/local/sbin")))
 '(fancy-splash-image nil)
 '(global-linum-mode t)
 '(rspec-spec-command "rspec")
 '(rspec-use-rvm nil)
 '(safe-local-variable-values (quote ((ruby-compilation-executable . "ruby") (ruby-compilation-executable . "ruby1.8") (ruby-compilation-executable . "ruby1.9") (ruby-compilation-executable . "rbx") (ruby-compilation-executable . "jruby") (whitespace-line-column . 80) (lexical-binding . t) (encoding . utf-8))))
 '(standard-indent 2)
 '(tab-width 2)
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(c-mode)
(c-toggle-hungry-state)
(setq default-tab-width 2)

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(setq inhibit-splash-screen t)
(setq make-backup-files nil)
(setq highlight-current-line-globally t)
(setq campfire-room-name "446076")
