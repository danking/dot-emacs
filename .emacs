;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Dan King's .emacs                                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path
             (if (eq system-type 'gnu-linux)
                 "/home/danking/.emacs.d/extra-elisp"
                 "/Users/danking/.emacs.d/extra-elisp"))
;; on OS X, brew installs things here
(add-to-list 'exec-path "/usr/local/bin")

;; package manager
(require 'package)
(let ((package-list
       '(
         async
         color-theme
         dash
         epl
         ess
         exec-path-from-shell
         flycheck
         flycheck-haskell
         font-utils
         git-commit
         haskell-mode
         jtags
         let-alist
         list-utils
         magit
         magit-gh-pulls
         magit-popup
         markdown-mode+
         org
         ox-reveal
         pcache
         persistent-soft
         pkg-info
         ucs-utils
         unicode-fonts
         wc-mode
         with-editor
         yaml-mode
         zenburn
         )))
  ;; list the repositories containing them
  (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			   ("marmalade" . "https://marmalade-repo.org/packages/")
			   ("melpa" . "http://melpa.org/packages/")))

  ;; activate all the packages (in particular autoloads)
  (package-initialize)

  ;; fetch the list of packages available
  (unless package-archive-contents
    (package-refresh-contents))

  ;; install the missing packages
  (dolist (package package-list)
    (unless (package-installed-p package)
      (package-install package))))

