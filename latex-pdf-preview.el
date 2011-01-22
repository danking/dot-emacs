(defun latex-pdf-preview ()
  (interactive)
  (message buffer-file-name)
  (call-process "pdflatex"
                nil
                "*pdflatex-output*"
                nil
                buffer-file-name)
  (let ((output-filename (replace-regexp-in-string "\\.[^.]*$"
                                                   ".pdf"
                                                   buffer-file-name)))
    (find-file-other-window output-filename)))

(add-hook 'latex-mode-hook (lambda ()
                             (local-set-key (kbd "C-c p")
                                            'latex-pdf-preview)))

(provide 'latex-pdf-preview)
