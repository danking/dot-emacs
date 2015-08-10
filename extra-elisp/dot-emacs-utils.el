(defun add-sexp-languages-hook (thunk)
  (mapc (lambda (hook) (add-hook hook thunk))
        '(emacs-lisp-mode-hook
          scheme-mode-hook
          lisp-mode-hook
          lisp-interaction-mode-hook)))

(provide 'dot-emacs-utils)