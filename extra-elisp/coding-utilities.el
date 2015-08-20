(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

(require 'magit-gh-pulls)
(add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)

(require 'flymake-cursor)

(provide 'coding-utilities)
;;; coding-utilities.el ends here
