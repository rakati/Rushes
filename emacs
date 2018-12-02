;; ---------- BONUS ---------------------------------------

;; set columns limit to 80
(setq-default fill-column 80)
;; set auto fill after 80 characters in line and set breack line
(setq auto-fill-mode 1)


;; Insertion du header de 42 pour le 'normalize_me'
(setq config_files "/usr/share/emacs/site-lisp/")
(setq load-path (append (list nil config_files) load-path))
(load "header.el")


;; Les tab sont de tab 4 et l'indentation en C aussi
(setq default-tab-width 4)
(setq c-basic-offset 4)
(setq tab-width 4)
(setq-default indent-tabs-mode t)


;; highlight la parenthese / accolade complementaire
(show-paren-mode 1)

;; ---------- PARTIE OBLIGATOIRE --------------------------

;; Indentation automatique
(setq c-default-style "linux")
(defun set-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'c-mode-hook 'set-newline-and-indent)


;; auto indent of parenthese and brackets
(electric-pair-mode t)


;; show cursor position
(setq column-number-mode t)

;; Highlight two spaces side by side with blue color
(global-hi-lock-mode 1)
(add-hook 'change-major-mode-hook '(lambda () (highlight-regexp "  " 'hi-blue)))


;; highlight last space befor break line 
(setq-default show-trailing-whitespace t)

;; save Backups in Backup directory
(setq backup-directory-alist '(("." . "~/.emacs.d/Backups"))