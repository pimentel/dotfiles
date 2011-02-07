(load-file "~/.emacs_lib/cedet-1.0pre7/common/cedet.el")
(global-ede-mode 1)
(semantic-load-enable-excessive-code-helpers)
(global-srecode-minor-mode 1)            ; Enable template insertion menu

(setq ac-sources (append ac-sources '(ac-source-semantic)))

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

;; Projects for SemanticDB
(ede-cpp-root-project "Cufflinks Assembler Branch"
                :name "Cufflinks Assembler Branch"
                :file "~/Documents/lmcb_research/cufflinks/branches/assembler/src/gff.h"
                :include-path '("/"
                               )
                :system-include-path '()
                )

(defun my-cedet-hook ()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
  (local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle))
(add-hook 'c-mode-common-hook 'my-cedet-hook)

