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

;; Allow for most more responsive (and demanding) redrawing of the display
(setq redisplay-dont-pause t)

(column-number-mode t)
(setq-default fill-column 80)

;; Column stuff
(put 'set-goal-column 'disabled nil)

;; split vertically, not horizontally
;; (setq split-height-threshold nil)
;; (setq split-width-threshold 0)

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
         ("COMMIT_EDITMSG" . shell-script-mode)
         ("AUTHORS" . text-mode)
         ("CHANGELOG" . text-mode)
         ("CMakeLists\\.txt\\'" . cmake-mode)
         ("\\.cmake\\'" . cmake-mode))
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
;; Emacs Speaks Statistics
(load "~/.elisp/ess")

;; Ido mode
;; FIXME
(load "~/.elisp/ido")
(load "~/.elisp/buffer-move")

;; https://github.com/capitaomorte/yasnippet
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
(load "~/.elisp/rainbow.el")

(load "~/.elisp/json.el")

;; CMake mode
(require 'cmake-mode)

;; ;;; Java-mode stuff
;; (add-hook 'java-mode-hook
;;           '(lambda()
;;              (yas/minor-mode-on)
;;              (setq whitespace-line-column fill-column)
;;              ))


;; ;;; Example of how to set modes
;; ;; (setq hp-c-style
;; ;;       '((do-stuff)
;; ;;         (do-more-stuff)
;; ;;         (...)
;; ;;         (last thing)
;; ;;         ))

;; ;;; CEDET stuff
;; ;; (load "~/.elisp/cedet")


;; ;; Scala stuff
;; (add-to-list 'load-path "~/.emacs_lib/scala-mode/")
;; (require 'scala-mode-auto)


;; ;; TODO: Need to setup window switching correctly
;; ;; Here is what I want:
;; ;; - When opening a help dialog, open it in the other
;; ;;      - maintain focus on this window
;; ;; - Add a keybinding to close help buffer from this window

;; ;; This variable specifies whether display-buffer should make new frames. If it
;; ;; is non-nil, display-buffer looks for a window already displaying
;; ;; buffer-or-name on any visible or iconified frame. If it finds such a window,
;; ;; it makes that window's frame visible and raises it if necessary, and returns
;; ;; the window. Otherwise it makes a new frame, unless the variable's value is
;; ;; graphic-only and the selected frame is not on a graphic display.
;; (setq pop-up-frames nil)

;; Maxframe app to make XEmacs maximum
(load "~/.elisp/maxframe")


;; ;; (require 'multi-term)
;; ;; (setq multi-term-program "/bin/bash")

;; ;;; TODO:
;; ;;; - Fix column width thing in different modes (Whitespace)
;; ;;; - Set whitespace on different modes
;; ;;; - Look into "Midnight" package
;; ;;; - Fix color theme
;; ;;; - Fix autocomplete (i.e. in C/C++ mode and figure out how to use with libraries)
;; ;;; - Add JavaDoc shortcut and snippet
(put 'upcase-region 'disabled nil)

;; Make repeated buffers unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers


;; expand-region
(add-to-list 'load-path "~/.emacs_lib/expand-region.el/")
(require 'expand-region)
(global-set-key (kbd "C-S-e") 'er/expand-region)
