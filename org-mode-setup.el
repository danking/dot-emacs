(require 'org-install)

;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)
;(global-set-key (kbd "C-c r") 'org-remember)
(add-hook 'org-mode-hook
          (lambda ()
            (local-set-key (kbd "M-n") 'org-metaright)
            (local-set-key (kbd "M-p") 'org-metaleft)))

(setq org-default-notes-file (concat org-directory "/.notes.org"))
(global-set-key (kbd "C-c c") 'org-capture)

(add-to-list 'load-path "~/.emacs.d/org-mode/lisp")

;; capture templates
;; (defun music-remember ()
;;   (interactive)
;;   (let* ((artist (read "Which artist? "))
;;          (album  (read "What album? ")))
;;     )
;;   (let* ((myname (completing-read "Who is calling? "
;;                                   (bbdb-hashtable)
;;                                   'bbdb-completion-predicate
;;                                   'confirm))
;;          (my-bbdb-name (if (> (length myname) 0) myname nil)))
;;     (setq gjg/capture-phone-record
;;           (if my-bbdb-name
;;               (first (or (bbdb-search (bbdb-records) my-bbdb-name nil nil)
;;                          (bbdb-search (bbdb-records) nil my-bbdb-name nil)))
;;             myname))
;;     (other-window 1)
;;     (let ((org-capture-templates '(("P"
;;                                     "Phone"
;;                                     entry
;;                                     (file "~/git/org/refile.org")
;;                                     :clock-in t :clock-resume t))))
;;       (org-capture))))

;; (defun gjg/bbdb-name ()
;;   "Return full name of saved bbdb record, or empty string - for use in Capture templates"
;;   (if (and gjg/capture-phone-record (vectorp gjg/capture-phone-record))
;;       (concat "[[bbdb:"
;;               (bbdb-record-name gjg/capture-phone-record) "]["
;;               (bbdb-record-name gjg/capture-phone-record) "]]")
;;     "NAME"))

;; (defun gjg/bbdb-company ()
;;   "Return company of saved bbdb record, or empty string - for use in Capture templates"
;;   (if (and gjg/capture-phone-record (vectorp gjg/capture-phone-record))
;;       (or (bbdb-record-company gjg/capture-phone-record) "")
;;     "COMPANY"))


(provide 'org-mode-setup)
