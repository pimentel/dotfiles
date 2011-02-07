(global-set-key (kbd "C-. e") 'eval-region)
(global-set-key (kbd "C-. c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-. r") 'revert-buffer)
(global-set-key (kbd "C-. n") 'rename-file-and-buffer)
(global-set-key (kbd "C-. i") 'overwrite-mode)
(global-set-key (kbd "C-. k") 'delete-this-buffer-and-file)
(global-set-key (kbd "C-. l") 'hp-downcase-char)
(global-set-key (kbd "C-. u") 'hp-upcase-char)
(global-set-key (kbd "M-SPC") 'auto-complete)
(global-set-key (kbd "M-p") 'scroll-down)
(global-set-key (kbd "M-n") 'scroll-up)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-^") 'enlarge-window)
(global-set-key (kbd "C-}") 'enlarge-window-horizontally)

;; FIXME
;; Make these local
(global-set-key (kbd "C-. o") 'gtags-find-tag-other-window)
(global-set-key (kbd "C-. .") 'gtags-find-tag)
(global-set-key (kbd "C-. ,") 'gtags-find-rtag)
(global-set-key (kbd "C-. g") 'djcb-gtags-create-or-update)

(global-set-key (kbd "C-M-i") 'aj-toggle-fold)
