(load-file "/opt/local/share/emacs/site-lisp/common/cedet.el")
(global-ede-mode 1)
(semantic-load-enable-excessive-code-helpers)
(global-srecode-minor-mode 1)            ; Enable template insertion menu

(setq ac-sources (append ac-sources '(ac-source-semantic)))
(setq ac-sources (append ac-sources '(ac-source-imenu)))


(require 'semantic-ia)
(require 'semantic-gcc)
(semantic-add-system-include "/opt/local/include" 'c++-mode)

;; if you want to enable support for gnu global
(require 'semanticdb-global)
;; (semanticdb-enable-gnu-global-databases 'c-mode)
;; (semanticdb-enable-gnu-global-databases 'c++-mode)

;; enable ctags for some languages:
;;  Unix Shell, Perl, Pascal, Tcl, Fortran, Asm
(semantic-load-enable-primary-exuberent-ctags-support)
(semantic-load-enable-code-helpers)

;; Projects for SemanticDB

(defun my-cedet-hook ()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
  (local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle))
(add-hook 'c-mode-common-hook 'my-cedet-hook)

