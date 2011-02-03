;;; interface.el
;;; Daniel King
;;; Sets up the UI elements the way I've grown acustomed to

;;; ido mode
;; improvement to M-x
(global-set-key
 (kbd "M-x")
 (lambda ()
   (interactive)
   (call-interactively
    (intern
     (ido-completing-read
      "M-x "
      (all-completions "" obarray 'commandp))))))

;;; Whitespace Mode
(setq whitespace-style '(lines empty))
(setq whitespace-line-column 80)
(global-whitespace-mode 1)

;;; Tabs
(setq-default c-basic-offset 2)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;;; Color-Theme
(require 'color-theme)
(require 'color-theme-tangotango)
(color-theme-tangotango)

;; self explanatory
(setq-default show-trailing-whitespace t)
(setq-default transient-mark-mode t)
(column-number-mode t)

;; useful key bindings
(global-set-key [\\r] 'newline-and-indent)
(global-set-key (kbd "C-c w") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-c y") 'clipboard-yank)
(setq x-select-enable-clipboard t)
(global-set-key (kbd "C-<pause>") 'previous-buffer)
(global-set-key (kbd "C-c b") 'previous-buffer)
(global-set-key (kbd "M-<pause>") 'next-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)
;; Only killing the current buffer is useful
;; (thanks to bitbucket.org/jordigh who says "thanks to madpickle of #emacs")
(global-set-key (kbd "C-x k")
                (lambda () (interactive) (kill-buffer (current-buffer))))


;; Higlight symbol
(require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-prev)

;; kill that pesky start screen
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(setq inhibit-startup-echo-area-message t)

(message "Slimming down the interface...")
(menu-bar-mode nil)
(toggle-scroll-bar nil)
(tool-bar-mode nil)
;; fill-column
(setq-default fill-column 80)
(setq-default scroll-step 1)
;; full screen
(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
                         (if (equal 'fullboth current-value)
                             (if (boundp 'old-fullscreen) old-fullscreen nil)
                           (progn (setq old-fullscreen current-value)
                                  'fullboth)))))

(global-set-key [f11] 'toggle-fullscreen)

;; Make new frames fullscreen by default. Note: this hook doesn't do
;; anything to the initial frame if it's in your .emacs, since that file is
;; read _after_ the initial frame is created.
(add-hook 'after-make-frame-functions 'toggle-fullscreen)

;;; Longlines
(if (file-exists-p "/home/danking/.emacs.d/longlines.el")
    (autoload 'longlines-mode
      "longlines.el"
      "Minor mode for automatically wrapping long lines." t))

;; default web browser
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")

(provide 'interface)