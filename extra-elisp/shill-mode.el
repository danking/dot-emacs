(require 'generic-x) ;; we need this

(define-generic-mode
    'shill-mode                     ;; name of the mode to create
  '("#")                            ;; comments start with '!!'
  '("if" "do" "for" "val" "var"
    "in" "provide" "require" "->"
    "else" "then")                  ;; some keywords
  '(("=" . 'font-lock-operator)     ;; '=' is an operator
    (";" . 'font-lock-builtin))     ;; ';' is a built-in
  '("\\.cap$" "\\.amb$")            ;; files for which to activate this mode
  nil                               ;; other functions to call
  "A mode for shill files"          ;; doc string for this mode
  )

(provide 'shill-mode)
