(autoload 'js2-mode "js2" nil t)
(setq auto-mode-alist
      (append
       ;; text-mode if a README or COMMIT_EDITMSG
       '(("\\.js" . js2-mode)
         ("\\.json" . js2-mode)
         )
       auto-mode-alist))
