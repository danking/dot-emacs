;;; languages.el

(require 'bnf-mode)

(require 'latex-pdf-preview)

;;; Python
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

;; I need to investigate what is wrong with the haskell mode auto-mode entry
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook
          (lambda () (local-set-key (kbd "C-c C-n") 'flyspell-goto-next-error)))

;;; SML
(setq-default sml-indent-level 2)

;;; Ruby
(require 'ruby-stuff)

;;; Java
(require 'java-complete) ;; TODO: make this actually work right
(require 'java-mode-indent-annotations)
(require 'flymake-maven)

(defun jtags-find-class (class-name)
  (interactive "sClass name: \n")
  (let ((definition (jtags-lookup-identifier class-name)))
    (if (null definition)
        (message "Class not found!")

      ;; Record whence we came
      (if (featurep 'xemacs)
          (push-tag-mark)
        (ring-insert find-tag-marker-ring (point-marker)))

      (find-file (jtags-definition-file definition))
      (goto-char (point-min))
      (forward-line (1- (jtags-definition-line definition)))
      (message "Found %s in %s"
               (jtags-definition-name definition)
               (jtags-definition-file definition)))))

(add-hook 'java-mode-hook 'java-mode-indent-annotations-setup)
(add-hook 'java-mode-hook 'flymake-mode-on)
(add-hook 'java-mode-hook 'flymake-java-mvn-mode-hook) ;; must come after flymake-mode-on
(add-hook 'java-mode-hook
          (lambda ()
            (local-set-key (kbd "C-<tab>") 'java-complete)
            (local-set-key (kbd "C-c ;") 'jtags-find-class)
            (setq c-basic-offset 4)
            (setq tab-width 4)
            (setq indent-tabs-mode nil)
            ))

(setq tags-table-list '(
                        "/Users/daniel.king/projects/term-server"
                        "/Users/daniel.king/projects/agent-master"
                        "/Users/daniel.king/projects/aggregation-server"
                        "/Users/daniel.king/projects/provider-agent"
                        "/Users/daniel.king/projects/resolver"
                        "/Users/daniel.king/projects/pubsub"
                        "/Users/daniel.king/projects/jdk8-source/"
                        ))
(setq tags-revert-without-query 't)
(setq tags-auto-read-changed-tag-files 't)

;;; CSS
(setq css-indent-offset 2)
(setq css-indent-level 2)

;;; Javascript
(autoload 'javascript-mode "javascript" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))

;;; Markdown
(require 'markdown-mode)
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
                            (flyspell-mode 1)))
(require 'wc-mode)

;;; R
(require 'ess)

;;; Erlang
(add-to-list 'auto-mode-alist '("\\.erl?$" . erlang-mode))

;;; C
(add-hook 'c-mode-hook (lambda ()
                         (show-paren-mode t)))

;;; Pandoc

(add-hook 'markdown-mode-hook 'pandoc-mode)

;;; OCaml

(add-to-list 'auto-mode-alist
             '("\\.ml[ily]?$" . tuareg-mode))
(add-to-list 'auto-mode-alist
             '("\\.topml$" . tuareg-mode))

(provide 'languages)
;;; languages.el ends here
