;;; Hippie expand

(global-set-key (kbd "M-/") 'hippie-expand)

;; set the hippie-expand function list
;; press M-/ to expand any text
;; it will search the funciton list and expand it (if it can)
;; credit: http://trey-jackson.blogspot.com/2007/12/emacs-tip-5-hippie-expand.html
(setq hippie-expand-try-functions-list '(yas/hippie-try-expand
                                         try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name try-expand-all-abbrevs
                                         try-expand-list try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))
