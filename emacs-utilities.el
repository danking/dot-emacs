(require 'unbound)
(message "starting Emacs server for emacsclient")
(server-start)

(defun recompile-emacs-lisp-files-in-emacs.d ()
  "recompiles all the emacs lisp files in emacs.d"
  (interactive)
  (mapcar (lambda (dir)
            (when (string-match ".*\.el$" dir)
              (byte-compile-file dir)))
          (directory-files "~/.emacs.d/")))

(provide 'emacs-utilities)