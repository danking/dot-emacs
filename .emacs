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
(require 'general-utilities)
(require 'org-setup)
(require 'apps)
(require 'etc)
(require 'emacs-utilities)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(erc-hide-list (quote ("JOIN" "NICK" "PART" "QUIT")))
 '(geiser-default-implementation (quote racket))
 '(geiser-racket-extra-keywords (quote ("define-syntax-rule" "provide" "require" "unless" "when" "with-handlers" "define-syntax-class")))
 '(geiser-racket-init-file "~/.racketrc!not")
 '(ido-create-new-buffer (quote never))
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(ido-use-filename-at-point (quote guess))
 '(ido-use-url-at-point t)
 '(javascript-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-enter-indents-newline nil)
 '(magit-revert-item-confirm t)
 '(mingus-mpd-host "192.168.1.2")
 '(mingus-use-ido-mode-p t)
 '(quack-default-program "racket")
 '(quack-fontify-threesemi-p nil)
 '(quack-pltish-keywords-to-fontify (quote ("and" "begin" "begin0" "c-declare" "c-lambda" "case" "case-lambda" "class" "class*" "class*/names" "class100" "class100*" "compound-unit/sig" "cond" "cond-expand" "define" "define-class" "define-const-structure" "define-constant" "define-embedded" "define-entry-point" "define-external" "define-for-syntax" "define-foreign-record" "define-foreign-type" "define-foreign-variable" "define-generic" "define-generic-procedure" "define-inline" "define-location" "define-macro" "define-method" "define-module" "define-opt" "define-public" "define-reader-ctor" "define-record" "define-record-printer" "define-record-type" "define-signature" "define-struct" "define-ustruct" "define-structure" "define-syntax" "define-syntax-set" "define-values" "define-values-for-syntax" "define-values/invoke-unit/sig" "define/contract" "define/override" "define/private" "define/public" "define/kw" "delay" "do" "else" "exit-handler" "field" "if" "import" "inherit" "inherit-field" "init" "init-field" "init-rest" "instantiate" "interface" "lambda" "lambda/kw" "let" "let*" "let*-values" "let+" "let-syntax" "let-values" "let/ec" "letrec" "letrec-values" "letrec-syntax" "match" "match-lambda" "match-lambda*" "match-lambda**" "match-let" "match-let*" "match-letrec" "match-define" "mixin" "module" "opt-lambda" "or" "override" "override*" "namespace-variable-bind/invoke-unit/sig" "parameterize" "parameterize*" "parameterize-break" "private" "private*" "protect" "provide" "provide-signature-elements" "provide/contract" "public" "public*" "quasiquote" "quasisyntax" "quasisyntax/loc" "quote" "receive" "rename" "require" "require-for-syntax" "send" "send*" "set!" "set!-values" "signature->symbols" "super-instantiate" "syntax" "syntax/loc" "syntax-case" "syntax-case*" "syntax-parse" "syntax-error" "syntax-rules" "unit/sig" "unless" "unquote" "unquote-splicing" "when" "with-handlers" "with-method" "with-syntax" "define-type-alias" "define-struct:" "define:" "let:" "letrec:" "let*:" "lambda:" "plambda:" "case-lambda:" "pcase-lambda:" "require/typed" "require/opaque-type" "require-typed-struct" "inst" "ann")))
 '(quack-programs (quote ("racket" "racket -il typed/racket" "scheme48" "scsh")))
 '(smerge-command-prefix "C-c C-s")
 '(vc-follow-symlinks t))

;; who sets these shit colors?
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(quack-pltish-comment-face ((t (:foreground "#a60"))))
 '(quack-pltish-defn-face ((t (:foreground "#bf0" :weight bold))))
 '(quack-pltish-keyword-face ((t (:foreground "#f00" :weight bold))))
 '(quack-pltish-paren-face ((t (:foreground "#696"))))
 '(quack-pltish-selfeval-face ((t (:foreground "#0a8" :weight normal)))))

(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  bertlham                                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
