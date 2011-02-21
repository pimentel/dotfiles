;; Harold Pimentel's Emacs configuration
;;
;; Latest version can be found at:
;; http://www.github.com/pimentel

(add-to-list 'load-path "~/.emacs_lib/")        ; load packages from this dir

;; Gloabl startup behavior
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
;; (set-cursor-color "turquoise") ;; now set in color.el
(setq-default cursor-type 'box)
(set-face-background 'show-paren-match-face "red")
(set-face-foreground 'show-paren-match-face "white")
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

;; (load "~/.elisp/global")
(load "~/.elisp/elisp")

;; global bindings
;; FIXME
(load "~/.elisp/keys")
;; Column editing mode
(load "~/.elisp/cua")
(load "~/.elisp/linum")
;; Maxframe app to make XEmacs maximum
(load "~/.elisp/maxframe")
;; Emacs Speaks Statistics
(load "~/.elisp/ess")

;; Ido mode
;; FIXME
(load "~/.elisp/ido")
(load "~/.elisp/buffer-move")
(load "~/.elisp/yas")
(load "~/.elisp/org")
(load "~/.elisp/hippie-expand")
(load "~/.elisp/autopair")

;; M-x htmlize-buffer OR htmlize-region OR htmlize-file
(load "~/.elisp/htmlize")
(load "~/.elisp/cc")
(load "~/.elisp/c")
(load "~/.elisp/cpp")
(load "~/.elisp/objc")
(load "~/.elisp/autocomplete")
(load "~/.elisp/auctex")
(load "~/.elisp/color")
(load "~/.elisp/matlab")
(load "~/.elisp/whitespace")
(load "~/.elisp/gtags")

;;; Java-mode stuff
(add-hook 'java-mode-hook
          '(lambda()
             (yas/minor-mode-on)
             (setq whitespace-line-column fill-column)
             ))


;;; Example of how to set modes
;; (setq hp-c-style
;;       '((do-stuff)
;;         (do-more-stuff)
;;         (...)
;;         (last thing)
;;         ))

;;; CEDET stuff
;; (load "~/.elisp/cedet")


;; Scala stuff
(add-to-list 'load-path "~/.emacs_lib/scala-mode/")
(require 'scala-mode-auto)


;; (require 'multi-term)
;; (setq multi-term-program "/bin/bash")

;;; TODO:
;;; - Fix column width thing in different modes (Whitespace)
;;; - Set whitespace on different modes
;;; - Look into "Midnight" package
;;; - Fix color theme
;;; - Fix autocomplete (i.e. in C/C++ mode and figure out how to use with libraries)
;;; - Add JavaDoc shortcut and snippet


;;; This was installled by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
