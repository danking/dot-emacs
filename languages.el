;;; languages.el

(require 'bnf-mode)

(require 'latex-pdf-preview)

;;; Python
;(setq-defualt python-guess-indent nil)
(add-hook 'python-mode-hook 'longlines-mode)
(setq-default python-indent 2)

;;; Scheme
;; Racket
(add-to-list 'auto-mode-alist '("\\.rkt?$" . scheme-mode))
;; REPL binary
(set-variable 'scheme-program-name "mzscheme")
;; Paredit
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)
(add-sexp-languages-hook (lambda ()
                           (paredit-mode +1)
                           (show-paren-mode t)))
;; Geiser
(load-file "~/.emacs.d/geiser/build/elisp/geiser-load.el")

;; Indentation Rules
(defun setup-indentation-rules ()
  (put 'syntax-parse 'scheme-indent-function 1)
  (put 'for/hasheq 'scheme-indent-function 1)
  (put 'for/hasheqv 'scheme-indent-function 1)
  (put 'for/hash 'scheme-indent-function 1)
  (put 'for/list 'scheme-indent-function 1)
  (put 'for/first 'scheme-indent-function 1)
  (put 'for/fold 'scheme-indent-function 2)
  (put 'for/set 'scheme-indent-function 1)
  (put 'for/or 'scheme-indent-function 1)
  (put 'match-let 'scheme-indent-function 1)
  (put 'match-lambda 'scheme-indent-function 0)
  (put 'match-lambda* 'scheme-indent-function 0)
  (put 'define-match 'scheme-indent-function 0))

;; abbreviations
(add-hook 'scheme-mode-hook (lambda ()
                              (setup-indentation-rules)
                              ; convert lambdas and arrows to Unicode
                              (define-abbrev-table 'global-abbrev-table
                                '(("lambda" "λ" nil 0)
                                  ("->" "→" nil 0)))
                              ; this is really neat, but I don't want to create
                              ; not portable code.  I'll save it for writing
                              ; docs or impressing freshmen.
                              ;; (abbrev-mode t)
                              ))

;; ElDoc
(require 'eldoc)
(eldoc-add-command
 'paredit-backward-delete
 'paredit-close-round)
;; Quack
(require 'quack)

;;; Haskell
(load "~/.emacs.d/haskell-mode/haskell-site-file.el")
;; I need to investigate what is wrong with the haskell mode auto-mode entry
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

;;; SML
(setq-default sml-indent-level 2)

;;; Ruby
(require 'ruby-stuff)

;;; Java
(require 'java-complete) ;; TODO: make this actually work right
(require 'java-mode-indent-annotations)
(add-hook 'java-mode-hook 'java-mode-indent-annotations-setup)
(add-hook 'java-mode-hook (lambda () (local-set-key (kbd "C-<tab>")
                                                    'java-complete)))

;(require 'cedet)

;;; HTML
(defun html-preview ()
  (interactive)
  (start-process "open html file"
                 "*gnome-open-output*"
                 "google-chrome"
                 (buffer-file-name (current-buffer))))
(add-hook 'html-mode-hook (lambda () (local-set-key (kbd "C-c C-p")
                                                    'html-preview)))

;;; CSS
(setq css-indent-offset 2)
(setq css-indent-level 2)

;;; Javascript
(autoload 'javascript-mode "javascript" nil t)
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-auto-indent-flag nil)

;;; CoffeeScript
(require 'coffee-mode "~/.emacs.d/coffee-mode/coffee-mode.el")

;;; Markdown
(autoload 'markdown-mode "markdown-mode/markdown-mode.el"
  "markdown mode" t)
(add-to-list 'auto-mode-alist
             '("\\.\\(md\\|text\\|markdown\\|mkd\\)$" . markdown-mode))
(add-hook 'markdown-mode-hook (lambda ()
                                ; I think markdown-mode inherits text-mode
                                (refill-mode -1)
                                (auto-fill-mode 1)))

;;; English
(add-hook 'text-mode-hook (lambda ()
                            (refill-mode 1)
                            (flyspell-mode 1)))

(provide 'languages)
