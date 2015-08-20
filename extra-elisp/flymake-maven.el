;; Flymake Maven mode

(require 'flymake)

(defconst flymake-allowed-mvn-file-name-masks '(("\\.java$" flymake-mvn-init))
 "Filename extensions that switch on flymake-mvn mode syntax checks")

(defun flymake-java-mvn-init ()
  (list "/Users/daniel.king/bin/flymake-maven" (list buffer-file-name)))

(defun flymake-java-mvn-load ()
  (push '(".+\\.java$" flymake-java-mvn-init) flymake-allowed-file-name-masks)
  (push '("^\\([^: \n]+\\):\\[\\([0-9]+\\),\\([0-9]+\\)] \\(.+\n?[^/]*?\n?[^/]*?\\)" 1 2 3 4) flymake-err-line-patterns)
  (flymake-mode t)
  (local-set-key (kbd "C-c d") 'flymake-display-err-menu-for-current-line)
  (local-set-key (kbd "C-c e") 'flymake-goto-next-error)
  (local-set-key (kbd "C-c r") 'flymake-goto-prev-error)
  )

(defun flymake-java-mvn-mode-hook ()
  (flymake-java-mvn-load))

(provide 'flymake-maven)
