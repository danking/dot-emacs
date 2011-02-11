;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Dan King's .emacs                                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "/home/danking/.emacs.d")

(require 'dot-emacs-utils)

(require 'macros)
(require 'interface)
(require 'languages)
(require 'shellfixes)
(require 'coding-utilities)
(require 'org-setup)
(require 'apps)
(require 'etc)
(require 'emacs-utilities)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ido-create-new-buffer (quote never))
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(ido-use-filename-at-point (quote guess))
 '(ido-use-url-at-point t)
 '(javascript-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-enter-indents-newline nil)
 '(magit-revert-item-confirm t)
 '(mingus-use-ido-mode-p t)
 '(quack-default-program "racket")
 '(quack-programs '("racket" "racket -il typed/racket" "scheme48" "scsh"))
 '(smerge-command-prefix "C-c C-s")
 '(vc-follow-symlinks t))

;; who sets these shit colors?
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(quack-pltish-comment-face ((t (:foreground "#a60"))))
 '(quack-pltish-defn-face ((t (:foreground "#b66"))))
 '(quack-pltish-keyword-face ((t (:foreground "#744"))))
 '(quack-pltish-paren-face ((t (:foreground "#696"))))
 '(quack-pltish-selfeval-face ((t (:foreground "#ada")))))

(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  bertlham                                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
