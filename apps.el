(add-to-list 'load-path "~/.emacs.d/mingus/")
(autoload 'mingus "mingus-stays-home")

(require 'cl) ;; for lexical-let
;; fucking 3pic switcheroo
(global-set-key (kbd "C-c m")
                (lexical-let ((previous-buffer (current-buffer)))
                  (lambda ()
                    (interactive)
                    (if (string-match "\*Mingus.*" (buffer-name))
                        (switch-to-buffer previous-buffer)
                        (progn
                          (setq previous-buffer (current-buffer))
                          (mingus))))))

(provide 'apps)
