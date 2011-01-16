;;; languages.el

;;; Python
;(setq-defualt python-guess-indent nil)
(add-hook 'python-mode-hook 'longlines-mode)
(setq-default python-indent 2)

;;; Scheme
;; REPL binary
(add-to-list 'auto-mode-alist '("\\.rkt$" . scheme-mode))
(set-variable 'scheme-program-name "mzscheme")
;; Paredit
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)
(add-sexp-languages-hook (lambda ()
                           (paredit-mode +1)
                           (show-paren-mode t)))
(add-hook 'scheme-mode-hook (lambda ()
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

;;; CSS
(setq css-indent-offset 2)
(setq css-indent-level 2)

;;; Javascript
(autoload 'javascript-mode "javascript" nil t)
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-auto-indent-flag nil)

;;; BNFs
(define-generic-mode 'bnf-mode
  () ;; comment char: inapplicable because # must be at start of line
  nil ;; keywords
  '(
    ("^#.*"       . 'font-lock-comment-face) ;; comments at start of line
    ("^<.*?>"     . 'font-lock-function-name-face) ;; LHS nonterminals
    ("<.*?>"      . 'font-lock-builtin-face) ;; other nonterminals
    ("::="        . 'font-lock-const-face) ;; "goes-to" symbol
    ("\|"         . 'font-lock-warning-face) ;; "OR" symbol
    ("\"[^\"]*\"" . 'font-lock-keyword-face) ;; literals
    ("\*"         . 'font-lock-warning-face) ;; Kleene star
    ("\+"         . 'font-lock-warning-face) ;; 1 or more
   )
  '("\\.bnf\\'") ;; filename suffixes
  nil ;; extra function hooks
  "Major mode for BNF highlighting.")

;;; Markdown
(autoload 'markdown-mode "markdown-mode/markdown-mode.el"
  "markdown mode" t)
(add-to-list 'auto-mode-alist
             '("\\.\\(md\\|text\\|markdown\\|mkd\\)$" . markdown-mode))

(defun markdown-pdf ()
  "Run markdown2pdf on the buffer and place output in ../ with buffer name"
  (interactive)
  (string-match "\\(.*/\\)\\([^/]\\)$" buffer-file-name)
  (let* ((buffer-dir (match-string 1)) ; extract the first group from prev match
         (output-filename (replace-regexp-in-string "\\.[^.]*$"
                                                    ".pdf"
                                                    (buffer-name)))
         (output-file-path (concat buffer-dir "../" output-filename)))
    (call-process "markdown2pdf"
                  buffer-file-name
                  "*markdown2pdf-output*"
                  (concat "-o " output-file-path))
    (call-process "gnome-open" nil nil output-file-path)))

(provide 'languages)
