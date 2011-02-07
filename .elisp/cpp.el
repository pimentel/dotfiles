(setq c++-mode-hook
    (function (lambda ()
                (setq whitespace-line-column fill-column)
                (setq indent-tabs-mode nil)
                ;; (define-key c++-mode-map "\C-co" 'gtags-find-tag-other-window)
                ;; (define-key c++-mode-map "\C-.." 'gtags-find-tag)
                ;; (define-key c++-mode-map "\C-.," 'gtags-find-rtag)
                (setq c-indent-level 4))))
