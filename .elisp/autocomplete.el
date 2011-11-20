;;; Autocomplete
;; I use autocomplete to popup a menu of possible completions
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs_lib/ac-dict")
(ac-config-default)
(setq-default ac-auto-show-start nil)
(setq-default ac-auto-start nil)
(setq-default ac-auto-show-menu nil)
(setq-default ac-use-menu-map t)

;; Add the R config
(require 'ac-R)

;; LaTeX config
(require 'ac-math)
(add-to-list 'ac-modes 'latex-mode)   ; make auto-complete aware of {{{latex-mode}}}

(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
     (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
               ac-sources))
)

(add-hook 'LaTeX-mode-hook 'ac-latex-mode-setup)
