;; maximize the window when in XEmacs

;; move between windows with the meta+arrow keys
(if window-system
    (windmove-default-keybindings 'meta)
  (progn
    (global-set-key [M-left]  'windmove-left)
    (global-set-key [(alt up)]    'windmove-up)
    (global-set-key [(alt right)] 'windmove-right)
    (global-set-key [(alt down)]  'windmove-down)))

;; this mode is REALLY obnoxious is Aquamacs
;; (don't turn it on there)
(if (not (boundp 'aquamacs-version))
    ((require 'maxframe)
     (add-hook 'window-setup-hook 'maximize-frame t)
     (set-frame-parameter nil 'fullscreen 'fullboth)))
