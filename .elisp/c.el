(setq c-mode-hook
    (function (lambda ()
                (setq indent-tabs-mode nil)
                (setq ac-sources (append ac-sources '(ac-source-gtags)))
                (gtags-mode t)
                (local-set-key (kdb "C-. .") 'gtags-find-tag)
                (local-set-key (kbd "C-. ,") 'gtags-find-rtag)
                (setq c-indent-level 4))))
