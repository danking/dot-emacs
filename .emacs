;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Dan King's .emacs                                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path
             (if (eq system-type 'gnu-linux)
                 "/home/danking/.emacs.d"
                 "/Users/danking/.emacs.d"))
;; on OS X, brew installs things here
(add-to-list 'exec-path "/usr/local/bin")

;; package manager
(require 'package)
;; the marmalade repo
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'dot-emacs-utils)

(require 'macros)
(require 'interface)
(require 'languages)
(require 'shellfixes)
(require 'coding-utilities)
(require 'general-utilities)
(require 'org-setup)
(require 'apps)
(require 'etc)
(require 'emacs-utilities)
;; if we don't have a system specific file, don't show an error, but if such a
;; file exists, load it.
(require 'system-specific nil 'noerror)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#3f3f3f" "#cc9393" "#7f9f7f" "#f0dfaf" "#8cd0d3" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(custom-safe-themes (quote ("e6fc3dce56058259b0f17ad11a9f38a516aa5215792b5e625296049a9c955f9d" "bb3efc4940d4a22799e00e66ae3b530f5db5bd2930d330eab13de8da182f47b8" "5e2711f52396e5b919b1d800791749136362a418886a71927de1606d375302ff" "36c39ff561a91f1b2f03fe90228073bfac0a5664580ee649e249caa3c8361b3f" "8b7c845da6ef5e6a832b41e41d2a2cdd0bb1533de63cc45cb9db650e85471ac1" "71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" default)))
 '(erc-hide-list (quote ("JOIN" "NICK" "PART" "QUIT")))
 '(fci-rule-color "#383838")
 '(geiser-default-implementation (quote racket))
 '(geiser-racket-extra-keywords (quote ("define-syntax-rule" "provide" "require" "unless" "when" "with-handlers" "define-syntax-class" "module" "module*" "module+" "for" "for*" "for/fold" "for/vector" "for/first" "for/last" "for/list" "for*/fold" "for*/first" "for*/last" "define-values" "define/match" "match-define" "match-lambda" "match-lambda*" "match-lambda**" "for*/matrix:" "fo/matrix:")))
 '(geiser-racket-init-file "~/.racketrc")
 '(ido-create-new-buffer (quote never))
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(ido-use-filename-at-point (quote guess))
 '(ido-use-url-at-point t)
 '(ispell-highlight-face (quote flyspell-incorrect))
 '(ispell-program-name "aspell")
 '(javascript-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-enter-indents-newline nil)
 '(magit-revert-item-confirm t)
 '(mingus-mpd-host "192.168.1.2")
 '(mingus-use-ido-mode-p t)
 '(org-reveal-mathjax t)
 '(org-startup-folded t)
 '(org-startup-indented nil)
 '(org-table-use-standard-references nil)
 '(org-tree-slide-slide-in-effect nil)
 '(quack-default-program "racket")
 '(quack-fontify-threesemi-p nil)
 '(quack-pltish-keywords-to-fontify (quote ("and" "begin" "begin0" "c-declare" "c-lambda" "case" "case-lambda" "class" "class*" "class*/names" "class100" "class100*" "compound-unit/sig" "cond" "cond-expand" "define" "define-class" "define-const-structure" "define-constant" "define-embedded" "define-entry-point" "define-external" "define-for-syntax" "define-foreign-record" "define-foreign-type" "define-foreign-variable" "define-generic" "define-generic-procedure" "define-inline" "define-location" "define-macro" "define-method" "define-module" "define-opt" "define-public" "define-reader-ctor" "define-record" "define-record-printer" "define-record-type" "define-signature" "define-struct" "define-ustruct" "define-structure" "define-syntax" "define-syntax-set" "define-values" "define-values-for-syntax" "define-values/invoke-unit/sig" "define/match" "define/contract" "define/override" "define/private" "define/public" "define/kw" "delay" "do" "else" "exit-handler" "field" "if" "import" "inherit" "inherit-field" "init" "init-field" "init-rest" "instantiate" "interface" "lambda" "lambda/kw" "let" "let*" "let*-values" "let+" "let-syntax" "let-values" "let/ec" "letrec" "letrec-values" "letrec-syntax" "match" "match*" "match-lambda" "match-lambda*" "match-lambda**" "match-let" "match-let*" "match-letrec" "match-define" "mixin" "module" "module*" "module+" "opt-lambda" "or" "override" "override*" "namespace-variable-bind/invoke-unit/sig" "parameterize" "parameterize*" "parameterize-break" "private" "private*" "protect" "provide" "provide-signature-elements" "provide/contract" "public" "public*" "quasiquote" "quasisyntax" "quasisyntax/loc" "quote" "receive" "rename" "require" "require-for-syntax" "send" "send*" "set!" "set!-values" "signature->symbols" "super-instantiate" "syntax" "syntax/loc" "syntax-case" "syntax-case*" "syntax-parse" "syntax-error" "syntax-rules" "unit/sig" "unless" "unquote" "unquote-splicing" "when" "with-handlers" "with-method" "with-syntax" "define-type-alias" "define-struct:" "define:" "let:" "letrec:" "let*:" "lambda:" "plambda:" "case-lambda:" "pcase-lambda:" "require/typed" "require/opaque-type" "require-typed-struct" "inst" "ann" "for/matrix:" "for*/matrix:")))
 '(quack-programs (quote ("racket" "racket -il typed/racket" "scheme48" "scsh")))
 '(scheme-program-name "racket")
 '(smerge-command-prefix "C-c C-s")
 '(vc-follow-symlinks t))

;; who sets these shit colors?
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(eim-string-face ((t (:underline t :height 1.0))))
 '(eim-tooltip-face ((t (:inherit tooltip :height 2.0))))
 '(quack-pltish-comment-face ((t (:foreground "sandy brown"))))
 '(quack-pltish-defn-face ((t (:foreground "#bf0" :weight bold))))
 '(quack-pltish-keyword-face ((t (:foreground "#f00" :weight bold))))
 '(quack-pltish-paren-face ((t (:foreground "gray"))))
 '(quack-pltish-selfeval-face ((t (:foreground "#0a8" :weight normal))))
 '(tooltip ((t (:inherit variable-pitch :background "light yellow" :foreground "black" :height 4.0)))))

(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  bertlham                                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
