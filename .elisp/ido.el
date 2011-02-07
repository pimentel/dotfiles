;; ido for significantly better file/buffer switching
(require 'ido)
(ido-mode 'both)
(setq ido-enable-flex-matching t)   ;; fuzzy matching
(setq ido-everywhere t)
(setq ido-create-new-buffer 'always)
(setq ido-ignore-buffers
      '("\\` " "^\\*ESS\\*" "^\\*Messages\\*" "^\\*Help\\*" "^\\*Buffer"
        "^\\*.*Completions\\*$" "^\\*Ediff" "^\\*tramp" "^\\*cvs-"
        "_region_" " output\\*$" "^TAGS$" "^\*Ido")
      ido-ignore-files
      '("\\`auto/" "\\.prv/" "_region_" "\\`CVS/" "\\`#" "\\`.#" "\\`\\.\\./"
        "\\`\\./"))
(setq ido-use-filename-at-point nil)
(setq ido-confirm-unique-completion t)

;; FIXME
;; Currently:
;; disable auto searching for files unless called explicitly
;; What I want:
;; Automatically searches... if I press a key, then disables
(setq ido-auto-merge-delay-time 99999)
(define-key ido-file-dir-completion-map (kbd "C-. s")
  (lambda()
    (interactive)
    (ido-initiate-auto-merge (current-buffer))))
