(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdown-mode elixir-mode moe-theme use-package rust-mode evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#303030" :foreground "#c6c6c6" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight semi-bold :height 98 :width normal :foundry "IBM " :family "IBM Plex Mono")))))

;; The following settings come from https://www.masteringemacs.org/article/beginners-guide-to-emacs
;; Hide all toolbars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Show line numbers
(global-linum-mode 1)

;; Interactively Do Things
(ido-mode 1)
(setq ido-enable-flex-matching t)


(setq backup-directory-alist '(("." . "/tmp/emacs_backup")))
(setq backup-by-copying t) ; copy whole file to backup dir
(setq delete-old-versions t ; keep a limited number of versions
  kept-new-versions 6
  kept-old-versions 2
  version-control t) ; use numbers to version the files

(require 'evil)
(evil-mode 1)
(define-key evil-normal-state-map (kbd ";") 'evil-ex)

(require 'moe-theme)
(moe-dark)

(require 'elixir-mode)
