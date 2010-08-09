;;; languages.el

;;; Python
;(setq-defualt python-guess-indent nil)
(add-hook 'python-mode-hook 'longlines-mode)
(setq-default python-indent 2)

;;; Scheme
;; REPL binary
(set-variable 'scheme-program-name "mzscheme")
;; Paredit
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)
(add-sexp-languages-hook (lambda () (paredit-mode +1)))
(add-hook 'scheme-mode-hook (lambda ()
                              ; convert lambdas and arrows to Unicode
                              (define-abbrev-table 'global-abbrev-table
                                '(("lambda" "λ" nil 0)
                                  ("->" "→" nil 0)))
                              (abbrev-mode t)))

;; ElDoc
(require 'eldoc)
(eldoc-add-command
 'paredit-backward-delete
 'paredit-close-round)
;; Quack
(require 'quack)


;; SML
(setq-default sml-indent-level 2)


(require 'ruby-stuff)

;;; Java
(require 'java-complete)
(require 'java-mode-indent-annotations)
(add-hook 'java-mode-hook 'java-mode-indent-annotations-setup)
(add-hook 'java-mode-hook (lambda () (local-set-key (kbd "C-<tab>")
                                                    'java-complete)))

;;; CSS
(setq css-indent-offset 2)
(setq css-indent-level 2)

;;; Javascript
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-auto-indent-flag nil)


(provide 'languages)