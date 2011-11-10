;; Colors

;; set the font size
;; font-size is 1/10pt. 100 gives you 10pt
;; (set-face-attribute 'default nil :height 120)

(setq default-frame-alist
      '(
        (top . 0)
        (left . 60)
        (width . 95)
        (height . 60)
        (cursor-color . "turquoise")
        ))

(defun hp-set-font (frame)
  "Interval function"
  (set-frame-parameter frame 'font "Menlo-12")
  )

;; a hack to make sure that opening the help dialog goes to the other window,
;; not splitting the current window
(setq split-height-threshold nil)

(set-frame-font "Menlo-12" t)
;; (set-frame-font "Menlo-12")

(if (>= emacs-major-version 23)
    (hp-set-font frame-initial-frame)
)

(font-lock-add-keywords
 'python-mode
 '(("\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))

(add-hook 'c-mode-common-hook
               (lambda ()
                (font-lock-add-keywords nil
                 '(("\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))))

;; (add-hook 'python-mode-common-hook
;;           (lambda ()
;;             (font-lock-add-keywords nil
;;             '(("\\<\\(FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face prepend)))))


;; (add-hook 'after-make-frame-functions
;;           'hp-set-font
;;           )

;; FIXME: Need to fix font-lock-number
;; (make-face 'font-lock-number-face)
;; (set-face-foreground 'font-lock-number-face "#ff9632")
;; (setq font-lock-number-face 'font-lock-number-face)
;; (defvar font-lock-number "[0-9]+\\([eE][+-]?[0-9]*\\)?")
;; (defvar font-lock-hexnumber "0[xX][0-9a-fA-F]+")

;; (add-hook 'font-lock-mode-hook
;;   (function (lambda ()
;;     (setq font-lock-keywords
;;       (append font-lock-keywords
;;         (list
;;           (list (concat "\\<\\(" font-lock-number "\\)\\>" )
;;                 (list 0 font-lock-number-face))
;;           (list (concat "\\<\\(" font-lock-hexnumber "\\)\\>" )
;;                 (list 0 font-lock-number-face))))))))


(defun hp-color()
  (interactive)
  (color-theme-install
   '(hp-color
     (
      (cursor-color . "turquoise")
      )
     (mode-line ((t (:background "turquoise" :foreground "black"))))
     (mode-line-inactive ((t (:background "white" :foreground "gray20"))))
     (region ((t (:background "#aaeeee"))))
     (font-lock-comment-face ((t (:slant italic :foreground "#0000FF"))))
     (font-lock-type-face ((t(:foreground "#22bb22"))))
     (font-lock-function-name-face ((t (:foreground "#000000" :weight bold))))
     (font-lock-keyword-face ((t (:foreground "#690593" :weight bold))))
     (font-lock-warning-face ((t (:foreground "#FF0000" :background "#9cff8c" :weight bold))))
     (font-lock-doc-string-face ((t (:foreground "#FF234E"))))
     (font-lock-number-face ((t (:forground "#ff9632"))))
     (font-lock-variable-name-face ((t (:foreground "#7e7d10"))))
     (font-lock-constant-face ((t (:foreground "#21857f"))))
     ))
  )

(provide 'hp-color)

(defun hp-dark ()
  "Theme generated by Sweyla: http://themes.sweyla.com/seed/986269/"
  (interactive)
  (color-theme-install
   '(hp-dark
     (
      (cursor-color . "gray")
      )
     (
      (default ((t (:foreground "#ffffff" :background "#1c1d20"))))
      (background-color . "#c0c0c0")
      ;; (background-color . "#000000")
      ;; ;; (background-color . "#1c1d20")
      ;; (foreground-color . "#FFFFFF")
      (background-mode . dark)
      (border-color . "#323232")
      (cursor-color . "#FFFFFF")
      (mouse-color . "#323232"))
     (mode-line ((t (:foreground "#FFFFFF" :background "#292a2f"))))
     (region ((t (:background "#000000"))))

     (font-lock-comment-face ((t (:foreground "#A67500"))))

     (font-lock-constant-face ((t (:foreground "#FF43C6"))))
     (font-lock-builtin-face ((t (:foreground "#FF5F3F"))))

     (font-lock-function-name-face ((t (:foreground "#ffffff" :weight bold))))
     (font-lock-keyword-face ((t (:foreground "#3AAACF" :weight bold))))

     (font-lock-variable-name-face ((t (:foreground "#00BB3F"))))

     (font-lock-string-face ((t (:foreground "#216278"))))
     (font-lock-doc-string-face ((t (:foreground "#5B833F"))))

     ;; (font-lock-type-face ((t (:foreground "#A29C8D"))))
     (font-lock-type-face ((t (:foreground "#000000"))))
     )))
(provide 'hp-dark)

(defun sweyla889165 ()
  "Theme generated by Sweyla: http://themes.sweyla.com/seed/889165/"
  (interactive)
  (color-theme-install
   '(sweyla889165
     ((background-color . "#1c1d20")
      (foreground-color . "#FFFFFF")
      (background-mode . dark)
      (border-color . "#323232")
      (cursor-color . "#FFFFFF")
      (mouse-color . "#323232"))
     (mode-line ((t (:foreground "#FFFFFF" :background "#323232"))))
     (region ((t (:background "#323232"))))

     (font-lock-comment-face ((t (:foreground "#668DFF"))))

     (font-lock-constant-face ((t (:foreground "#FF00DA"))))
     (font-lock-builtin-face ((t (:foreground "#51E0FF"))))

     (font-lock-function-name-face ((t (:foreground "#2B6887" :weight bold))))
     (font-lock-keyword-face ((t (:foreground "#8B357A" :weight bold))))

     (font-lock-variable-name-face ((t (:foreground "#A70375"))))

     (font-lock-string-face ((t (:foreground "#FF8FDA"))))
     (font-lock-doc-string-face ((t (:foreground "#FF8FDA"))))
     (font-lock-type-face ((t (:foreground "#ED736A"))))
     )))
(provide 'sweyla889165)

(if window-system
    (progn
       (add-to-list 'load-path "/opt/local/share/emacs/site-lisp/color-theme-6.6.0")
       (require 'color-theme)
       ;; (color-theme-initialize)
       (setq color-theme-is-global t)
       ;; (hp-color)
       (sweyla889165)
       ;; (hp-dark)
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

