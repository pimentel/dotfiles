;; load Emacs Speaks Statistics (ESS)
(load "~/.emacs_lib/ess-5.12/lisp/ess-site")
(require 'ess-site)

(add-hook 'ess-mode-hook
          '(lambda()
             (yas/minor-mode-on)
             (setq whitespace-line-column fill-column)
             (whitespace-mode)
             (ess-set-style 'C++ 'quiet)
             ))
