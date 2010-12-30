;; Harold Pimentel's Emacs configuration
;; 
;; Last update: Sun Dec 19 01:25:56 2010
;;
;; Latest version can be found at:
;; http://www.cs.berkeley.edu/~pimentel

(add-to-list 'load-path "~/.emacs_lib/")        ; load packages from this dir
(add-hook 'LaTeX-mode-hook
          '(lambda ()
            (yas/minor-mode-off)
            (auto-fill-mode t)
            (whitespace-mode)
            ))
(abbrev-mode nil)

;; Enable these modes
;; Conditional statements are below
(defvar *linum-enabled* t)
(defvar *maxframe-enabled* t)
(defvar *ido-enabled* t)

;; language specific configurations
(defvar *java-cfg* t)
(defvar *c-cfg* t)
(defvar *c++-cfg* t)
(defvar *py-cfg* t)

;; Startup behavior
(setq inhibit-startup-message t)		; don't display the message at start
(setq make-backup-files nil)      		; prevent backup file creation
(setq-default transient-mark-mode t)	; turns highlighting on when selecting text
(setq-default indent-tabs-mode nil)     ; spaces instead of tabs
(menu-bar-mode t)                       ; small menu on top
(setq-default tab-width 4)      		; set the width of tabs
; change where you stop when pressing M-i
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56))	
(setq require-final-newline t)			; make the last line a new line
(fset 'yes-or-no-p 'y-or-n-p)			; type "y" instead of "yes"
(setq scroll-step 1)                    ; only scroll one line at a time
(show-paren-mode t)