;; set the PATH from $PATH on OS X
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(require 'dot-emacs-utils)

(require 'macros)
(require 'interface)
(require 'languages)
(require 'shellfixes)
(require 'coding-utilities)
(require 'general-utilities)
(require 'org-setup)
(require 'emacs-utilities)
;; if we don't have a system specific file, don't show an error, but if such a
;; file exists, load it.
(require 'system-specific nil 'noerror)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "pdflatex")
 '(TeX-view-predicate-list (quote ((os-x-p (eq system-type (quote darwin))))))
 '(TeX-view-program-list (quote (("os-x-open" "open %o"))))
 '(TeX-view-program-selection (quote (((output-dvi style-pstricks) "dvips and gv") (output-dvi "xdvi") ((output-pdf os-x-p) "os-x-open") (output-pdf "Evince") (output-html "xdg-open"))))
 '(agda2-highlight-level (quote interactive))
 '(agda2-include-dirs (quote ("." "/Users/danking/borg/agda-stdlib/src")))
 '(ansi-color-names-vector ["#3f3f3f" "#cc9393" "#7f9f7f" "#f0dfaf" "#8cd0d3" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(c-offsets-alist nil)
 '(custom-safe-themes (quote ("e6fc3dce56058259b0f17ad11a9f38a516aa5215792b5e625296049a9c955f9d" "bb3efc4940d4a22799e00e66ae3b530f5db5bd2930d330eab13de8da182f47b8" "5e2711f52396e5b919b1d800791749136362a418886a71927de1606d375302ff" "36c39ff561a91f1b2f03fe90228073bfac0a5664580ee649e249caa3c8361b3f" "8b7c845da6ef5e6a832b41e41d2a2cdd0bb1533de63cc45cb9db650e85471ac1" "71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" default)))
 '(erc-hide-list (quote ("JOIN" "NICK" "PART" "QUIT")))
 '(face-font-family-alternatives (quote (("dejavu sans mono" "Monospace" "courier" "fixed") ("courier" "CMU Typewriter Text" "fixed") ("Sans Serif" "helv" "helvetica" "arial" "fixed") ("helv" "helvetica" "arial" "fixed"))))
 '(fci-rule-color "#383838")
 '(flycheck-ghc-package-databases (quote ("~/projects/maam/.cabal-sandbox/x86_64-osx-ghc-7.8.3-packages.conf.d")))
 '(flycheck-haskell-hdevtools-executable "~/.cabal/bin/hdevtools")
 '(geiser-default-implementation (quote racket))
 '(geiser-racket-extra-keywords (quote ("define-syntax-rule" "provide" "require" "unless" "when" "with-handlers" "define-syntax-class" "module" "module*" "module+" "for" "for*" "for/fold" "for/vector" "for/first" "for/last" "for/list" "for*/fold" "for*/first" "for*/last" "define-values" "define/match" "match-define" "match-lambda" "match-lambda*" "match-lambda**" "for*/matrix:" "fo/matrix:")))
 '(geiser-racket-init-file "~/.racketrc")
 '(global-flycheck-mode t nil (flycheck))
 '(ido-create-new-buffer (quote never))
 '(ido-enable-flex-matching t)
 '(ido-everywhere t)
 '(ido-mode (quote both) nil (ido))
 '(ido-use-filename-at-point (quote guess))
 '(ido-use-url-at-point t)
 '(initial-major-mode (quote text-mode))
 '(ispell-highlight-face (quote flyspell-incorrect))
 '(ispell-program-name "aspell")
 '(javascript-indent-level 2)
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-enter-indents-newline nil)
 '(magit-revert-item-confirm t)
 '(major-mode (quote text-mode))
 '(max-lisp-eval-depth 10600)
 '(max-specpdl-size 20340)
 '(mingus-mpd-host "192.168.1.2")
 '(mingus-use-ido-mode-p t)
 '(org-drawers (quote ("PROPERTIES" "CLOCK" "LOGBOOK" "RESULTS" "NOTES")))
 '(org-reveal-mathjax t)
 '(org-startup-folded t)
 '(org-startup-indented nil)
 '(org-table-use-standard-references nil)
 '(org-tree-slide-slide-in-effect nil)
 '(quack-default-program "racket")
 '(quack-fontify-threesemi-p nil)
 '(quack-pltish-keywords-to-fontify (quote ("and" "begin" "begin0" "c-declare" "c-lambda" "case" "case-lambda" "class" "class*" "class*/names" "class100" "class100*" "compound-unit/sig" "cond" "cond-expand" "define" "define-class" "define-const-structure" "define-constant" "define-embedded" "define-entry-point" "define-external" "define-for-syntax" "define-foreign-record" "define-foreign-type" "define-foreign-variable" "define-generic" "define-generic-procedure" "define-inline" "define-location" "define-macro" "define-method" "define-module" "define-opt" "define-public" "define-reader-ctor" "define-record" "define-record-printer" "define-record-type" "define-signature" "define-struct" "define-ustruct" "define-structure" "define-syntax" "define-syntax-set" "define-values" "define-values-for-syntax" "define-values/invoke-unit/sig" "define/match" "define/contract" "define/override" "define/private" "define/public" "define/kw" "delay" "do" "else" "exit-handler" "field" "if" "import" "inherit" "inherit-field" "init" "init-field" "init-rest" "instantiate" "interface" "lambda" "lambda/kw" "let" "let*" "let*-values" "let+" "let-syntax" "let-values" "let/ec" "letrec" "letrec-values" "letrec-syntax" "match" "match*" "match-lambda" "match-lambda*" "match-lambda**" "match-let" "match-let*" "match-letrec" "match-define" "mixin" "module" "module*" "module+" "opt-lambda" "or" "override" "override*" "namespace-variable-bind/invoke-unit/sig" "parameterize" "parameterize*" "parameterize-break" "private" "private*" "protect" "provide" "provide-signature-elements" "provide/contract" "public" "public*" "quasiquote" "quasisyntax" "quasisyntax/loc" "quote" "receive" "rename" "require" "require-for-syntax" "send" "send*" "set!" "set!-values" "signature->symbols" "super-instantiate" "syntax" "syntax/loc" "syntax-case" "syntax-case*" "syntax-parse" "syntax-error" "syntax-rules" "unit/sig" "unless" "unquote" "unquote-splicing" "when" "with-handlers" "with-method" "with-syntax" "define-type-alias" "define-struct:" "define:" "let:" "letrec:" "let*:" "lambda:" "plambda:" "case-lambda:" "pcase-lambda:" "require/typed" "require/opaque-type" "require-typed-struct" "inst" "ann" "for/matrix:" "for*/matrix:")))
 '(quack-programs (quote ("racket" "racket -il typed/racket" "scheme48" "scsh")))
 '(scheme-program-name "racket")
 '(smerge-command-prefix "C-c C-s")
 '(typopunct-buffer-language (quote english))
 '(unicode-fonts-block-font-mapping (quote (("Aegean Numbers" ("Aegean" "Quivira")) ("Alchemical Symbols" ("Symbola" "Quivira")) ("Alphabetic Presentation Forms" ("DejaVu Sans:width=condensed" "Arial Unicode MS" "Cardo" "Quivira" "FreeMono")) ("Ancient Greek Musical Notation" ("Musica" "Aegean" "Cardo" "Symbola" "Quivira")) ("Ancient Greek Numbers" ("Apple Symbols" "Cardo" "Aegean" "Quivira")) ("Ancient Symbols" ("Cardo" "Analecta" "Aegean" "Quivira")) ("Arabic Presentation Forms-A" ("Geeza Pro" "Arial Unicode MS" "Microsoft Sans Serif" "Tahoma" "Kufi Standard GK" "Andalus" "Arabic Typesetting" "Adobe Arabic" "DecoType Naskh" "Al Bayan" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "MPH 2B Damase" "Code2000")) ("Arabic Presentation Forms-B" ("DejaVu Sans Mono" "Geeza Pro" "Adobe Arabic" "Arial Unicode MS" "Microsoft Sans Serif" "Kufi Standard GK" "DejaVu Sans:width=condensed" "FreeMono" "DecoType Naskh")) ("Arabic Supplement" ("Courier New" "Simplified Arabic Fixed" "Simplified Arabic" "Geeza Pro" "Damascus" "Andalus" "Arabic Typesetting" "Traditional Arabic" "Adobe Arabic" "Scheherazade" "Tahoma" "Microsoft Sans Serif" "MPH 2B Damase")) ("Arabic" ("Courier New" "Simplified Arabic Fixed" "Simplified Arabic" "Adobe Arabic" "Geeza Pro" "Baghdad" "Damascus" "Al Bayan" "Andalus" "Arabic Typesetting" "Traditional Arabic" "Scheherazade" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Nadeem" "Tahoma" "Microsoft Sans Serif" "MPH 2B Damase" "Kufi Standard GK" "DecoType Naskh" "Koodak" "FreeMono")) ("Armenian" ("Mshtakan" "Sylfaen" "DejaVu Sans:width=condensed" "Quivira" "MPH 2B Damase" "Arial Unicode MS" "FreeMono")) ("Arrows" ("DejaVu Sans Mono" "Apple Symbols" "Cambria Math" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Symbola" "Quivira" "FreeMono")) ("Avestan" ("Ahuramzda")) ("Balinese" ("Aksara Bali")) ("Batak" ("Batak-Unicode")) ("Bengali" ("Bangla Sangam MN" "Vrinda" "Mukti Narrow" "Akaash" "Arial Unicode MS" "Code2000")) ("Block Elements" ("DejaVu Sans Mono" "FreeMono" "DejaVu Sans:width=condensed" "Apple Symbols" "Symbola" "Quivira")) ("Bopomofo Extended" ("MingLiU" "SimHei" "FangSong" "SimSun" "DFKai-SB" "Microsoft JhengHei" "BabelStone Han")) ("Bopomofo" ("Lantinghei TC" "MingLiU" "SimHei" "LiSong Pro" "FangSong" "SimSun" "DFKai-SB" "WenQuanYi Zen Hei Mono" "Microsoft JhengHei" "Microsoft YaHei" "Lantinghei SC" "Arial Unicode MS" "BabelStone Han")) ("Box Drawing" ("DejaVu Sans Mono" "FreeMono" "DejaVu Sans" "Symbola" "Quivira")) ("Brahmi" ("Adinatha Tamil Brahmi")) ("Braille Patterns" ("Quivira" "DejaVu Sans:width=condensed" "Apple Symbols" "Symbola" "FreeMono")) ("Buginese" ("MPH 2B Damase")) ("Buhid" ("Quivira")) ("Byzantine Musical Symbols" ("Musica" "Symbola")) ("CJK Compatibility Forms" ("WenQuanYi Zen Hei Mono" "Lantinghei SC" "SimHei" "FangSong" "SimSun" "LiSong Pro" "Baoli SC" "Microsoft YaHei" "Lantinghei TC" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Symbola" "Xingkai SC" "DFKai-SB")) ("CJK Compatibility Ideographs Supplement" ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "SimSun" "MingLiU" "HanaMinA" "Hiragino Kaku Gothic Pro" "Hiragino Maru Gothic Pro" "Hiragino Mincho Pro" "Microsoft JhengHei" "LiSong Pro")) ("CJK Compatibility Ideographs" ("SimHei" "FangSong" "SimSun" "Microsoft YaHei" "WenQuanYi Zen Hei Mono" "BabelStone Han" "UnBatang" "MingLiU" "Microsoft JhengHei" "Arial Unicode MS" "Lantinghei SC" "HanaMinA")) ("CJK Compatibility" ("SimHei" "FangSong" "SimSun" "MingLiU" "Microsoft JhengHei" "Lantinghei SC" "Lantinghei TC" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han")) ("CJK Radicals Supplement" ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "SimSun" "Microsoft YaHei" "HanaMinA" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "DFKai-SB" "Apple Symbols")) ("CJK Strokes" ("WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han")) ("CJK Symbols and Punctuation" ("Lantinghei SC" "SimHei" "FangSong" "SimSun" "HanaMinA" "WenQuanYi Zen Hei Mono" "LiSong Pro" "ST Fangsong" "Microsoft YaHei" "Lantinghei TC" "MingLiU" "Arial Unicode MS" "PC Myungjo" "BabelStone Han" "Osaka:spacing=m")) ("CJK Unified Ideographs Extension A" ("SimHei" "FangSong" "ST Fangsong" "SimSun" "Songti SC" "Microsoft YaHei" "MingLiU" "Microsoft JhengHei" "Code2000" "DFKai-SB" "BabelStone Han" "GB18030 Bitmap")) ("CJK Unified Ideographs Extension B" ("SimHei" "FangSong" "SimSun" "LiSong Pro" "Microsoft YaHei" "HanaMinB" "Code2002" "MingLiU" "Microsoft JhengHei" "BabelStone Han" "DFKai-SB")) ("CJK Unified Ideographs Extension C" ("HanaMinB" "BabelStone Han")) ("CJK Unified Ideographs Extension D" ("HanaMinB" "BabelStone Han")) ("CJK Unified Ideographs" ("WenQuanYi Zen Hei Mono" "Lantinghei SC" "Songti SC" "SimHei" "FangSong" "ST Fangsong" "SimSun" "LiSong Pro" "Baoli SC" "HanaMinA" "BabelStone Han" "Apple LiGothic" "Lantinghei TC" "MingLiU" "Microsoft JhengHei" "DFKai-SB" "Arial Unicode MS" "Xingkai SC" "GB18030 Bitmap" "UnBatang")) ("Carian" ("Aegean" "Quivira")) ("Chakma" ("Ribeng")) ("Cham" ("Code2000")) ("Cherokee" ("Plantagenet Cherokee" "MPH 2B Damase" "Quivira" "FreeMono")) ("Combining Diacritical Marks Supplement" ("Cardo" "FreeSerif" "Junicode" "Doulos SIL" "DejaVu Sans:width=condensed" "Noto Sans" "Segoe UI" "Code2000")) ("Combining Diacritical Marks for Symbols" ("Cambria Math" "Symbola")) ("Combining Diacritical Marks" ("Monaco" "Consolas" "Noto Sans" "Cambria Math" "Courier New" "DejaVu Sans:width=condensed" "DejaVu Sans Mono" "Cardo" "Junicode" "Tahoma" "Microsoft Sans Serif" "Arial" "Quivira" "FreeMono")) ("Combining Half Marks" ("Monaco" "Consolas" "Symbola")) ("Common Indic Number Forms" ("Siddhanta")) ("Control Pictures" ("Apple Symbols" "Arial Unicode MS" "Symbola" "Quivira" "FreeMono")) ("Counting Rod Numerals" ("WenQuanYi Zen Hei Mono" "Apple Symbols" "Symbola" "Quivira" "Code2001")) ("Cuneiform Numbers and Punctuation" ("Akkadian")) ("Cuneiform" ("Akkadian")) ("Currency Symbols" ("Monaco" "Consolas" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Noto Sans" "Apple Symbols" "Symbola" "Quivira" "FreeMono")) ("Cypriot Syllabary" ("Aegean" "Code2001")) ("Cyrillic Extended-A" ("Quivira")) ("Cyrillic Extended-B" ("Quivira")) ("Cyrillic Supplement" ("Consolas" "Courier New" "Calibri" "Noto Sans" "DejaVu Sans:width=condensed" "Doulos SIL" "Symbola" "Quivira")) ("Cyrillic" ("Consolas" "Monaco" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Noto Sans" "Courier New" "Calibri" "Microsoft Sans Serif" "Code2000" "Arial Unicode MS" "Doulos SIL" "Symbola" "FreeMono" "Charcoal CY" "Geneva CY")) ("Deseret" ("Apple Symbols" "Analecta" "Code2001")) ("Devanagari Extended" ("Siddhanta")) ("Devanagari" ("Devanagari Sangam MN" "Devanagari MT" "Mangal" "Samyak Devanagari" "Samyak" "Siddhanta" "Arial Unicode MS")) ("Dingbats" ("Apple Color Emoji" "DejaVu Sans Mono" "Zapf Dingbats" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Code2000" "Symbola" "Quivira")) ("Domino Tiles" ("DejaVu Sans:width=condensed" "Symbola" "Quivira")) ("Egyptian Hieroglyphs" ("Aegyptus")) ("Emoticons" ("Apple Color Emoji" "Symbola" "Quivira")) ("Enclosed Alphanumeric Supplement" ("Quivira" "BabelStone Han")) ("Enclosed Alphanumerics" ("Junicode" "Arial Unicode MS" "Quivira" "Code2000" "BabelStone Han" "WenQuanYi Zen Hei Mono")) ("Enclosed CJK Letters and Months" ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "MingLiU" "Arial Unicode MS" "HanaMinA" "BabelStone Han" "Quivira" "UnBatang")) ("Enclosed Ideographic Supplement" ("HanaMinA" "BabelStone Han")) ("Ethiopic Extended" ("Kefa" "Abyssinica SIL" "Code2000")) ("Ethiopic Extended-A" ("Kefa" "Abyssinica SIL" "Code2000")) ("Ethiopic Supplement" ("Kefa" "Abyssinica SIL" "Code2000")) ("Ethiopic" ("Kefa" "Nyala" "Abyssinica SIL" "Ethiopia Jiret" "Ethiopia WashRa SemiBold" "Ethopic Yebse" "Code2000")) ("General Punctuation" ("Monaco" "Apple Symbols" "Cambria Math" "DejaVu Sans:width=condensed" "Symbola" "Quivira" "FreeMono")) ("Geometric Shapes" ("DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Symbola" "Quivira" "FreeMono")) ("Georgian Supplement" ("DejaVu Serif:width=condensed" "MPH 2B Damase" "Quivira")) ("Georgian" ("DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Code2000" "Quivira" "Sylfaen" "MPH 2B Damase")) ("Glagolitic" ("MPH 2B Damase" "Quivira")) ("Gothic" ("Analecta" "Junicode" "MPH 2B Damase" "FreeSerif" "Code2001" "Quivira")) ("Greek Extended" ("DejaVu Sans Mono" "Gentium Plus Compact" "Gentium Plus" "Consolas" "Courier New" "Noto Sans" "DejaVu Sans:width=condensed" "Cardo" "Junicode" "Microsoft Sans Serif" "Arial Unicode MS" "Arial" "Tahoma" "Doulos SIL" "Aegean" "Quivira" "FreeMono")) ("Greek and Coptic" ("DejaVu Sans Mono" "Gentium Plus Compact" "Gentium Plus" "Consolas" "DejaVu Sans:width=condensed" "Noto Sans" "Calibri" "Microsoft Sans Serif" "Lucida Console" "Arial Unicode MS" "Cardo" "Aegean" "Symbola" "Quivira")) ("Gujarati" ("Gujarati Sangam MN" "Gujarati MT" "Shruti" "Samyak Gujarati" "Samyak" "Arial Unicode MS")) ("Gurmukhi" ("Gurmukhi Sangam MN" "Gurmukhi MN" "Raavi" "Arial Unicode MS" "AnmolUni")) ("Halfwidth and Fullwidth Forms" ("Meiryo" "Arial Unicode MS" "Microsoft JhengHei" "BabelStone Han" "Apple Symbols" "Code2000")) ("Hangul Compatibility Jamo" ("PC Myungjo" "Malgun Gothic" "Gulim" "Dotum" "Batang" "Gungsuh" "Apple Myungjo" "UnBatang" "WenQuanYi Zen Hei Mono" "Arial Unicode MS" "Code2000" "HeadLineA")) ("Hangul Jamo Extended-A" ("UnBatang")) ("Hangul Jamo Extended-B" ("UnBatang")) ("Hangul Jamo" ("UnBatang" "WenQuanYi Zen Hei Mono" "PC Myungjo" "Malgun Gothic" "Gulim" "Dotum" "Batang" "Gungsuh" "Arial Unicode MS" "Code2000")) ("Hangul Syllables" ("Apple Gothic" "Malgun Gothic" "Gulim" "Dotum" "Batang" "Gungsuh" "UnBatang" "WenQuanYi Zen Hei Mono" "Arial Unicode MS" "Code2000")) ("Hanunoo" ("MPH 2B Damase" "Quivira")) ("Hebrew" ("Miriam Fixed" "Arial Hebrew" "Raanana" "New Peninim MT" "Aharoni" "David" "FrankRuehl" "Gisha" "Levenim MT" "Narkisim" "Rod" "Cardo" "Courier New" "Adobe Hebrew" "Microsoft Sans Serif" "Tahoma" "Lucida Sans Unicode" "Arial Unicode MS" "Arial" "Quivira")) ("Hiragana" ("Osaka:spacing=m" "MS Gothic" "MS Mincho" "MingLiU" "Hiragino Kaku Gothic Pro" "Meiryo" "Arial Unicode MS" "HanaMinA" "BabelStone Han")) ("IPA Extensions" ("Monaco" "Consolas" "DejaVu Sans Mono" "Courier New" "Noto Sans" "Arial Unicode MS" "Arial" "Tahoma" "Microsoft Sans Serif" "Cardo" "Symbola" "Quivira" "FreeMono")) ("Ideographic Description Characters" ("SimHei" "FangSong" "SimSun" "Microsoft YaHei" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Apple Myungjo" "HanaMinA" "Quivira" "DFKai-SB")) ("Imperial Aramaic" ("Quivira")) ("Inscriptional Pahlavi" ("WenQuanYi Zen Hei")) ("Inscriptional Parthian" ("WenQuanYi Zen Hei")) ("Javanese" ("Tuladha Jejeg")) ("Kana Supplement" ("HanaMinA" "BabelStone Han")) ("Kanbun" ("SimHei" "FangSong" "SimSun" "Meiryo" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han" "MingLiU")) ("Kangxi Radicals" ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "SimSun" "Microsoft YaHei" "BabelStone Han" "HanaMinA" "MingLiU" "Microsoft JhengHei" "DFKai-SB" "Apple Myungjo" "Apple Symbols")) ("Kannada" ("Kannada Sangam MN" "Tunga" "Akshar Unicode" "Arial Unicode MS" "Kedage" "Code2000")) ("Katakana Phonetic Extensions" ("MS Gothic" "MingLiU" "Meiryo" "HanaMinA" "BabelStone Han")) ("Katakana" ("Osaka:spacing=m" "MS Gothic" "MingLiU" "Meiryo" "HanaMinA" "Arial Unicode MS" "BabelStone Han")) ("Kayah Li" ("Code2000" "FreeMono")) ("Kharoshthi" ("MPH 2B Damase")) ("Khmer Symbols" ("Khmer Sangam MN" "Khmer Mondulkiri" "Khmer Busra" "Code2000")) ("Khmer" ("Khmer Sangam MN" "DaunPenh" "Code2000" "MoolBoran" "Khmer Mondulkiri" "Khmer Busra")) ("Lao" ("DejaVu Sans Mono" "Lao Sangam MN" "DokChampa" "Arial Unicode MS" "Saysettha MX" "DejaVu Sans:width=condensed")) ("Latin Extended-C" ("DejaVu Sans:width=condensed" "Noto Sans" "Cambria Math" "Quivira")) ("Latin Extended-D" ("FreeMono" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Junicode" "Cardo" "Quivira" "Code2000")) ("Lepcha" ("Mingzat")) ("Letterlike Symbols" ("Apple Symbols" "Cambria Math" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Code2000" "Symbola" "Quivira")) ("Limbu" ("MPH 2B Damase")) ("Linear B Ideograms" ("Aegean" "Code2001")) ("Linear B Syllabary" ("Aegean" "Code2001")) ("Lisu" ("Miao Unicode" "Lisu Unicode" "Quivira")) ("Lycian" ("Aegean" "Quivira")) ("Lydian" ("Aegean" "Quivira")) ("Mahjong Tiles" ("Symbola" "Quivira")) ("Malayalam" ("Malayalam Sangam MN" "Kartika" "Samyak Malayalam" "Samyak" "Akshar Unicode" "Arial Unicode MS")) ("Mathematical Alphanumeric Symbols" ("Cambria Math" "Code2001" "Symbola" "Quivira")) ("Mathematical Operators" ("Everson Mono" "DejaVu Sans Mono" "Apple Symbols" "Cambria Math" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Code2000" "Quivira" "Symbola" "FreeMono")) ("Meetei Mayek" ("Eeyek Unicode" "Meetei Mayek")) ("Meroitic Cursive" ("Aegyptus")) ("Meroitic Hieroglyphs" ("Aegyptus")) ("Miao" ("Miao Unicode")) ("Miscellaneous Mathematical Symbols-A" ("Apple Symbols" "Symbola" "Quivira" "Cambria Math")) ("Miscellaneous Mathematical Symbols-B" ("Apple Symbols" "Cambria Math" "Code2000" "Symbola" "Quivira")) ("Miscellaneous Symbols and Pictographs" ("Apple Color Emoji" "Symbola" "Quivira")) ("Miscellaneous Symbols and Arrows" ("Symbola" "Quivira")) ("Miscellaneous Symbols" ("Apple Symbols" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Symbola" "Quivira" "MS Reference Sans Serif" "Cardo" "Code2000")) ("Miscellaneous Technical" ("Apple Symbols" "Cambria Math" "Symbola" "Quivira")) ("Modifier Tone Letters" ("Apple Myungjo" "Apple Symbols" "Doulos SIL" "Code2000" "Quivira")) ("Mongolian" ("ST Fangsong" "ST Heiti" "ST Kaiti" "ST Song" "Mongolian Baiti" "Daicing Xiaokai" "Code2000")) ("Musical Symbols" ("Musica" "Symbola" "Quivira")) ("Myanmar Extended-A" ("Myanmar Sangam MN" "Padauk")) ("Myanmar" ("Myanmar Sangam MN" "Myanmar MN" "Padauk" "Code2000")) ("NKo" ("Conakry" "DejaVu Sans:width=condensed" "Code2000")) ("New Tai Lue" ("Dai Banna SIL Book" "Dai Banna SIL Book:style=Regular")) ("Number Forms" ("DejaVu Sans:width=condensed" "Arial Unicode MS" "Junicode" "Symbola" "Quivira" "Code2000" "FreeMono")) ("Ogham" ("DejaVu Sans:width=condensed" "Quivira")) ("Ol Chiki" ("Code2000")) ("Old Italic" ("DejaVu Sans:width=condensed" "Cardo" "Code2001" "Aegean" "Quivira" "FreeMono")) ("Old Persian" ("Aegean" "Code2001")) ("Old South Arabian" ("Qataban" "Quivira")) ("Old Turkic" ("Quivira")) ("Optical Character Recognition" ("Apple Symbols" "Arial Unicode MS" "Symbola" "Quivira" "FreeMono")) ("Oriya" ("Oriya Sangam MN" "Kalinga" "Samyak Oriya" "Samyak" "Arial Unicode MS")) ("Osmanya" ("MPH 2B Damase" "Code2001")) ("Phags-pa" ("Microsoft PhagsPa" "BabelStone Phags-pa Book" "BabelStone Phags-pa Book:style=Regular" "Code2000")) ("Phaistos Disc" ("Aegean" "Code2001")) ("Phoenician" ("Aegean" "Quivira" "Code2001")) ("Phonetic Extensions Supplement" ("Consolas" "Calibri" "Courier New" "Noto Sans" "Quivira" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Code2000")) ("Phonetic Extensions" ("Monaco" "Consolas" "Calibri" "Noto Sans" "Quivira" "Courier New" "DejaVu Sans:width=condensed")) ("Playing Cards" ("DejaVu Sans:width=condensed" "Symbola" "Quivira")) ("Rejang" ("Code2000")) ("Runic" ("Junicode" "FreeMono" "Quivira" "Cardo")) ("Samaritan" ("Quivira")) ("Saurashtra" ("Code2000" "Sourashtra")) ("Shavian" ("Apple Symbols" "MPH 2B Damase" "Code2001")) ("Sinhala" ("Sinhala Sangam MN" "Iskoola Pota" "Akshar Unicode")) ("Small Form Variants" ("Apple Symbols" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "Code2000")) ("Specials" ("Apple Symbols" "Arial Unicode MS" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Symbola" "Quivira" "FreeMono" "BabelStone Han")) ("Sundanese" ("Sundanese Unicode" "Hacen Sudan")) ("Superscripts and Subscripts" ("Consolas" "Cambria Math" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Symbola" "Quivira" "FreeMono")) ("Supplemental Arrows-A" ("Apple Symbols" "Cambria Math" "DejaVu Sans:width=condensed" "Symbola" "Quivira" "FreeMono")) ("Supplemental Arrows-B" ("Apple Symbols" "Cambria Math" "Symbola" "Quivira")) ("Supplemental Mathematical Operators" ("Apple Symbols" "Cambria Math" "Symbola" "Quivira")) ("Supplemental Punctuation" ("DejaVu Sans Mono" "Cardo" "Aegean" "Symbola" "Quivira" "Code2000")) ("Syloti Nagri" ("MPH 2B Damase")) ("Syriac" ("Estrangelo Edessa" "Estrangelo Nisibin" "Code2000")) ("Tagalog" ("Quivira")) ("Tagbanwa" ("Quivira")) ("Tags" ("BabelStone Han")) ("Tai Le" ("Microsoft Tai Le" "MPH 2B Damase")) ("Tai Tham" ("Lanna Alif")) ("Tai Viet" ("Tai Heritage Pro")) ("Tai Xuan Jing Symbols" ("Apple Symbols" "WenQuanYi Zen Hei Mono" "BabelStone Han" "DejaVu Sans:width=condensed" "Symbola" "Quivira" "Code2001")) ("Tamil" ("Tamil Sangam MN" "InaiMathi" "Latha" "Maduram" "Akshar Unicode" "Samyak Tamil" "Samyak" "Arial Unicode MS")) ("Telugu" ("Telugu Sangam MN" "Gautami" "Akshar Unicode" "Code2000" "Arial Unicode MS")) ("Thaana" ("MV Boli" "MPH 2B Damase")) ("Thai" ("Ayuthaya" "Silom" "Krungthep" "Sathu" "Thonburi" "DokChampa" "Angsana New" "Tahoma" "Arial Unicode MS" "Quivira")) ("Tibetan" ("Kailasa" "Kokonor" "Microsoft Himalaya" "Jomolhari" "Monlam Uni Sans Serif" "Arial Unicode MS")) ("Tifinagh" ("DejaVu Sans:width=condensed" "Quivira")) ("Transport and Map Symbols" ("Apple Color Emoji" "Symbola")) ("Ugaritic" ("Aegean" "Code2001")) ("Unified Canadian Aboriginal Syllabics Extended" ("Euphemia UCAS" "Euphemia" "Quivira")) ("Unified Canadian Aboriginal Syllabics" ("Euphemia UCAS" "Euphemia" "Quivira")) ("Vai" ("Quivira")) ("Variation Selectors Supplement" ("BabelStone Han")) ("Variation Selectors" ("BabelStone Han")) ("Vedic Extensions" ("Siddhanta")) ("Vertical Forms" ("Symbola")) ("Yi Radicals" ("ST Fangsong" "PC Myungjo" "Microsoft Yi Baiti" "Nuosu SIL")) ("Yi Syllables" ("ST Fangsong" "Apple Myungjo" "Microsoft Yi Baiti" "Nuosu SIL")) ("Yijing Hexagram Symbols" ("Apple Symbols" "DejaVu Sans:width=condensed" "WenQuanYi Zen Hei Mono" "BabelStone Han" "Symbola" "Quivira")))))
 '(vc-follow-symlinks t)
 '(wc-modeline-format "WC[%W%w/%tw/%tc]"))

;; who sets these shit colors?
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#3F3F3F" :foreground "#DCDCCC" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "apple" :family "Monaco"))))
 '(agda2-highlight-datatype-face ((t (:foreground "RoyalBlue3"))))
 '(agda2-highlight-function-face ((t (:foreground "RoyalBlue3"))))
 '(agda2-highlight-postulate-face ((t (:foreground "RoyalBlue3"))))
 '(agda2-highlight-primitive-face ((t (:foreground "RoyalBlue3"))))
 '(agda2-highlight-primitive-type-face ((t (:foreground "RoyalBlue3"))))
 '(agda2-highlight-record-face ((t (:foreground "RoyalBlue3"))))
 '(eim-string-face ((t (:underline t :height 1.0))))
 '(eim-tooltip-face ((t (:inherit tooltip :height 2.0))))
 '(quack-pltish-comment-face ((t (:foreground "sandy brown"))))
 '(quack-pltish-defn-face ((t (:foreground "#bf0" :weight bold))))
 '(quack-pltish-keyword-face ((t (:foreground "#f00" :weight bold))))
 '(quack-pltish-paren-face ((t (:foreground "gray"))))
 '(quack-pltish-selfeval-face ((t (:foreground "#0a8" :weight normal))))
 '(tooltip ((t (:inherit variable-pitch :background "light yellow" :foreground "black" :height 4.0)))))

(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  bertlham                                                                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
