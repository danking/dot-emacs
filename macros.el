(fset 'move-next-sexp-to-newline
   "\206\C-j")

(add-sexp-languages-hook
 (lambda ()
   (local-set-key (kbd "C-x j")
                  'move-next-sexp-to-newline)))

(provide 'macros)
