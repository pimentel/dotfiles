;; Harold Pimentel's Emacs configuration
;;
;; Latest version can be found at:
;; http://www.github.com/pimentel

(add-to-list 'load-path "~/.emacs_lib/")        ; load packages from this dir

;; Gloabl startup behavior
(load "~/.elisp/global")
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
;; (load "~/.elisp/color")
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
