(defun latex-pdf-compile ()
  (interactive)
  (message "producing a new pdf")
  (call-process "pdflatex"
                nil
                "*pdflatex-output*"
                nil
                buffer-file-name))

(defun latex-pdf-preview ()
  (interactive)
  (message "producing a new pdf")
  (call-process "pdflatex"
                nil
                "*pdflatex-output*"
                nil
                buffer-file-name)
  (let ((output-filename (replace-regexp-in-string "\\.[^.]*$"
                                                   ".pdf"
                                                   buffer-file-name)))
    (find-file-other-window output-filename)))

(defun latex-recompile-references ()
  (interactive)
  (message "recompiling the references and producing a new pdf")
  (let* ((document-name (replace-regexp-in-string "\\.tex$" "" buffer-file-name))
         (run (lambda (x)
                (call-process x nil "*pdflatex-output*" nil document-name))))
    (funcall run "pdflatex")   ; generate aux file
    (funcall run "bibtex")     ; generate bibliography
    (funcall run "pdflatex")   ; reads bibliography and sets labels in aux
    (latex-pdf-preview))       ; finally generates a complete pdf and shows it
  (message "done"))

(add-hook 'latex-mode-hook (lambda ()
                             (local-set-key (kbd "C-c p")
                                            'latex-pdf-compile)))
(add-hook 'latex-mode-hook (lambda ()
                             (local-set-key (kbd "C-c b")
                                            'latex-recompile-references)))

(provide 'latex-pdf-preview)
