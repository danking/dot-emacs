;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Dan King's .emacs                                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "/home/danking/.emacs.d")

(require 'dot-emacs-utils)

(require 'macros)
(require 'interface)
(require 'languages)
(require 'shellfixes)
(require 'coding-utilities)
(require 'org-mode-setup)
(require 'emacs-utilities)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(javascript-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-enter-indents-newline nil)
 '(quack-programs (quote ("b" "bigloo" "csi" "csi -hygienic" "drscheme" "gosh"
                          "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa"
                          "mit-scheme" "mred" "mred -z" "mzscheme"
                          "mzscheme" "mzscheme -M errortrace"
                          "mzscheme -il r6rs" "mzscheme -il typed-scheme"
                          "mzscheme3m" "mzschemecgc" "rs" "scheme"
                          "scheme48" "scsh" "sisc" "stklos" "sxi"))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  bertlham                                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
