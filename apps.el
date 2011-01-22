(add-to-list 'load-path "~/emacs.d/mingus/")
(autoload 'mingus "mingus-stays-home")

;; fucking 3pic switcheroo
(global-set-key (kbd "C-c m")
                (lexical-let ((previous-buffer (current-buffer)))
                  (lambda ()
                    (interactive)
                    (if (string-match "\*Mingus.*" (buffer-name))
                        (switch-to-buffer previous-buffer)
                        (mingus)))))

(provide 'apps)