(add-to-list 'load-path "~/.emacs.d/org-mode/lisp/")

(require 'org-install)
(require 'org)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; key bindings
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)
(global-set-key (kbd "C-c c") 'org-capture)
(add-hook 'org-mode-hook
          (lambda ()
            (refill-mode -1) ; I think this is inherited from text-mode
            (auto-fill-mode 1)
            ;; change outline item depth
            (local-set-key (kbd "M-n") 'org-metaright)
            (local-set-key (kbd "M-p") 'org-metaleft)))

(setq org-default-notes-file (concat org-directory "/notes.org"))
;; records completion time for TODO itmes
(setq org-log-done t)

;; capture templates
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/notes.org" "Tasks")
         "* TODO %?\n %t")
        ("n" "Note" entry (file+headline "~/org/notes.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/org/journal.org")
         "* %?\nEntered on %U\n  %i\n")
        ("m" "Music" entry (file+headline "~/org/tobuy.org" "Music")
         "* %^{Album} by %^{Artist}")
        ("u" "Unix Tutorial Idea" entry
         (file+headline "~/org/talk-on-nix.org"
                        "Idea")
         "* %?")
        ("g" "Git Tutorial Idea" entry
         (file+headline "~/org/talk-on-git.org"
                        "Idea")
         "* %?")
        ("b" "Books/Reading Material" entry (file+headline "~/org/tobuy.org"
                                                           "Books")
         "* %^{Title} by %^{Author}")))

(provide 'org-setup)
