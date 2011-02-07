;;; Whitespace minor-mode
;;  I use it to visualize stuff longer than the fill-column
(require 'whitespace)
(setq whitespace-style '(lines-tail))
(setq hp-long-line-face (make-face 'hp-long-line-face))
(set-face-background 'whitespace-line "yellow4")
(set-face-foreground 'whitespace-line "black")
(setq whitespace-line-column fill-column)
