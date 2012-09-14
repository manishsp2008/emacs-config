;; emacs configuration file for emacs ;;
;; ---------------------------------- ;;

;; some simple emacs configurations
;; from --> "http://homepages.inf.ed.ac.uk/s0243221/emacs/"

;; Automatically load abbreviations table
(setq-default abbrev-mode t)
(read-abbrev-file "~/.abbrev_defs")
(setq save-abbrevs t)

;; set indent size
(setq standard-indent 2)

;; line by line scrolling
(setq scroll-step 1)

;; enable mouse wheel mode in emacs
(mouse-wheel-mode t)

;; set fill column
(setq-default fill-column 72)

;; Enable auto fill mode
(setq auto-fill-mode 1)

;; color-theme setup for emacs
(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-standard)))

;; setup auto complete for emacs
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")

;; set up yasnippest for emacs
(add-to-list 'load-path "~/.emacs.d/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;; load python init file in emacs
;;(add-to-list 'load-path "~/.emacs.d")
;;(load-library "init_python")

