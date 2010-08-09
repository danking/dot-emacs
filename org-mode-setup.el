;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)
(add-hook 'org-mode-hook
          (lambda ()
            (local-set-key (kbd "M-n") 'org-metaright)
            (local-set-key (kbd "M-p") 'org-metaleft)))

(provide 'org-mode-setup)
