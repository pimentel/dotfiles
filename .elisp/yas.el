;;; yas mode
;;  Really cool snippet expansion

(add-to-list 'load-path "~/.emacs_lib/yasnippet-0.6.1c")
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(require 'dropdown-list)
(yas/load-directory "~/.emacs_lib/yasnippet-0.6.1c/snippets")
(setq yas/root-directory "~/.emacs_lib/hp-snippets")
(yas/load-directory yas/root-directory)
(setq yas/prompt-functions '(yas/ido-prompt yas/dropdown-prompt))
(setq abbrev-mode nil)

;; turn yas on these modes
(add-hook 'java-mode-hook 'yas/minor-mode-on)
(add-hook 'matlab-mode-hook 'yas/minor-mode-on)
(add-hook 'org-mode-hook 'yas/minor-mode-on)
