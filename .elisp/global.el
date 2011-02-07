(setq inhibit-startup-message t)		; don't display the message at start
(setq make-backup-files nil)      		; prevent backup file creation
(setq-default transient-mark-mode t)	; turns highlighting on when selecting text
(setq-default indent-tabs-mode nil)     ; spaces instead of tabs
(setq-default tab-width 4)      		; set the width of tabs
;; change where you stop when pressing M-i
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56))
(setq require-final-newline t)			; make the last line a new line
(fset 'yes-or-no-p 'y-or-n-p)			; type "y" instead of "yes"
(setq scroll-step 1)                    ; only scroll one line at a time
(show-paren-mode t)
(abbrev-mode nil)
(setq confirm-nonexistent-file-or-buffer nil)

(column-number-mode t)
(setq-default fill-column 80)
;; Column stuff
(put 'set-goal-column 'disabled nil)

(prefer-coding-system 'utf-8)

;; put backups in this folder
(setq backup-directory-alist '(("." . "~/.emacs_backups")))

;; Cursor stuff
(set-cursor-color "turquoise")
(setq-default cursor-type 'box)
(set-face-background 'show-paren-match-face "red")
(set-face-foreground 'show-paren-match-face "white")
(setq default-frame-alist
      '((set-cursor-color "turquoise")))
;; (global-hl-line-mode)

;; put specific files in different modes
(setq auto-mode-alist
      (append
       ;; text-mode if a README or COMMIT_EDITMSG
       '(("README" . text-mode)
         ("COMMIT_EDITMSG" . text-mode)
         ("AUTHORS" . text-mode)
         ("CHANGELOG" . text-mode))
       auto-mode-alist))


;; Kill a buffer with an attached process
(setq kill-buffer-query-functions
      (remq 'process-kill-buffer-query-function
            kill-buffer-query-functions))

(if window-system
    (menu-bar-mode t)
  (menu-bar-mode nil))
;;; put customizations in this file
;;  a hack to get rid of all the GUI configuration crap
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)
