(add-to-list 'load-path "~/.emacs.d/magit")
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'coding-utilities)