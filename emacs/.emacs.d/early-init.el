;;; early-init.el --- Runs before init.el and GUI init -*- lexical-binding: t; -*-

;; Defer GC during startup (Choice B decides what happens after).
(setq gc-cons-threshold most-positive-fixnum)

;; Don't initialize package.el before init.el.
;; Required if we choose straight.el/elpaca in step 2; harmless otherwise
;; because we'll control initialization ourselves.
(setq package-enable-at-startup nil)

;; Disable UI chrome before the first frame is drawn (no flicker).
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;; Skip the startup screen and resize behavior that slows frame creation.
(setq inhibit-startup-screen t
      frame-inhibit-implied-resize t)

;; Silence native-comp warnings popping up buffers (Arch builds have native comp).
(setq native-comp-async-report-warnings-errors 'silent)

;;; early-init.el ends here
