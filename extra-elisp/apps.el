(add-to-list 'load-path "~/.emacs.d/mingus/")
(autoload 'mingus "mingus-stays-home")

(require 'cl) ;; for lexical-let
;; fucking 3pic switcheroo
(lexical-let ((previous-buffer (current-buffer)))
  (defun mingus-switch-in/out ()
    "Switches between a mingus buffer and the buffer which originally called this procedure."
    (interactive)
    (if (string-match "\*Mingus.*" (buffer-name))
        (switch-to-buffer previous-buffer)
      (progn
        (setq previous-buffer (current-buffer))
        (mingus)))))
(global-set-key (kbd "C-c m") 'mingus-switch-in/out)

(add-to-list 'load-path "~/.emacs.d/gist.el")
(require 'gist)

(provide 'apps)
