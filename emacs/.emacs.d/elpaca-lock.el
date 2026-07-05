((cape :source "elpaca-menu-lock-file" :recipe
       (:package "cape" :repo "minad/cape" :fetcher github :files
                 ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                  "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                  "lisp/*.el" "docs/dir" "docs/*.info" "docs/*.texi"
                  "docs/*.texinfo"
                  (:exclude ".dir-locals.el" "test.el" "tests.el"
                            "*-test.el" "*-tests.el" "LICENSE"
                            "README*" "*-pkg.el"))
                 :source "MELPA" :id cape :type git :protocol https
                 :inherit t :depth treeless :ref
                 "73e0023e7fd9f224babfe8795eb9334dba8eec47"))
 (closql :source "elpaca-menu-lock-file" :recipe
         (:package "closql" :fetcher github :repo "magit/closql"
                   :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                    "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                    "doc/*.texinfo" "lisp/*.el" "docs/dir"
                    "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                    (:exclude ".dir-locals.el" "test.el" "tests.el"
                              "*-test.el" "*-tests.el" "LICENSE"
                              "README*" "*-pkg.el"))
                   :source "MELPA" :id closql :type git :protocol
                   https :inherit t :depth treeless :ref
                   "d382e7427f5d375ffc872851b049e9f9c4a43dfc"))
 (compat :source "elpaca-menu-lock-file" :recipe
         (:package "compat" :repo
                   ("https://github.com/emacs-compat/compat"
                    . "compat")
                   :tar "31.0.0.1" :host gnu :files
                   ("*" (:exclude ".git")) :source "GNU ELPA" :id
                   compat :type git :protocol https :inherit t :depth
                   treeless :ref
                   "dd66b81feed6fc3f250d3b979fb56d9117014f8c"))
 (cond-let
   :source "elpaca-menu-lock-file" :recipe
   (:package "cond-let" :fetcher github :repo "tarsius/cond-let"
             :files
             ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
              "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
              "lisp/*.el" "docs/dir" "docs/*.info" "docs/*.texi"
              "docs/*.texinfo"
              (:exclude ".dir-locals.el" "test.el" "tests.el"
                        "*-test.el" "*-tests.el" "LICENSE" "README*"
                        "*-pkg.el"))
             :source "MELPA" :id cond-let :type git :protocol https
             :inherit t :depth treeless :ref
             "c48600dfab6372670225f046cace263700c78eab"))
 (consult :source "elpaca-menu-lock-file" :recipe
          (:package "consult" :repo "minad/consult" :fetcher github
                    :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el" "docs/dir"
                     "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :id consult :type git :protocol
                    https :inherit t :depth treeless :ref
                    "5849e82baeaff378b5e2d88c5d81cf7d314d43aa"))
 (corfu :source "elpaca-menu-lock-file" :recipe
        (:package "corfu" :repo "minad/corfu" :files
                  (:defaults "extensions/corfu-*.el") :fetcher github
                  :source "MELPA" :id corfu :type git :protocol https
                  :inherit t :depth treeless :ref
                  "c588350d8f9fc60ed0fcf4b78c37671835be01a9"))
 (dash :source "elpaca-menu-lock-file" :recipe
       (:package "dash" :fetcher github :repo "magnars/dash.el" :files
                 ("dash.el" "dash.texi") :source "MELPA" :id dash
                 :type git :protocol https :inherit t :depth treeless
                 :ref "d3a84021dbe48dba63b52ef7665651e0cf02e915"))
 (diff-hl :source "elpaca-menu-lock-file" :recipe
          (:package "diff-hl" :fetcher github :repo "dgutov/diff-hl"
                    :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el" "docs/dir"
                     "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :id diff-hl :type git :protocol
                    https :inherit t :depth treeless :ref
                    "2d7d0714d9637f54af672987c65b6973b31e56a2"))
 (doom-themes :source "elpaca-menu-lock-file" :recipe
              (:package "doom-themes" :fetcher github :repo
                        "doomemacs/themes" :files
                        (:defaults "themes/*.el" "themes/*/*.el"
                                   "extensions/*.el")
                        :source "MELPA" :id doom-themes :type git
                        :protocol https :inherit t :depth treeless
                        :ref
                        "cc7686783e5e6e4174a345c768047d524f0dd54f"))
 (drag-stuff :source "elpaca-menu-lock-file" :recipe
             (:package "drag-stuff" :repo "rejeep/drag-stuff.el"
                       :fetcher github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        "docs/dir" "docs/*.info" "docs/*.texi"
                        "docs/*.texinfo"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :id drag-stuff :type git
                       :protocol https :inherit t :depth treeless :ref
                       "6d06d846cd37c052d79acd0f372c13006aa7e7c8"))
 (elisp-refs :source "elpaca-menu-lock-file" :recipe
             (:package "elisp-refs" :repo "Wilfred/elisp-refs"
                       :fetcher github :files
                       (:defaults (:exclude "elisp-refs-bench.el"))
                       :source "MELPA" :id elisp-refs :type git
                       :protocol https :inherit t :depth treeless :ref
                       "541a064c3ce27867872cf708354a65d83baf2a6d"))
 (elpaca :source
   "elpaca-menu-lock-file" :recipe
   (:source nil :package "elpaca" :id elpaca :repo
            "https://github.com/progfolio/elpaca.git" :ref
            "7f0f635bb59d1e32f17c44c8855aaa2003070214" :depth 1
            :inherit ignore :files
            (:defaults "elpaca-test.el" (:exclude "extensions"))
            :build (:not elpaca-activate) :type git :protocol https))
 (elpaca-use-package :source "elpaca-menu-lock-file" :recipe
                     (:package "elpaca-use-package" :wait t :repo
                               "https://github.com/progfolio/elpaca.git"
                               :files
                               ("extensions/elpaca-use-package.el")
                               :main
                               "extensions/elpaca-use-package.el"
                               :build
                               (:not elpaca-source elpaca-build-docs)
                               :source "Elpaca extensions" :id
                               elpaca-use-package :type git :protocol
                               https :inherit t :depth treeless :ref
                               "7f0f635bb59d1e32f17c44c8855aaa2003070214"))
 (emacsql :source "elpaca-menu-lock-file" :recipe
          (:package "emacsql" :fetcher github :repo "magit/emacsql"
                    :files (:defaults "README.md" "sqlite") :source
                    "MELPA" :id emacsql :type git :protocol https
                    :inherit t :depth treeless :ref
                    "d811bbefcb5e27841af55cae53aa939ba720de77"))
 (embark :source "elpaca-menu-lock-file" :recipe
         (:package "embark" :repo "oantolin/embark" :fetcher github
                   :files ("embark.el" "embark-org.el" "embark.texi")
                   :source "MELPA" :id embark :type git :protocol
                   https :inherit t :depth treeless :ref
                   "350ca86924c5027e80875943fba7b912a71e5791"))
 (embark-consult :source "elpaca-menu-lock-file" :recipe
                 (:package "embark-consult" :repo "oantolin/embark"
                           :fetcher github :files
                           ("embark-consult.el") :source "MELPA" :id
                           embark-consult :type git :protocol https
                           :inherit t :depth treeless :ref
                           "350ca86924c5027e80875943fba7b912a71e5791"))
 (evil :source "elpaca-menu-lock-file" :recipe
       (:package "evil" :repo "emacs-evil/evil" :fetcher github :files
                 (:defaults "doc/build/texinfo/evil.texi"
                            (:exclude "evil-test-helpers.el"))
                 :source "MELPA" :id evil :type git :protocol https
                 :inherit t :depth treeless :ref
                 "3b678a221ee99cc6a95b01d7a3129ce5efc4c3da"))
 (evil-collection :source "elpaca-menu-lock-file" :recipe
                  (:package "evil-collection" :fetcher github :repo
                            "emacs-evil/evil-collection" :files
                            (:defaults "modes") :source "MELPA" :id
                            evil-collection :type git :protocol https
                            :inherit t :depth treeless :ref
                            "162183159dde328336bf2c92cef66b4151df26cf"))
 (evil-commentary :source "elpaca-menu-lock-file" :recipe
                  (:package "evil-commentary" :repo
                            "linktohack/evil-commentary" :fetcher
                            github :files
                            ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                             "*.texinfo" "doc/dir" "doc/*.info"
                             "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                             "docs/dir" "docs/*.info" "docs/*.texi"
                             "docs/*.texinfo"
                             (:exclude ".dir-locals.el" "test.el"
                                       "tests.el" "*-test.el"
                                       "*-tests.el" "LICENSE"
                                       "README*" "*-pkg.el"))
                            :source "MELPA" :id evil-commentary :type
                            git :protocol https :inherit t :depth
                            treeless :ref
                            "c5945f28ce47644c828aac1f5f6ec335478d17fb"))
 (evil-matchit :source "elpaca-menu-lock-file" :recipe
               (:package "evil-matchit" :fetcher github :repo
                         "redguardtoo/evil-matchit" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                          "*.texinfo" "doc/dir" "doc/*.info"
                          "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          "docs/dir" "docs/*.info" "docs/*.texi"
                          "docs/*.texinfo"
                          (:exclude ".dir-locals.el" "test.el"
                                    "tests.el" "*-test.el"
                                    "*-tests.el" "LICENSE" "README*"
                                    "*-pkg.el"))
                         :source "MELPA" :id evil-matchit :type git
                         :protocol https :inherit t :depth treeless
                         :ref
                         "dd03aacd8602ffd2cd9b67d0072092f8d57d5e01"))
 (evil-org :source "elpaca-menu-lock-file" :recipe
           (:package "evil-org" :fetcher github :repo
                     "Somelauw/evil-org-mode" :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el" "docs/dir"
                      "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :id evil-org :type git :protocol
                     https :inherit t :depth treeless :ref
                     "b1f309726b1326e1a103742524ec331789f2bf94"))
 (f :source "elpaca-menu-lock-file" :recipe
    (:package "f" :fetcher github :repo "rejeep/f.el" :files
              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
               "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
               "lisp/*.el" "docs/dir" "docs/*.info" "docs/*.texi"
               "docs/*.texinfo"
               (:exclude ".dir-locals.el" "test.el" "tests.el"
                         "*-test.el" "*-tests.el" "LICENSE" "README*"
                         "*-pkg.el"))
              :source "MELPA" :id f :type git :protocol https :inherit
              t :depth treeless :ref
              "931b6d0667fe03e7bf1c6c282d6d8d7006143c52"))
 (forge :source "elpaca-menu-lock-file" :recipe
        (:package "forge" :fetcher github :repo "magit/forge" :files
                  ("lisp/*.el" "docs/*.texi" ".dir-locals.el") :source
                  "MELPA" :id forge :type git :protocol https :inherit
                  t :depth treeless :ref
                  "9628f76740aec9270e9fb31457ff4cb38d9f3f16"))
 (general :source "elpaca-menu-lock-file" :recipe
          (:package "general" :fetcher github :repo
                    "noctuid/general.el" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el" "docs/dir"
                     "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :id general :type git :protocol
                    https :inherit t :depth treeless :ref
                    "a48768f85a655fe77b5f45c2880b420da1b1b9c3"))
 (ghub :source "elpaca-menu-lock-file" :recipe
       (:package "ghub" :fetcher github :repo "magit/ghub" :files
                 ("lisp/*.el" "docs/*.texi" ".dir-locals.el") :source
                 "MELPA" :id ghub :type git :protocol https :inherit t
                 :depth treeless :ref
                 "59d0b9b33e780d6cff5131886904ff26033dd2e6"))
 (goto-chg :source "elpaca-menu-lock-file" :recipe
           (:package "goto-chg" :repo "emacs-evil/goto-chg" :fetcher
                     github :files
                     ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                      "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                      "doc/*.texinfo" "lisp/*.el" "docs/dir"
                      "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                      (:exclude ".dir-locals.el" "test.el" "tests.el"
                                "*-test.el" "*-tests.el" "LICENSE"
                                "README*" "*-pkg.el"))
                     :source "MELPA" :id goto-chg :type git :protocol
                     https :inherit t :depth treeless :ref
                     "72f556524b88e9d30dc7fc5b0dc32078c166fda7"))
 (helpful :source "elpaca-menu-lock-file" :recipe
          (:package "helpful" :repo "Wilfred/helpful" :fetcher github
                    :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el" "docs/dir"
                     "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :id helpful :type git :protocol
                    https :inherit t :depth treeless :ref
                    "03756fa6ad4dcca5e0920622b1ee3f70abfc4e39"))
 (llama :source "elpaca-menu-lock-file" :recipe
        (:package "llama" :fetcher github :repo "tarsius/llama" :files
                  ("llama.el" ".dir-locals.el") :source "MELPA" :id
                  llama :type git :protocol https :inherit t :depth
                  treeless :ref
                  "4d4024048053b898a01521046e0f063ee47615b0"))
 (magit :source "elpaca-menu-lock-file" :recipe
        (:package "magit" :fetcher github :repo "magit/magit" :files
                  ("lisp/magit*.el" "lisp/git-*.el" "docs/magit.texi"
                   "docs/AUTHORS.md" "LICENSE" ".dir-locals.el"
                   ("githooks" "githooks/*")
                   ("git-hooks" "git-hooks/*")
                   (:exclude "lisp/magit-section.el"))
                  :source "MELPA" :id magit :type git :protocol https
                  :inherit t :depth treeless :ref
                  "b6c512597fd66abe69883a058a2d13bcea76bf33"))
 (magit-section :source "elpaca-menu-lock-file" :recipe
                (:package "magit-section" :fetcher github :repo
                          "magit/magit" :files
                          ("lisp/magit-section.el"
                           "docs/magit-section.texi"
                           "magit-section-pkg.el")
                          :source "MELPA" :id magit-section :type git
                          :protocol https :inherit t :depth treeless
                          :ref
                          "b6c512597fd66abe69883a058a2d13bcea76bf33"))
 (marginalia :source "elpaca-menu-lock-file" :recipe
             (:package "marginalia" :repo "minad/marginalia" :fetcher
                       github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        "docs/dir" "docs/*.info" "docs/*.texi"
                        "docs/*.texinfo"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :id marginalia :type git
                       :protocol https :inherit t :depth treeless :ref
                       "7604eb0463994b0528b92aaf6e594f64089b8b95"))
 (markdown-mode :source "elpaca-menu-lock-file" :recipe
                (:package "markdown-mode" :fetcher github :repo
                          "jrblevin/markdown-mode" :files
                          ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                           "*.texinfo" "doc/dir" "doc/*.info"
                           "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                           "docs/dir" "docs/*.info" "docs/*.texi"
                           "docs/*.texinfo"
                           (:exclude ".dir-locals.el" "test.el"
                                     "tests.el" "*-test.el"
                                     "*-tests.el" "LICENSE" "README*"
                                     "*-pkg.el"))
                          :source "MELPA" :id markdown-mode :type git
                          :protocol https :inherit t :depth treeless
                          :ref
                          "1f72cefa6a4b759f90e335e4908725a721b17ad9"))
 (no-littering :source "elpaca-menu-lock-file" :recipe
               (:package "no-littering" :fetcher github :repo
                         "emacscollective/no-littering" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                          "*.texinfo" "doc/dir" "doc/*.info"
                          "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          "docs/dir" "docs/*.info" "docs/*.texi"
                          "docs/*.texinfo"
                          (:exclude ".dir-locals.el" "test.el"
                                    "tests.el" "*-test.el"
                                    "*-tests.el" "LICENSE" "README*"
                                    "*-pkg.el"))
                         :source "MELPA" :id no-littering :type git
                         :protocol https :inherit t :depth treeless
                         :ref
                         "719c2a3773419ebc92a06e61b0fb26f6d64e750e"))
 (orderless :source "elpaca-menu-lock-file" :recipe
            (:package "orderless" :repo "oantolin/orderless" :fetcher
                      github :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el" "docs/dir"
                       "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :id orderless :type git
                      :protocol https :inherit t :depth treeless :ref
                      "0ffd9d6903714c1f6d8fcbb6a20941fb33dd7ae5"))
 (org :source "elpaca-menu-lock-file" :recipe
      (:package "org" :host github :repo "emacsmirror/org" :autoloads
                "org-loaddefs.el" :depth treeless :build
                ((:not elpaca-build-autoloads)
                 (:before elpaca-build-link elpaca-menu-org--build))
                :files
                (:defaults ("etc/styles/" "etc/styles/*" "doc/*.texi"))
                :source "Org" :id org :type git :protocol https
                :inherit t :ref
                "beb10b13b95bfc6b86c599565012a87a0a09379a"))
 (org-appear :source "elpaca-menu-lock-file" :recipe
             (:package "org-appear" :fetcher github :repo
                       "awth13/org-appear" :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        "docs/dir" "docs/*.info" "docs/*.texi"
                        "docs/*.texinfo"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :id org-appear :type git
                       :protocol https :inherit t :depth treeless :ref
                       "32ee50f8fdfa449bbc235617549c1bccb503cb09"))
 (org-modern :source "elpaca-menu-lock-file" :recipe
             (:package "org-modern" :repo "minad/org-modern" :fetcher
                       github :files
                       ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                        "*.texinfo" "doc/dir" "doc/*.info"
                        "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                        "docs/dir" "docs/*.info" "docs/*.texi"
                        "docs/*.texinfo"
                        (:exclude ".dir-locals.el" "test.el"
                                  "tests.el" "*-test.el" "*-tests.el"
                                  "LICENSE" "README*" "*-pkg.el"))
                       :source "MELPA" :id org-modern :type git
                       :protocol https :inherit t :depth treeless :ref
                       "2b1e8fcd0743e3d2a69c0aeb8fc6f728904fcd91"))
 (s :source "elpaca-menu-lock-file" :recipe
    (:package "s" :fetcher github :repo "magnars/s.el" :files
              ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
               "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
               "lisp/*.el" "docs/dir" "docs/*.info" "docs/*.texi"
               "docs/*.texinfo"
               (:exclude ".dir-locals.el" "test.el" "tests.el"
                         "*-test.el" "*-tests.el" "LICENSE" "README*"
                         "*-pkg.el"))
              :source "MELPA" :id s :type git :protocol https :inherit
              t :depth treeless :ref
              "7393fa6fa305403e628058c0ec78c35d610fab05"))
 (transient :source "elpaca-menu-lock-file" :recipe
            (:package "transient" :fetcher github :repo
                      "magit/transient" :files
                      ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                       "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                       "doc/*.texinfo" "lisp/*.el" "docs/dir"
                       "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                       (:exclude ".dir-locals.el" "test.el" "tests.el"
                                 "*-test.el" "*-tests.el" "LICENSE"
                                 "README*" "*-pkg.el"))
                      :source "MELPA" :id transient :type git
                      :protocol https :inherit t :depth treeless :ref
                      "3d20a780605f0a33d6360dc0a2ce9174c69a9a92"))
 (treepy :source "elpaca-menu-lock-file" :recipe
         (:package "treepy" :repo "volrath/treepy.el" :fetcher github
                   :files
                   ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                    "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                    "doc/*.texinfo" "lisp/*.el" "docs/dir"
                    "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                    (:exclude ".dir-locals.el" "test.el" "tests.el"
                              "*-test.el" "*-tests.el" "LICENSE"
                              "README*" "*-pkg.el"))
                   :source "MELPA" :id treepy :type git :protocol
                   https :inherit t :depth treeless :ref
                   "806c000bd40153d17dfa5709c6d19546d507a416"))
 (treesit-auto :source "elpaca-menu-lock-file" :recipe
               (:package "treesit-auto" :fetcher github :repo
                         "renzmann/treesit-auto" :files
                         ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                          "*.texinfo" "doc/dir" "doc/*.info"
                          "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                          "docs/dir" "docs/*.info" "docs/*.texi"
                          "docs/*.texinfo"
                          (:exclude ".dir-locals.el" "test.el"
                                    "tests.el" "*-test.el"
                                    "*-tests.el" "LICENSE" "README*"
                                    "*-pkg.el"))
                         :source "MELPA" :id treesit-auto :type git
                         :protocol https :inherit t :depth treeless
                         :ref
                         "31466e4ccfd4f896ce3145c95c4c1f8b59d4bfdf"))
 (undo-fu :source "elpaca-menu-lock-file" :recipe
          (:package "undo-fu" :fetcher codeberg :repo
                    "ideasman42/emacs-undo-fu" :files
                    ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                     "*.texinfo" "doc/dir" "doc/*.info" "doc/*.texi"
                     "doc/*.texinfo" "lisp/*.el" "docs/dir"
                     "docs/*.info" "docs/*.texi" "docs/*.texinfo"
                     (:exclude ".dir-locals.el" "test.el" "tests.el"
                               "*-test.el" "*-tests.el" "LICENSE"
                               "README*" "*-pkg.el"))
                    :source "MELPA" :id undo-fu :type git :protocol
                    https :inherit t :depth treeless :ref
                    "5684ef2aef5f60176472916b21869cf221e018cc"))
 (undo-fu-session :source "elpaca-menu-lock-file" :recipe
                  (:package "undo-fu-session" :fetcher codeberg :repo
                            "ideasman42/emacs-undo-fu-session" :files
                            ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                             "*.texinfo" "doc/dir" "doc/*.info"
                             "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                             "docs/dir" "docs/*.info" "docs/*.texi"
                             "docs/*.texinfo"
                             (:exclude ".dir-locals.el" "test.el"
                                       "tests.el" "*-test.el"
                                       "*-tests.el" "LICENSE"
                                       "README*" "*-pkg.el"))
                            :source "MELPA" :id undo-fu-session :type
                            git :protocol https :inherit t :depth
                            treeless :ref
                            "92d733a5b162a70c572fac17b9f9e872426df547"))
 (vertico :source "elpaca-menu-lock-file" :recipe
          (:package "vertico" :repo "minad/vertico" :files
                    (:defaults "extensions/vertico-*.el") :fetcher
                    github :source "MELPA" :id vertico :type git
                    :protocol https :inherit t :depth treeless :ref
                    "97a781560ff7cb77ed6e7cf09c24e0e1f2e2d95e"))
 (vterm :source "elpaca-menu-lock-file" :recipe
        (:package "vterm" :fetcher github :repo
                  "akermu/emacs-libvterm" :files
                  ("CMakeLists.txt" "elisp.c" "elisp.h"
                   "emacs-module.h" "etc" "utf8.c" "utf8.h" "vterm.el"
                   "vterm-module.c" "vterm-module.h")
                  :source "MELPA" :id vterm :type git :protocol https
                  :inherit t :depth treeless :ref
                  "9495966d9124ac32c307aee5c0aeb4a06be37519"))
 (wgrep :source "elpaca-menu-lock-file" :recipe
        (:package "wgrep" :fetcher github :repo
                  "mhayashi1120/Emacs-wgrep" :files ("wgrep.el")
                  :source "MELPA" :id wgrep :type git :protocol https
                  :inherit t :depth treeless :ref
                  "49f09ab9b706d2312cab1199e1eeb1bcd3f27f6f"))
 (with-editor :source "elpaca-menu-lock-file" :recipe
              (:package "with-editor" :fetcher github :repo
                        "magit/with-editor" :files
                        ("*.el" "*.el.in" "dir" "*.info" "*.texi"
                         "*.texinfo" "doc/dir" "doc/*.info"
                         "doc/*.texi" "doc/*.texinfo" "lisp/*.el"
                         "docs/dir" "docs/*.info" "docs/*.texi"
                         "docs/*.texinfo"
                         (:exclude ".dir-locals.el" "test.el"
                                   "tests.el" "*-test.el" "*-tests.el"
                                   "LICENSE" "README*" "*-pkg.el"))
                        :source "MELPA" :id with-editor :type git
                        :protocol https :inherit t :depth treeless
                        :ref
                        "45bfc6084f03e3aa7f4f8db20836d559186c5957"))
 (yaml :source "elpaca-menu-lock-file" :recipe
       (:package "yaml" :repo "zkry/yaml.el" :fetcher github :files
                 ("*.el" "*.el.in" "dir" "*.info" "*.texi" "*.texinfo"
                  "doc/dir" "doc/*.info" "doc/*.texi" "doc/*.texinfo"
                  "lisp/*.el" "docs/dir" "docs/*.info" "docs/*.texi"
                  "docs/*.texinfo"
                  (:exclude ".dir-locals.el" "test.el" "tests.el"
                            "*-test.el" "*-tests.el" "LICENSE"
                            "README*" "*-pkg.el"))
                 :source "MELPA" :id yaml :type git :protocol https
                 :inherit t :depth treeless :ref
                 "5546f36bde24a9a8c1934e0f6ce205cd41d72537"))
 (yasnippet :source "elpaca-menu-lock-file" :recipe
            (:package "yasnippet" :fetcher github :repo
                      "joaotavora/yasnippet" :files
                      (:defaults ("doc" "doc/*.org")) :source "MELPA"
                      :id yasnippet :type git :protocol https :inherit
                      t :depth treeless :ref
                      "c1e6ff23e9af16b856c88dfaab9d3ad7b746ad37"))
 (yasnippet-snippets :source "elpaca-menu-lock-file" :recipe
                     (:package "yasnippet-snippets" :repo
                               "AndreaCrotti/yasnippet-snippets"
                               :fetcher github :files
                               ("*.el" "snippets" ".nosearch") :source
                               "MELPA" :id yasnippet-snippets :type
                               git :protocol https :inherit t :depth
                               treeless :ref
                               "606ee926df6839243098de6d71332a697518cb86")))
