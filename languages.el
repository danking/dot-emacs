;;; languages.el

(require 'bnf-mode)

(require 'latex-pdf-preview)

(require 'shill-mode)

;;; Python
;(setq-defualt python-guess-indent nil)
(setq-default python-indent 2)

;;; Scheme
;; Racket
(add-to-list 'auto-mode-alist '("\\.rkt?$" . scheme-mode))
(add-hook 'scheme-mode-hook
          (lambda ()
            (unless (or (file-exists-p "makefile")
                        (file-exists-p "Makefile"))
              (set (make-local-variable 'compile-command)
                   (concat "racket " buffer-file-name)))))
;; REPL binary
(set-variable 'scheme-program-name "mzscheme")
;; Paredit
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)
(add-sexp-languages-hook (lambda ()
                           (paredit-mode +1)
                           (show-paren-mode t)
                           (auto-fill-mode t)))

(defun kill-whitespace ()
 "Kill the whitespace between two non-whitespace characters"
 (interactive "*")
 (save-excursion
   (save-restriction
     (save-match-data
       (progn
         (re-search-backward "[^ \t\r\n]" nil t)
         (re-search-forward "[ \t\r\n]+" nil t)
         (replace-match "" nil nil))))))
(global-set-key (kbd "M-\\") 'kill-whitespace)

;; Geiser
;; now from package.el
;; (load-file "~/.emacs.d/geiser/build/elisp/geiser-load.el")

;; Indentation Rules
(defun setup-indentation-rules ()
  (put 'define/match 'scheme-indent-function 'defun)
  (put 'syntax-parse 'scheme-indent-function 1)
  (put '~> 'scheme-indent-function 1)
  (put '~>~ 'scheme-indent-function 1)
  (put 'for/sum 'scheme-indent-function 1)
  (put 'for/vector 'scheme-indent-function 1)
  (put 'for/hasheq 'scheme-indent-function 1)
  (put 'for/hasheqv 'scheme-indent-function 1)
  (put 'for/hash 'scheme-indent-function 1)
  (put 'for/list 'scheme-indent-function 1)
  (put 'for/first 'scheme-indent-function 1)
  (put 'for/fold 'scheme-indent-function 2)
  (put 'for/set 'scheme-indent-function 1)
  (put 'for/seteq 'scheme-indent-function 1)
  (put 'for/seteqv 'scheme-indent-function 1)
  (put 'for/or 'scheme-indent-function 1)
  (put 'for/and 'scheme-indent-function 1)
  (put 'for 'scheme-indent-function 1)
  (put 'for/list~>~ 'scheme-indent-function 1)
  (put 'for/set~>~ 'scheme-indent-function 1)
  (put 'for*/sum 'scheme-indent-function 1)
  (put 'for*/vector 'scheme-indent-function 1)
  (put 'for*/hasheq 'scheme-indent-function 1)
  (put 'for*/hasheqv 'scheme-indent-function 1)
  (put 'for*/hash 'scheme-indent-function 1)
  (put 'for*/list 'scheme-indent-function 1)
  (put 'for*/first 'scheme-indent-function 1)
  (put 'for*/fold 'scheme-indent-function 2)
  (put 'for*/set 'scheme-indent-function 1)
  (put 'for*/seteq 'scheme-indent-function 1)
  (put 'for*/seteqv 'scheme-indent-function 1)
  (put 'for*/or 'scheme-indent-function 1)
  (put 'for*/and 'scheme-indent-function 1)
  (put 'for* 'scheme-indent-function 1)
  (put 'for/sum: 'scheme-indent-function 3)
  (put 'for/vector: 'scheme-indent-function 3)
  (put 'for/hasheq: 'scheme-indent-function 3)
  (put 'for/hasheqv: 'scheme-indent-function 3)
  (put 'for/hash: 'scheme-indent-function 3)
  (put 'for/list: 'scheme-indent-function 3)
  (put 'for/first: 'scheme-indent-function 3)
  (put 'for/fold: 'scheme-indent-function 4)
  (put 'for/set: 'scheme-indent-function 3)
  (put 'for/seteq: 'scheme-indent-function 3)
  (put 'for/seteqv: 'scheme-indent-function 3)
  (put 'for/or: 'scheme-indent-function 3)
  (put 'for/and: 'scheme-indent-function 3)
  (put 'for: 'scheme-indent-function 3)
  (put 'for/matrix: 'scheme-indent-function 3)
  (put 'for/array: 'scheme-indent-function 3)
  (put 'for*/sum: 'scheme-indent-function 3)
  (put 'for*/vector: 'scheme-indent-function 3)
  (put 'for*/hasheq: 'scheme-indent-function 3)
  (put 'for*/hasheqv: 'scheme-indent-function 3)
  (put 'for*/hash: 'scheme-indent-function 3)
  (put 'for*/list: 'scheme-indent-function 3)
  (put 'for*/first: 'scheme-indent-function 3)
  (put 'for*/fold: 'scheme-indent-function 4)
  (put 'for*/set: 'scheme-indent-function 3)
  (put 'for*/seteq: 'scheme-indent-function 3)
  (put 'for*/seteqv: 'scheme-indent-function 3)
  (put 'for*/or: 'scheme-indent-function 3)
  (put 'for*/and: 'scheme-indent-function 3)
  (put 'for*: 'scheme-indent-function 3)
  (put 'for*/matrix: 'scheme-indent-function 3)
  (put 'for*/array: 'scheme-indent-function 3)
  (put 'match* 'scheme-indent-function 1)
  (put 'match-let 'scheme-indent-function 1)
  (put 'match-lambda 'scheme-indent-function 0)
  (put 'match-lambda* 'scheme-indent-function 0)
  (put 'module+ 'scheme-indent-function 1)
  (put 'module* 'scheme-indent-function 1)
  (put 'test-case 'scheme-indent-fucntion 1))

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
(add-hook 'haskell-mode-hook
          (lambda () (local-set-key (kbd "C-c C-n") 'flyspell-goto-next-error)))
(require 'flycheck-hdevtools)

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
(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))
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
                            (wc-mode 1)
                            (auto-fill-mode 1)
                            (refill-mode -1)
                            (flyspell-mode 1)
                            (typopunct-mode 1)))
(require 'typopunct)
(require 'wc-mode)

;;; R
(require 'ess)

;;; Erlang
(add-to-list 'auto-mode-alist '("\\.erl?$" . erlang-mode))

;;; C
(add-hook 'c-mode-hook (lambda ()
                         (show-paren-mode t)))

;;; Proof General
(load-file "~/.emacs.d/ProofGeneral-4.2/generic/proof-site.el")

;;; Agda
(add-to-list 'load-path
             "~/.emacs.d/agda-mode")
(require 'agda2)

(provide 'languages)
