;;; core-defaults.el --- Sane behavior defaults -*- lexical-binding: t; -*-

;; Redirect package litter into var/ and etc/ 
;; Loaded first so other packages' paths get fixed before they write.
(use-package no-littering
  :init
  (setq no-littering-etc-directory (expand-file-name "etc/" user-emacs-directory)
        no-littering-var-directory (expand-file-name "var/" user-emacs-directory))
  :config
  ;; Route core-Emacs litter too: backups, auto-saves, lock files → var/.
  (no-littering-theme-backups))

;; Backups: keep them, but versioned and out of the way.
(setq backup-by-copying t          ; don't clobber symlinks
      version-control t            ; numbered backups
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2)

;; Don't create .#lockfiles (they confuse some build watchers/LSPs).
(setq create-lockfiles nil)

;; y/n instead of yes/no prompts.
(setq use-short-answers t)

;; Revert buffers automatically when the file changes on disk
;; (essential when git branches switch under you).
(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)  ; also dired etc.

;; Remember recent files and minibuffer history across sessions.
(recentf-mode 1)
(savehist-mode 1)
(save-place-mode 1)  ; reopen files at your last cursor position

;; Indentation: spaces by default (langs override via major modes / .editorconfig).
(setq-default indent-tabs-mode nil
              tab-width 4)

;; Scrolling closer to what you expect from a modern editor.
(setq scroll-margin 6
      scroll-conservatively 101)   ; never recenter-jump while scrolling
(pixel-scroll-precision-mode 1)    ; smooth trackpad/wheel scrolling (GUI)

;; Long-line performance guard (built-in since 29).
(global-so-long-mode 1)

;; Delete selection when typing over it, like every other editor.
(delete-selection-mode 1)

;; UTF-8 everywhere.
(set-language-environment "UTF-8")

(provide 'core-defaults)
;;; core-defaults.el ends here
