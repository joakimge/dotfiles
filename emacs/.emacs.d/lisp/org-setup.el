;;; org-setup.el --- org mode -*- lexical-binding: t; -*-

;; Org is built-in but moves fast; get the current version (same
;; built-in-shadow logic as transient — declare it explicitly).
(use-package org
  :config
  (setq org-directory "~/org/"                 ; the home of everything
        org-default-notes-file (expand-file-name "inbox.org" org-directory)
        ;; Editing behavior
        org-startup-indented t                 ; visual indent per heading level
        org-hide-emphasis-markers t            ; show *bold* as bold, hide the stars
        org-startup-folded 'content            ; open files as an outline
        org-return-follows-link t
        ;; Code blocks: behave like the real language
        org-src-fontify-natively t
        org-src-tab-acts-natively t
        org-edit-src-content-indentation 0
        ;; TODO workflow — customize freely, this is the classic shape
        org-todo-keywords
        '((sequence "TODO(t)" "NEXT(n)" "WAIT(w)" "|" "DONE(d)" "CANCELLED(c)"))
        org-log-done 'time)                    ; timestamp when marked DONE
  ;; Agenda scans these files/dirs for TODOs and dates:
  (setq org-agenda-files (list org-directory)))

;; Evil bindings for org's special structures (headings, tables, dates).
(use-package evil-org
  :after org
  :hook (org-mode . evil-org-mode)
  :config
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

;; Capture: file thoughts from anywhere without leaving your context.
(setq org-capture-templates
      '(("t" "Todo" entry (file org-default-notes-file)
         "* TODO %?\n%U\n%a")     ; %? = point lands here, %U timestamp, %a link-back
        ("n" "Note" entry (file org-default-notes-file)
         "* %?\n%U")))

(my/leader
  "oa" '(org-agenda :which-key "agenda")
  "oc" '(org-capture :which-key "capture")
  "ox" '((lambda () (interactive) (find-file org-default-notes-file))
         :which-key "inbox"))

;; --- Visual polish ---
(use-package org-modern
  :after org
  :hook (org-mode . org-modern-mode)
  :config
  (setq org-modern-star 'replace          ; heading stars → clean symbols
        org-modern-table t                ; styled table lines
        org-modern-keyword t))            ; #+keywords: styled subtly

;; Markers (*bold*, /italic/) reappear under the cursor for editing.
(use-package org-appear
  :after org
  :hook (org-mode . org-appear-mode)
  :config
  (setq org-appear-autoemphasis t
        org-appear-autolinks t))          ; links also expand under point

(provide 'org-setup)
;;; org-setup.el ends here
