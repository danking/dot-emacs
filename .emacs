(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(beacon-color "#d33682")
 '(c-basic-offset 2)
 '(case-fold-search t)
 '(column-number-mode t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face 'default)
 '(css-indent-offset 2)
 '(cua-global-mark-cursor-color "#93E0E3")
 '(cua-normal-cursor-color "#DCDCCC")
 '(cua-overwrite-cursor-color "#F0DFAF")
 '(cua-read-only-cursor-color "#7F9F7F")
 '(custom-enabled-themes '(zenburn))
 '(custom-safe-themes
   '("b89ae2d35d2e18e4286c8be8aaecb41022c1a306070f64a66fd114310ade88aa" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "a06658a45f043cd95549d6845454ad1c1d6e24a99271676ae56157619952394a" "939ea070fb0141cd035608b2baabc4bd50d8ecc86af8528df9d41f4d83664c6a" "aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" "4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" "2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" default))
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(elpy-formatter 'black)
 '(elpy-modules
   '(elpy-module-company elpy-module-eldoc elpy-module-pyvenv elpy-module-highlight-indentation elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults))
 '(exec-path-from-shell-variables '("PATH" "MANPATH" "JAVA_HOME"))
 '(fci-rule-color "#073642")
 '(fill-column 100)
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(flycheck-pycheckers-checkers '(pylint mypy3))
 '(flycheck-pycheckers-max-line-length 100)
 '(flycheck-pycheckers-pylintrc ".pylintrc")
 '(flycheck-pylintrc nil)
 '(frame-background-mode 'dark)
 '(global-flycheck-mode t)
 '(global-whitespace-mode nil)
 '(grep-command
   "rg --no-heading --line-number --with-filename --color=always -- ")
 '(grep-find-template
   "find <D> <X> -type f <F> -exec rg <C> --no-heading --line-number --with-filename -e <R> \\{\\} +")
 '(grep-find-use-xargs 'exec-plus)
 '(grep-highlight-matches nil)
 '(grep-template "rg <X> <C> --no-heading -nH --null -e <R> <F>")
 '(grep-use-null-device nil)
 '(grep-use-null-filename-separator t)
 '(helm-M-x-fuzzy-match t)
 '(helm-apropos-fuzzy-match t)
 '(helm-buffers-fuzzy-matching t)
 '(helm-completion-in-region-fuzzy-match t)
 '(helm-completion-style 'helm-fuzzy)
 '(helm-locate-fuzzy-match t)
 '(helm-mode t)
 '(helm-mode-fuzzy-match t)
 '(helm-projectile-sources-list
   '(helm-source-projectile-buffers-list helm-source-projectile-files-list helm-source-projectile-projects))
 '(helm-projectile-truncate-lines nil)
 '(highlight-changes-colors '("#DC8CC3" "#bbb0cb"))
 '(highlight-symbol-colors
   '("#680f63eb5998" "#54db645064d0" "#6097535f5322" "#5c2859a95fa1" "#4ede55f24ea4" "#64dd5979525e" "#530060d16157"))
 '(highlight-symbol-foreground-color "#FFFFEF")
 '(highlight-tail-colors
   '(("#4F4F4F" . 0)
     ("#488249" . 20)
     ("#5dacaf" . 30)
     ("#57a2a4" . 50)
     ("#b6a576" . 60)
     ("#ac7b5a" . 70)
     ("#aa5790" . 85)
     ("#4F4F4F" . 100)))
 '(hl-bg-colors
   '("#b6a576" "#ac7b5a" "#9f5c5c" "#aa5790" "#85749c" "#57a2a4" "#5dacaf" "#488249"))
 '(hl-fg-colors
   '("#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F"))
 '(hl-paren-colors '("#93E0E3" "#F0DFAF" "#8CD0D3" "#bbb0cb" "#7F9F7F"))
 '(ibuffer-case-fold-search t)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(lsp-clients-python-library-directories '("/usr/" "/usr/local/"))
 '(lsp-enable-indentation nil)
 '(lsp-file-watch-ignored-directories
   '("[/\\\\]\\.git\\'" "[/\\\\]\\.hg\\'" "[/\\\\]\\.bzr\\'" "[/\\\\]_darcs\\'" "[/\\\\]\\.svn\\'" "[/\\\\]_FOSSIL_\\'" "[/\\\\]\\.idea\\'" "[/\\\\]\\.ensime_cache\\'" "[/\\\\]\\.eunit\\'" "[/\\\\]node_modules" "[/\\\\]\\.fslckout\\'" "[/\\\\]\\.tox\\'" "[/\\\\]dist\\'" "[/\\\\]dist-newstyle\\'" "[/\\\\]\\.stack-work\\'" "[/\\\\]\\.bloop\\'" "[/\\\\]\\.metals\\'" "[/\\\\]target\\'" "[/\\\\]\\.ccls-cache\\'" "[/\\\\]\\.vscode\\'" "[/\\\\]\\.deps\\'" "[/\\\\]build-aux\\'" "[/\\\\]autom4te.cache\\'" "[/\\\\]\\.reference\\'" "[/\\\\]\\.lsp\\'" "[/\\\\]\\.clj-kondo\\'" "[/\\\\]\\.cpcache\\'" "[/\\\\]bin/Debug\\'" "[/\\\\]obj\\'" "[/\\\\]python\\'" "[/\\\\]project\\'" "[/\\\\]build\\'" "[/\\\\]src/main/resources\\'" "[/\\\\]src/test/resources\\'" "[/\\\\].pytest_cache\\'" "\\.mypy_cache" "[/\\\\]\\.idea/'" "[/\\\\]\\.gradle/'" "[/\\\\]gradle/'" "/Users/dking/miniconda3"))
 '(lsp-pyls-server-command '("pyls"))
 '(lsp-signature-auto-activate '(:on-server-request))
 '(lsp-ui-doc-border "#FFFFEF")
 '(lsp-ui-doc-enable nil)
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   '("#dc322f" "#cb4b16" "#b58900" "#5b7300" "#b3c34d" "#0061a8" "#2aa198" "#d33682" "#6c71c4"))
 '(org-agenda-files '("/Users/dking/projects/hail/todo.org"))
 '(org-image-actual-width '(800))
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-doi ol-eww ol-gnus ol-info ol-irc ol-mhe ol-rmail org-tempo ol-w3m))
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(eglot dash lsp-pyright terraform-doc terraform-mode paredit helm-rg lsp-ui lsp-treemacs lsp-mode lsp-metals helm-projectile ggtags magit-popup ghub ripgrep ein color-theme-sanityinc-solarized scala-mode projectile helm magit flycheck-pycheckers flycheck-indicator flycheck-mypy flycheck-color-mode-line flymake-python-pyflakes markdown-mode solarized-theme zenburn-theme gruvbox-theme dracula-theme elpy use-package))
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(pos-tip-background-color "#4F4F4F")
 '(pos-tip-foreground-color "#FFFFEF")
 '(projectile-globally-ignored-file-suffixes '(".log" "-log"))
 '(projectile-globally-ignored-files '("TAGS" "test-log"))
 '(projectile-mode t nil (projectile))
 '(projectile-tags-backend 'etags-select)
 '(projectile-tags-command
   "find -E . -regex \".*\\.(py|scala|c|cpp|h|hpp)\" -print  | grep -v flycheck | grep -v '^\\.#' | etags -")
 '(projectile-use-git-grep nil)
 '(safe-local-variable-values '((lsp-clangd-binary-path . \.dist/llvm/bin/clangd)))
 '(scroll-bar-mode nil)
 '(server-mode t)
 '(show-trailing-whitespace t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#7F9F7F" "#4F4F4F" 0.2))
 '(tab-width 2)
 '(term-default-bg-color "#3F3F3F")
 '(term-default-fg-color "#DCDCCC")
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(treemacs-filewatch-mode t)
 '(use-dialog-box nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#dc322f")
     (40 . "#cb4366eb20b4")
     (60 . "#c1167942154f")
     (80 . "#b58900")
     (100 . "#a6ae8f7c0000")
     (120 . "#9ed892380000")
     (140 . "#96be94cf0000")
     (160 . "#8e5397440000")
     (180 . "#859900")
     (200 . "#77679bfc4635")
     (220 . "#6d449d465bfd")
     (240 . "#5fc09ea47092")
     (260 . "#4c68a01784aa")
     (280 . "#2aa198")
     (300 . "#303498e7affc")
     (320 . "#2fa1947cbb9b")
     (340 . "#2c879008c736")
     (360 . "#268bd2")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#3F3F3F" "#4F4F4F" "#9f5c5c" "#CC9393" "#488249" "#7F9F7F" "#b6a576" "#F0DFAF" "#57a2a4" "#8CD0D3" "#aa5790" "#DC8CC3" "#5dacaf" "#93E0E3" "#DCDCCC" "#6F6F6F"))
 '(whitespace-global-modes '(not eww))
 '(whitespace-style '(trailing tabs lines empty tab-mark))
 '(xterm-color-names
   ["#4F4F4F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#fffff6"])
 '(xterm-color-names-bright
   ["#3F3F3F" "#DFAF8F" "#878777" "#6F6F6F" "#DCDCCC" "#bbb0cb" "#FFFFEF" "#FFFFFD"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#3F3F3F" :foreground "#DCDCCC" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 240 :width normal :foundry "nil" :family "Iosevka")))))

;; Everytime you `M-x install-package RET foo RET`, `foo` is added to
;; `package-selected-packages` (see above in
;; `custom-set-variables`). The following expression ensures that all
;; packages listed in package-selected-packages are installed on this
;; system.
(if (not (equal (package-install-selected-packages)
                "All your packages are already installed"))
    (let ()
      (package-refresh-contents)
      (package-install-selected-packages)))

(exec-path-from-shell-initialize)
(pyvenv-activate "~/miniconda3")
;; ; for native comp https://xenodium.com/trying-out-gccemacs-on-macos/
;; (if (and (fboundp 'native-comp-available-p)
;;          (native-comp-available-p))
;;     (progn
;;       (message "Native comp is available")
;;       (add-to-list 'exec-path (concat invocation-directory "bin") t)
;;       (setenv "LIBRARY_PATH" (concat (getenv "LIBRARY_PATH")
;;                                      (when (getenv "LIBRARY_PATH")
;;                                        ":")
;;                                      ;; This is where Homebrew puts gcc libraries.
;;                                      (car (file-expand-wildcards
;;                                            (expand-file-name "/usr/local/lib/gcc/11/*")))))
;;       ;; Only set after LIBRARY_PATH can find gcc libraries.
;;       (setq comp-deferred-compilation t))
;;   (message "Native comp is *not* available"))

(with-eval-after-load 'flycheck
  ;; Fancy flycheck indication in the mode line.
  (add-hook 'flycheck-mode-hook #'flycheck-indicator-mode)
  ;; Use many python checkers at once.
  (add-hook 'flycheck-mode-hook #'flycheck-pycheckers-setup))

;; Enable incremental completion for M-x.
(global-set-key (kbd "M-x") 'helm-M-x)
;; Replace normal find-files with Helm find-files.
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; Start projectile mode.
(projectile-mode)
;; Enter projectile mode with C-c p. Try out  C-c p h  to search for files in the current project.
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


;; Enable Python IDE-like functionality.
;; (elpy-enable)
(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp))))  ; or lsp-deferred

;; (lsp-register-client
;;  (make-lsp-client
;;   :new-connection (lsp-tramp-connection (lambda ()
;;                                           (cons "pyright-langserver"
;;                                                 lsp-pyright-langserver-command-args)))
;;   :major-modes '(python-mode)
;;   :remote? t
;;   :server-id 'pyright-remote
;;   :multi-root t
;;   :priority 3
;;   :initialization-options (lambda () (ht-merge (lsp-configuration-section "pyright")
;;                                                (lsp-configuration-section "python")))
;;   :initialized-fn (lambda (workspace)
;;                     (with-lsp-workspace workspace
;;                       (lsp--set-configuration
;;                        (ht-merge (lsp-configuration-section "pyright")
;;                                  (lsp-configuration-section "python")))))
;;   :download-server-fn (lambda (_client callback error-callback _update?)
;;                         (lsp-package-ensure 'pyright callback error-callback))
;;   :notification-handlers (lsp-ht ("pyright/beginProgress" 'lsp-pyright--begin-progress-callback)
;;                                  ("pyright/reportProgress" 'lsp-pyright--report-progress-callback)
;;                                  ("pyright/endProgress" 'lsp-pyright--end-progress-callback))))
;; does not seem to work
;; (lsp-register-client
;;     (make-lsp-client :new-connection (lsp-tramp-connection "pyright")
;;                      :major-modes '(python-mode)
;;                      :remote? t
;;                      :server-id 'pyright-remote))

;; Use Black to format Python code on save
;; (add-hook 'elpy-mode-hook (lambda ()
;;                             (add-hook 'before-save-hook
;;                                       'elpy-format-code nil t)))

;; `kill-whitespace` removes a sequences of whitespace. Consider this:
;;
;;     define foo(x: int,
;;                y: int) -> int:
;;
;; If you place your cursor directly after the comma and press M-\ (Meta and backslash together),
;; Emacs will delete all the whitespace between the comma and the `y`. Afterward the state of the
;; line will be:
;;
;;     define foo(x: int,y: int) -> int:
;;
(defun kill-whitespace ()
  "Kill the whitespace between two non-whitespace characters."
  (interactive "*")
  (save-excursion
    (save-restriction
      (save-match-data
        (progn
          (re-search-backward "[^ \t\r\n]" nil t)
          (re-search-forward "[ \t\r\n]+" nil t)
          (replace-match "" nil nil))))))
(global-set-key (kbd "M-\\") 'kill-whitespace)

;; Set the PATH appropriately for Mac OS X Homebrew users
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq-default exec-path (append exec-path '("/usr/local/bin")))
;; Set the PATH for llvm
(setenv "PATH" (concat "/Users/dking/projects/hail/query/.dist/llvm/bin:" (getenv "PATH")))
(setq-default exec-path (cons "/Users/dking/projects/hail/query/.dist/llvm/bin" exec-path))

;; Enable spellcheck in varoius plain text documents
(dolist (hook '(fundamental-mode
                text-mode-hook
                markdown-mode
                change-log-mode-hook
                log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode))))
;; Enable spellcheck in source code comments
(dolist (hook '(c++-mode
                python-mode))
  (add-hook hook (lambda () (flyspell-prog-mode))))
;; enable LSP in Scala
(add-hook 'scala-mode-hook 'lsp)

(add-to-list 'load-path "/Users/dking/projects/llvm-project/llvm/utils/emacs")
(require 'llvm-mode)
(require 'tablegen-mode)
(require 'eglot)

(add-to-list 'eglot-server-programs
             '(tablegen-mode . ("tblgen-lsp-server" "--tablegen-compilation-database" "/Users/dking/projects/hail/query/build/tablegen_compile_commands.yml")))
(add-to-list 'eglot-server-programs
             '(mlir-mode . ("mlir-lsp-server")))

(provide 'emacs)
;;; .emacs ends here