;; global bindings
(global-set-key (kbd "C-. e") 'eval-region)
(global-set-key (kbd "C-. c") 'comment-region)
(global-set-key (kbd "C-. u") 'uncomment-region)
(global-set-key (kbd "C-. r") 'revert-buffer)
(global-set-key (kbd "C-. k") 'delete-this-buffer-and-file)
(global-set-key (kbd "M-p") 'scroll-down)
(global-set-key (kbd "M-n") 'scroll-up)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-^") 'enlarge-window)
(global-set-key (kbd "C-}") 'enlarge-window-horizontally)
(global-set-key (kbd "M-SPC") 'auto-complete)
(setq confirm-nonexistent-file-or-buffer nil)

;; put backups in this folder
(setq backup-directory-alist '(("." . "~/.emacs_backups")))

;; Enable global line numbers in the left hand column
(when *linum-enabled*
  (require 'linum)
  (global-linum-mode t)
  )


;; display the column number in the status bar
(column-number-mode t)

(setq-default fill-column 80)

;; maximize the window when in XEmacs
(require 'maxframe)
(add-hook 'window-setup-hook 'maximize-frame t)
(set-frame-parameter nil 'fullscreen 'fullboth)

;; move between windows with the meta+arrow keys
(if window-system
    (windmove-default-keybindings 'meta)
    ;;(tooltip-mode -1)
    ;;(setq tooltip-use-echo-area t)
  (progn
    (global-set-key [M-left]  'windmove-left)
    (global-set-key [(alt up)]    'windmove-up)
    (global-set-key [(alt right)] 'windmove-right)
    (global-set-key [(alt down)]  'windmove-down)))

;; put specific files in different modes
(setq auto-mode-alist
      (append
       ;; text-mode if a README or COMMIT_EDITMSG
       '(("README" . text-mode)
         ("COMMIT_EDITMSG" . text-mode))
       auto-mode-alist))

; load Emacs Speaks Statistics (ESS)
(load "~/.emacs_lib/ess-5.12/lisp/ess-site")
(require 'ess-site)
;; (setq inferior-R-program-name "/opt/local/bin/R")

;; ido for significantly better file/buffer switching
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)   ;; fuzzy matching
(setq ido-everywhere t)
(setq ido-create-new-buffer 'always)
(setq ido-ignore-buffers
      '("\\` " "^\\*ESS\\*" "^\\*Messages\\*" "^\\*Help\\*" "^\\*Buffer"
        "^\\*.*Completions\\*$" "^\\*Ediff" "^\\*tramp" "^\\*cvs-"
        "_region_" " output\\*$" "^TAGS$" "^\*Ido")
      ido-ignore-files
      '("\\`auto/" "\\.prv/" "_region_" "\\`CVS/" "\\`#" "\\`.#" "\\`\\.\\./"
        "\\`\\./"))


; save previous session
; (require 'desktop)

; swap buffers in different windows
(require 'buffer-move)
(global-set-key [C-M-right] 'buf-move-right)
(global-set-key [C-M-left] 'buf-move-left)
(global-set-key [C-M-up] 'buf-move-up)
(global-set-key [C-M-down] 'buf-move-down)

;;; yas mode
;;  Really cool snippet expansion
(add-to-list 'load-path "~/.emacs_lib/yasnippet-0.6.1c")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs_lib/yasnippet-0.6.1c/snippets")
(setq yas/root-directory "~/.emacs_lib/hp-snippets")
(yas/load-directory yas/root-directory)
(setq yas/prompt-functions '(yas/dropdown-prompt yas/x-prompt))
(setq abbrev-mode nil)

;; turn yas on these modes

(add-hook 'java-mode-hook 'yas/minor-mode-on)
(add-hook 'matlab-mode-hook 'yas/minor-mode-on)
(add-hook 'org-mode-hook 'yas/minor-mode-on)


;;; Hippie expand
(global-set-key (kbd "M-/") 'hippie-expand)

; set the hippie-expand function list
; press M-/ to expand any text
; it will search the funciton list and expand it (if it can)
; credit: http://trey-jackson.blogspot.com/2007/12/emacs-tip-5-hippie-expand.html
(setq hippie-expand-try-functions-list '(yas/hippie-try-expand
                                         try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name try-expand-all-abbrevs
                                         try-expand-list try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

(require 'autopair)
(autopair-global-mode)
(setq autopair-autowrap t)

;; Column stuff
(put 'set-goal-column 'disabled nil)

;; allows you to output your buffer (color included) to an html file
;; M-x htmlize-buffer OR htmlize-region OR htmlize-file
(require 'htmlize)

;; MATLAB mode
(add-to-list 'load-path "~/.emacs_lib/matlab-emacs")
(load-library "matlab-load")

(setq kill-buffer-query-functions
      (remq 'process-kill-buffer-query-function
            kill-buffer-query-functions))

;; delete files when you close the buffer
(defun delete-this-buffer-and-file ()
  "Removes file connected to current buffer and kills buffer."
  (interactive)
  (let ((filename (buffer-file-name))
        (buffer (current-buffer))
        (name (buffer-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (when (yes-or-no-p "Are you sure you want to remove this file? ")
        (delete-file filename)
        (kill-buffer buffer)
        (message "File '%s' successfully removed" filename)))))


;;; put customizations in this file
;;  a hack to get rid of all the GUI configuration crap
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; CC-mode configuration
(setq-default c-basic-offset 4)
(setq c-default-style '((java-mode . "java")
                        (awk-mode . "awk")
                        (other . "linux")))


(setq c-mode-hook
    (function (lambda ()
                (setq indent-tabs-mode nil)
                (setq c-indent-level 4))))
(setq objc-mode-hook
    (function (lambda ()
                (setq indent-tabs-mode nil)
                (setq c-indent-level 4))))
(setq c++-mode-hook
    (function (lambda ()
                (setq whitespace-line-column fill-column)
                (setq indent-tabs-mode nil)
                (setq c-indent-level 4))))


;; function decides whether .h file is C or C++ header, sets C++ by
;; default because there's more chance of there being a .h without a
;; .cc than a .h without a .c (ie. for C++ template files)
(defun c-c++-header ()
  "sets either c-mode or c++-mode, whichever is appropriate for
header"
  (interactive)
  (let ((c-file (concat (substring (buffer-file-name) 0 -1) "c")))
    (if (file-exists-p c-file)
        (c-mode)
      (c++-mode))))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c-c++-header))

;;; Autocomplete
;; I use autocomplete to popup a menu of possible completions
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs_lib/ac-dict")
(ac-config-default)
(setq-default ac-auto-show-start nil)
(setq-default ac-auto-start nil)
(setq-default ac-auto-show-menu nil)
;; (setq-default ac-delay 0.5)

(setq-default ac-use-menu-map t)

;; Reference:
;; http://stackoverflow.com/questions/1587972/how-to-display-indentation-guides-in-emacs
(defun aj-toggle-fold ()
  "Toggle fold all lines larger than indentation on current line"
  (interactive)
  (let ((col 1))
    (save-excursion
      (back-to-indentation)
      (setq col (+ 1 (current-column)))
      (set-selective-display
       (if selective-display nil (or col 1))))))
(global-set-key (kbd "C-M-i") 'aj-toggle-fold)

;;; Whitespace minor-mode
;;  I use it to visualize stuff longer than the fill-column
(require 'whitespace)
(setq whitespace-style
  '(lines-tail))
(setq hp-long-line-face (make-face 'hp-long-line-face))
(set-face-background 'whitespace-line "yellow4")
(set-face-foreground 'whitespace-line "black")
(setq whitespace-line-column fill-column)


;;; Java-mode stuff
;; 
(add-hook 'java-mode-hook
          '(lambda()
             (yas/minor-mode-on)
             (setq whitespace-line-column fill-column)
             (whitespace-mode)
             ))

;;; Emacs-Speaks Statistics
(add-hook 'ess-mode-hook
          '(lambda()
             (yas/minor-mode-on)
             (setq whitespace-line-column fill-column)
             (whitespace-mode)
             ))

;;; Example of how to set modes
;; (setq hp-c-style
;;       '((do-stuff)
;;         (do-more-stuff)
;;         (...)
;;         (last thing)
;;         ))

(global-set-key (kbd "C-. l") 'org-store-link)
(global-set-key (kbd "C-. a") 'org-agenda)
(global-set-key (kbd "C-. b") 'org-iswitchb)
;; AucTex mode  
(require 'tex-site)
;; use pdflatex
(add-hook 'LaTeX-mode-hook 'TeX-PDF-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; (add-hook 'LaTeX-mode-hook
;;           (add-to-list 'TeX-output-view-style
;;              '("^pdf$" "." "open %o")))
;;             '("^pdf$" "." "open %n %o %b")))

;; (setq TeX-output-view-style ('(

;;                                (“^pdf$” “.” “view %o”)
;;                                (“^ps$” “.” “gv %o”)
;;                                (“^dvi$” “.” “xdvi %o”)
;;                                )))
;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)
;; (setq-default TeX-master nil)

;; (add-hook 'LaTeX-mode-hook 'auto-fill-mode)
;; 
;; 
;; (setq reftex-plug-into-AUCTeX t)

;; Colors
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     ))

(defun inspiration-hp1 ()
  "Theme generated by Sweyla: http://inspiration.sweyla.com/code/seed/289487/"
  (interactive)
  (color-theme-install
   '(inspiration-hp1
     ((background-color . "#FFFFFE")
      (foreground-color . "#000000")
      (background-mode . bright)
      (border-color . "#C8C8C8")
      (cursor-color . "#c0c0c0")
      (mouse-color . "#C8C8C8"))
     (mode-line ((t (:foreground "#000000" :background "#C8C8C8"))))
     (region ((t (:background "#C8C8C8"))))

     (font-lock-comment-face ((t (:foreground "#254ED4"))))
     (font-lock-constant-face ((t (:foreground "#823057"))))
     (font-lock-builtin-face ((t (:foreground "#3D46E5"))))
     (font-lock-function-name-face ((t (:foreground "#B0005A"))))
     (font-lock-variable-name-face ((t (:foreground "#001A66"))))
     (font-lock-keyword-face ((t (:foreground "#4520B4"))))
     (font-lock-string-face ((t (:foreground "#FF234E"))))
     (font-lock-doc-string-face ((t (:foreground "#FF234E"))))
     (font-lock-type-face ((t (:foreground "#460074"))))
     )))
(provide 'inspiration-hp1)

(defun inspiration-273632 ()
  "Theme generated by Sweyla: http://inspiration.sweyla.com/code/seed/273632/"
  (interactive)
  (color-theme-install
   '(inspiration-273632
     ((background-color . "#FFFFFF")
      (foreground-color . "#000000")
      (background-mode . bright)
      (border-color . "#C8C8C8")
      (cursor-color . "#000000")
      (mouse-color . "#C8C8C8"))
     (mode-line ((t (:foreground "#000000" :background "#C8C8C8"))))
     (region ((t (:background "#C8C8C8"))))

     (font-lock-comment-face ((t (:foreground "#240080"))))
     (font-lock-constant-face ((t (:foreground "#003F53"))))
     (font-lock-builtin-face ((t (:foreground "#000187"))))
     (font-lock-function-name-face ((t (:foreground "#FF5416"))))
     (font-lock-variable-name-face ((t (:foreground "#003991"))))
     (font-lock-keyword-face ((t (:foreground "#530CAE"))))
     (font-lock-string-face ((t (:foreground "#257D3D"))))
     (font-lock-doc-string-face ((t (:foreground "#257D3D"))))
     (font-lock-type-face ((t (:foreground "#009CEC"))))
     )))

(provide 'inspiration-hp2)
(defun inspiration-hp2 ()
  "Theme generated by Sweyla: http://inspiration.sweyla.com/code/seed/220192/"
  (interactive)
  (color-theme-install
   '(inspiration-220192
     ((background-color . "#FEFFFF")
      (foreground-color . "#000000")
      (background-mode . bright)
      (border-color . "#C8C8C8")
      (cursor-color . "#000000")
      (mouse-color . "#C8C8C8"))
     (mode-line ((t (:foreground "#000000" :background "#C8C8C8"))))
     (region ((t (:background "#C8C8C8"))))

     (font-lock-comment-face ((t (:foreground "#5F9373"))))
     (font-lock-constant-face ((t (:foreground "#5400C6"))))
     (font-lock-builtin-face ((t (:foreground "#344388"))))
     (font-lock-function-name-face ((t (:foreground "#B41DC4"))))
     (font-lock-variable-name-face ((t (:foreground "#4E35AA"))))
     (font-lock-keyword-face ((t (:foreground "#9456AB"))))
     (font-lock-string-face ((t (:foreground "#416A8F"))))
     (font-lock-doc-string-face ((t (:foreground "#416A8F"))))
     (font-lock-type-face ((t (:foreground "#0700FF"))))
     )))
(provide 'inspiration-hp2)

;; (require 'multi-term)
;; (setq multi-term-program "/bin/bash")

;;; TODO:
;;; - Fix column width thing in different modes (Whitespace)
;;; - Set whitespace on different modes
;;; - Set all different modes correctly (ie. (if *mode-var* (do stuff)))
;;; - Look into "Midnight" package
;;; - Look into overwrite mode
;;; - Fix the () highlighting issue
;;; - Setup Gnus
