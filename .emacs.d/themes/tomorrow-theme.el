;;; tomorrow-theme.el --- GNU Emacs 24 port of the Tomorrow Theme.

;;; Commentary:
;;
;;; Tomorrow Theme
;;
;; Originally by Chris Kempson https://github.com/ChrisKempson/Tomorrow-Theme
;; Ported to GNU Emacs 24 by Irfan Shah ported from GNU Emacs by Chris Charles

(deftheme tomorrow "Tomorrow theme")

;;; Code:

;;;VARIANT can be 'night, 'night-eighties, 'night-blue or
;;;'night-bright.  If VARIANT is not present, the light Tomorrow
;;;theme will be used."

  (let ((background "#ffffff")
        (current-line "#e9efff")
        (selection "#c5cce9")
        (foreground "#4d4d4c")
        (comment "#8e908c")
        (cursor "#aeafad")
        (red "#c82829")
        (orange "#f5871f")
        (yellow "#eab700")
        (green "#718c00")
        (aqua "#3e999f")
        (blue "#4271ae")
        (purple "#8959a8"))

           (setq background "#1d1f21"
                 current-line "#282a2e"
                 selection "#373b41"
                 foreground "#c5c8c6"
                 comment "#969896"
                 cursor "#aeafad"
                 red "#cc6666"
                 orange "#de935f"
                 yellow "#f0c674"
                 green "#b5bd68"
                 aqua "#8abeb7"
                 blue "#81a2be"
                 purple "#b294bb"))


    (custom-theme-set-faces
     'tomorrow
       ((background . ,background)
        (background-mode . dark)
        (border-color . ,cursor)
        (cursor-color . ,cursor)
        (foreground-color . ,foreground))

       ;; Built-in stuff (Emacs 23)
       (default ((t (:background ,background :foreground ,foreground))))
       (fringe ((t (:background ,current-line))))
       (minibuffer-prompt ((t (:foreground ,blue))))
       (mode-line ((t (:background ,current-line :foreground ,foreground))))
       (region ((t (:background ,selection))))

       ;; Font-lock stuff
       (font-lock-comment-face ((t (:foreground ,comment))))
       (font-lock-constant-face ((t (:foreground ,green))))
       (font-lock-doc-string-face ((t (:foreground ,comment))))
       (font-lock-function-name-face ((t (:foreground ,blue))))
       (font-lock-keyword-face ((t (:foreground ,purple))))
       (font-lock-string-face ((t (:foreground ,green))))
       (font-lock-type-face ((t (:foreground ,yellow))))
       (font-lock-variable-name-face ((t (:foreground ,red))))
       (font-lock-warning-face ((t (:foreground ,red))))

       ;; hl-line-mode
       (hl-line ((t (:background ,current-line))))

       ;; linum-mode
       (linum ((t (:background ,current-line :foreground ,foreground))))

       ;; org-mode
       (org-date ((t (:foreground ,purple))))
       (org-done ((t (:foreground ,green))))
       (org-hide ((t (:foreground ,current-line))))
       (org-link ((t (:foreground ,blue))))
       (org-todo ((t (:foreground ,red))))

       ;; show-paren-mode
       (show-paren-match-face ((t (:background ,blue :foreground ,current-line))))
       (show-paren-mismatch-face ((t (:background ,orange :foreground ,current-line))))))
