;;; swap buffers in different windows
(require 'buffer-move)
(global-set-key [C-M-right] 'buf-move-right)
(global-set-key [C-M-left] 'buf-move-left)
(global-set-key [C-M-up] 'buf-move-up)
(global-set-key [C-M-down] 'buf-move-down)
