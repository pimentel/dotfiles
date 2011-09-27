;; (autoload 'gtags-mode "gtags" "" t)

(add-hook 'c++-mode-hook
          '(lambda()
             ;; (gtags-mode t)
             ;; (setq ac-sources (append ac-sources '(ac-source-gtags)))
             ;; (djcb-gtags-create-or-update)
             ))
