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
