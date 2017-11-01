;;; darkplus-theme.el --- Theme

;; Copyright (C) 2017 , Clay Dunston

;; Author: Clay Dunston
;; Version: 0.1
;; Package-Requires: ((emacs "24"))
;; Created with ThemeCreator, https://github.com/mswift42/themecreator.


;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;;; Code:

(deftheme darkplus)
(let ((class '((class color) (min-colors 89)))
       (dp_foreground    "#d4d4d4")
       (dp_background    "#1e1e1e")
       (dp_grey          "#303030")
       (dp_pink          "#c586c0")
       (dp_light_blue    "#9cdcfe")
       (dp_dark_blue     "#569cd6")
       (dp_bright_blue   "#007acc")
       (dp_select_blue   "#264f78")
       (dp_seafoam       "#4ec9b0")
       (dp_green         "#608b4e")
       (dp_puke          "#b5cea8")
       (dp_yellow        "#dcdcaa")
       (dp_dark_yellow   "#d7ba7d")
       (dp_orange        "#ce9178")
       (dp_light_red     "#d16969")
       (dp_dark_red      "#f44747")


       (dp_grey3          "#303030")
       (dp_grey4          "#404040")
       (dp_grey5          "#505050")
       (dp_grey6          "#606060")
       (dp_grey7          "#707070")
       (dp_grey8          "#808080")

       (fg1 "#d4d4d4")       ;; text
       (fg2 "#c3c3c3")
       (fg3 "#b2b2b2")
       (fg4 "#a1a1a1")
       (bg1 "#1E1E1E")       ;; background
       (bg2 "#303030")
       (bg3 "#424242")
       (bg4 "#545454")
       (builtin "#569CD6")   ;; dark-blue
       (keyword "#C586C0")   ;; pink
       (const   "#9CDCFE")   ;; light-blue
       (comment "#505050")   ;; green
       (func    "#DCDCAA")   ;; yellow
       (str     "#CE9178")   ;; orange
       (type    "#4EC9B0")   ;; seafoam
       (var     "#9CDCFE")   ;; light-blue
       (warning "#F44747")   ;; dark-red
       (warning2 "#D16969")) ;; light-red
  (custom-theme-set-faces
    'darkplus
    `(default ((,class (:background ,dp_background :foreground ,dp_foreground))))

    ;; FONT LOCK VARIABLES
    `(font-lock-builtin-face              ((,class (:foreground ,builtin  ))))
    `(font-lock-comment-delimiter-face    ((,class (:foreground ,comment  ))))
    `(font-lock-comment-face              ((,class (:foreground ,comment  ))))
	  `(font-lock-constant-face             ((,class (:foreground ,dp_bright_blue  ))))
    `(font-lock-doc-face                  ((,class (:foreground ,comment  ))))
    `(font-lock-function-name-face        ((,class (:foreground ,func     ))))
    `(font-lock-keyword-face              ((,class (:foreground ,dp_pink :bold ,class))))
    `(font-lock-negation-char-face        ((,class (:foreground ,const    ))))
    `(font-lock-reference-face            ((,class (:foreground ,const    ))))
    `(font-lock-regexp-grouping-backslash ((,class (:foreground ,dp_light_red      ))))
    `(font-lock-regexp-grouping-construct ((,class (:foreground ,dp_light_red      ))))
    `(font-lock-string-face               ((,class (:foreground ,str      ))))
    `(font-lock-type-face                 ((,class (:foreground ,type     ))))
    `(font-lock-variable-name-face        ((,class (:foreground ,var      ))))
    `(font-lock-warning-face              ((,class (:foreground ,warning :background ,bg2))))

    ;; GENERAL
    `(cursor                   ((,class (:background ,dp_bright_blue                   ))))
    `(mouse                    ((,class (:background ,dp_select_blue                   ))))
    `(region                   ((,class (:background ,dp_select_blue                   ))))
    `(highlight                ((,class (:foreground ,fg3 :background ,dp_select_blue  ))))
    `(hl-line                  ((,class (:background ,bg2                              ))))
    `(highlight-numbers-number ((,class (:foreground ,dp_puke                          ))))
    `(line-number              ((,class (:background ,bg2                              ))))
    `(line-number-current-line ((,class (:background ,bg2                              ))))
	  `(fringe                   ((,class (:background ,dp_background :foreground ,fg4   ))))
    `(show-paren-match-face    ((,class (:background ,warning                          ))))
    `(isearch                  ((,class (:foreground ,warning :background ,bg3 :bold t ))))
    `(vertical-border          ((,class (:foreground ,fg3                              ))))
    `(minibuffer-prompt        ((,class (:foreground ,keyword :bold t                  ))))
    `(default-italic           ((,class (:italic t                                     ))))
    `(link                     ((,class (:foreground ,dp_light_blue :underline t       ))))
    `(font-lock-preprocessor-face         ((,class (:foreground ,dp_dark_blue))))
    `(warning                  ((,class (:foreground ,warning                          ))))
    `(ac-completion-face       ((,class (:foreground ,keyword :underline t             ))))
    `(info-quoted-name         ((,class (:foreground ,builtin                          ))))
    `(info-string              ((,class (:foreground ,str                              ))))
    `(icompletep-determined    ((,class  :foreground ,builtin                          )))
    `(ffap                     ((,class (:foreground ,fg4                              ))))
    `(lazy-highlight           ((,class (:foreground ,fg2 :background ,bg3             ))))
    `(trailing-whitespace      ((,class  :foreground nil  :background ,warning         )))

    ;; UI
    `(widget-button               ((,class (:foreground ,dp_seafoam ))))

    ;; MODE SUPPORT: org
    `(org-agenda-structure         ((,class (:foreground ,fg3 :background ,bg3 :weight bold :box (:color ,fg4)))))
    `(org-agenda-date              ((,class (:foreground ,var     :height 1.1             ))))
    `(org-agenda-date-weekend      ((,class (:foreground ,fg4     :weight normal          ))))
    `(org-agenda-date-today        ((,class (:foreground ,keyword :weight bold :height 1.4))))
    `(org-agenda-done              ((,class (:foreground ,bg4                             ))))
    `(org-block                    ((,class (:foreground ,fg3                             ))))
    `(org-code                     ((,class (:foreground ,dp_orange                       ))))
    `(org-date                     ((,class (:foreground ,var            :underline t     ))))
    `(org-document-title           ((,class (:foreground ,dp_seafoam                      ))))
    `(org-document-info-keyword    ((,class (:foreground ,dp_grey5                        ))))
    `(org-meta-line                ((,class (:foreground ,dp_grey5                        ))))
    `(org-hide                     ((,class (:foreground ,fg4                             ))))
    `(org-level-1                  ((,class (:foreground ,dp_bright_blue :bold t :height 1.1))))
    `(org-level-2                  ((,class (:foreground ,dp_dark_blue   :bold nil        ))))
    `(org-level-3                  ((,class (:foreground ,dp_pink        :bold t          ))))
    `(org-level-4                  ((,class (:foreground ,dp_green       :bold nil        ))))
    `(org-level-5                  ((,class (:foreground ,dp_foreground  :bold nil        ))))
    `(org-level-6                  ((,class (:foreground ,dp_foreground  :bold nil        ))))
    `(org-level-7                  ((,class (:foreground ,dp_foreground  :bold nil        ))))
    `(org-level-8                  ((,class (:foreground ,dp_foreground  :bold nil        ))))
    `(org-footnote                 ((,class (:foreground ,fg4            :underline t     ))))
    `(org-link                     ((,class (:foreground ,dp_light_blue  :underline t     ))))
    `(org-list-dt                  ((,class (:foreground ,dp_light_blue  :underline t     ))))
    `(org-special-keyword          ((,class (:foreground ,func                            ))))
    `(org-quote                    ((,class (:inherit org-block :slant italic             ))))
    `(org-verse                    ((,class (:inherit org-block :slant italic             ))))
    `(org-todo                     ((,class (:foreground ,keyword :box (:line-width 1 :color ,fg3) :bold t ))))
    `(org-done                     ((,class (:foreground ,bg4     :box (:line-width 1 :color ,bg3) :bold t ))))
    `(org-warning                  ((,class (:foreground ,warning :underline t            ))))
    `(org-scheduled                ((,class (:foreground ,type                            ))))
    `(org-scheduled-today          ((,class (:foreground ,func :weight bold :height 1.2   ))))
    `(org-ellipsis                 ((,class (:foreground ,dp_grey5                        ))))
	  `(org-verbatim                 ((,class (:foreground ,dp_orange                       ))))
    `(org-sexp-date                ((,class (:foreground ,fg4                             ))))

    ;; MODE SUPPORT: git-gutter
    `(git-gutter:added               ((,class (:foreground ,dp_green      ))))
    `(git-gutter:deleted             ((,class (:foreground ,dp_dark_red   ))))
    `(git-gutter:modified            ((,class (:foreground ,dp_pink       ))))
    `(git-gutter:separator           ((,class (:foreground ,dp_background ))))
    `(git-gutter:unchanged           ((,class (:foreground ,dp_background ))))
    ;; MODE SUPPORT: git-gutter-fr
    `(git-gutter-fr:added            ((,class (:foreground ,dp_green      ))))
    `(git-gutter-fr:deleted          ((,class (:foreground ,dp_dark_red   ))))
    `(git-gutter-fr:modified         ((,class (:foreground ,dp_pink       ))))
    ;; MODE SUPPORT: git-gutter+
    `(git-gutter+-commit-header-face ((,class (:foreground ,dp_foreground ))))
    `(git-gutter+-added              ((,class (:foreground ,dp_green      ))))
    `(git-gutter+-deleted            ((,class (:foreground ,dp_dark_red   ))))
    `(git-gutter+-modified           ((,class (:foreground ,dp_pink       ))))
    `(git-gutter+-separator          ((,class (:foreground ,dp_foreground ))))
    `(git-gutter+-unchanged          ((,class (:foreground ,dp_foreground ))))
    ;; MODE SUPPORT: git-gutter-fr+
    `(git-gutter-fr+-added           ((,class (:foreground ,dp_green      ))))
    `(git-gutter-fr+-deleted         ((,class (:foreground ,dp_dark_red   ))))
    `(git-gutter-fr+-modified        ((,class (:foreground ,dp_pink       ))))


    ;; MODE LINE
    `(mode-line                    ((,class (:foreground ,fg4           :background ,dp_background :bold t  ))))
    `(mode-line-inactive           ((,class (:foreground ,var           :background nil :weight normal      ))))
    `(mode-line-buffer-id          ((,class (:foreground ,dp_green      :background nil :bold t       ))))
    `(mode-line-buffer-id-inactive ((,class (:foreground ,fg1           :background nil                     ))))
    `(mode-line-highlight          ((,class (:foreground ,keyword       :background nil :weight bold        ))))
    `(mode-line-emphasis           ((,class (:foreground ,fg1           :background nil                     ))))

    ;; MODE SUPPORT: powerline
    ;; `(powerline-active1                         )
    ;; `(powerline-active2                         )
    ;; `(powerline-inactive1                       )
    ;; `(powerline-inactive2                       )

    ;; `(spacemacs-emacs-face               ((,class (:background ,dp_green  ))))
    ;; `(spacemacs-insert-face              ((,class (:background ,dp_dark_blue        ))))
    ;; `(spacemacs-motion-face              ((,class (:background ,dp_))))
    ;; `(spacemacs-normal-face              ((,class (:background ,dp_green  ))))
    ;; `(spacemacs-replace-face             ((,class (:background ,dp_light_red    ))))
    ;; `(spacemacs-visual-face              ((,class (:background ,dp_pink    ))))
    ;; `(spacemacs-micro-state-header-face  ((,class (:background ,dp_))))
    ;; `(spacemacs-micro-state-binding-face ((,class (:background ,dp_))))
    ;; `(spacemacs-lisp-face        ((,class (:background ,dp_))))
    ;; `(spacemacs-transient-state-title-face ((,class (:background ,dp_))))


    ;; `(spaceline-evil-emacs       ((,class (:background ,dp_))))
    ;; `(spaceline-evil-insert      ((,class (:background ,dp_))))
    ;; `(spaceline-evil-motion      ((,class (:background ,dp_))))
    ;; `(spaceline-evil-normal      ((,class (:background ,dp_))))
    ;; `(spaceline-evil-replace     ((,class (:background ,dp_))))
    ;; `(spaceline-evil-visual      ((,class (:background ,dp_))))
    ;; `(spaceline-flycheck-error   ((,class (:background ,dp_))))
    ;; `(spaceline-flycheck-info    ((,class (:background ,dp_))))
    ;; `(spaceline-flycheck-warning ((,class (:background ,dp_))))
    ;; `(spaceline-highlight-face   ((,class (:background ,dp_))))
    ;; `(spaceline-modified         ((,class (:background ,dp_))))
    ;; `(spaceline-python-venv      ((,class (:background ,dp_))))
    ;; `(spaceline-read-only        ((,class (:background ,dp_))))
    ;; `(spaceline-unmodified       ((,class (:background ,dp_))))


    ;; MODE SUPPORT: smart-mode-line
    ;; `(sml/modes                                 )
    ;; `(sml/minor-modes                           )
    ;; `(sml/filename                               ((,class (:foreground ,dp_green))))
    ;; `(sml/prefix                                )
    ;; `(sml/git                                   )
    ;; `(sml/process                               )
    ;; `(sml/sudo                                  )
    ;; `(sml/read-only                             )
    ;; `(sml/outside-modified                      )
    ;; `(sml/modified                              )
    ;; `(sml/vc                                    )
    ;; `(sml/vc-edited                             )
    ;; `(sml/charging                              )
    ;; `(sml/discharging                           )
    ;; `(sml/col-number                            )
    ;; `(sml/position-percentage                   )

    `(rainbow-delimiters-depth-1-face   ((,class :foreground ,fg1)))
    `(rainbow-delimiters-depth-2-face   ((,class :foreground ,fg1)))
    `(rainbow-delimiters-depth-3-face   ((,class :foreground ,fg1)))
    `(rainbow-delimiters-depth-4-face   ((,class :foreground ,fg1)))
    `(rainbow-delimiters-depth-5-face   ((,class :foreground ,fg1)))
    `(rainbow-delimiters-depth-6-face   ((,class :foreground ,fg1)))
    `(rainbow-delimiters-depth-7-face   ((,class :foreground ,fg1)))
    `(rainbow-delimiters-depth-8-face   ((,class :foreground ,fg1)))
    `(rainbow-delimiters-unmatched-face ((,class :foreground ,fg1)))

    `(ido-only-match  ((,class  (:foreground ,warning         ))))
    `(ido-first-match ((,class  (:foreground ,keyword :bold t ))))

    `(magit-item-highlight         ((,class :background  ,bg3)))
    `(magit-section-highlight      ((,class (:background ,bg2))))
    `(magit-hunk-heading           ((,class (:background ,bg3))))
    `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
    `(magit-section-heading        ((,class (:foreground ,keyword :weight bold     ))))
    `(magit-diff-context-highlight ((,class (:foreground ,fg3     :background ,bg3 ))))
    `(magit-diff-file-header       ((,class (:foreground ,fg2     :background ,bg3 ))))
    `(magit-diffstat-added         ((,class (:foreground ,dp_green                 ))))
    `(magit-diffstat-removed       ((,class (:foreground ,dp_light_red             ))))
    `(magit-process-ok             ((,class (:foreground ,func    :weight bold     ))))
    `(magit-process-ng             ((,class (:foreground ,warning :weight bold     ))))
    `(magit-branch                 ((,class (:foreground ,const   :weight bold     ))))
    `(magit-log-author             ((,class (:foreground ,fg3                      ))))
    `(magit-hash                   ((,class (:foreground ,fg2                      ))))

    `(helm-bookmark-w3m       ((,class (:foreground ,type                          ))))
    `(helm-buffer-not-saved   ((,class (:foreground ,type          :background ,bg1  ))))
    `(helm-buffer-process     ((,class (:foreground ,dp_seafoam    :background ,bg1  ))))
    `(helm-buffer-saved-out   ((,class (:foreground ,fg1           :background ,bg1  ))))
    `(helm-buffer-size        ((,class (:foreground ,fg1           :background ,bg1  ))))
    `(helm-candidate-number   ((,class (:foreground ,bg1           :background ,fg1  ))))
    `(helm-ff-directory       ((,class (:foreground ,dp_dark_blue  :background ,bg1 :weight bold))))
    `(helm-ff-file            ((,class (:foreground ,dp_light_blue :background ,bg1 :weight normal))))
    `(helm-ff-executable      ((,class (:foreground ,dp_yellow     :background ,bg1 :weight normal))))
    `(helm-ff-invalid-symlink ((,class (:foreground ,warning2      :background ,bg1 :weight bold))))
    `(helm-ff-symlink         ((,class (:foreground ,dp_seafoam    :background ,bg1 :weight bold))))
    `(helm-ff-prefix          ((,class (:foreground ,bg1  :background ,keyword :weight normal))))
    `(helm-grep-cmd-line      ((,class (:foreground ,fg1  :background ,bg1))))
    `(helm-grep-file          ((,class (:foreground ,fg1  :background ,bg1))))
    `(helm-grep-finish        ((,class (:foreground ,fg2  :background ,bg1))))
    `(helm-grep-lineno        ((,class (:foreground ,fg1  :background ,bg1))))
    `(helm-grep-match         ((,class (:foreground nil   :background nil :inherit helm-match))))
    `(helm-grep-running       ((,class (:foreground ,func :background ,bg1))))
    `(helm-header             ((,class (:foreground ,fg2     :background ,bg1 :underline nil :box nil))))
    `(helm-moccur-buffer      ((,class (:foreground ,func    :background ,bg1))))
    `(helm-source-header      ((,class (:foreground ,keyword :background ,bg1 :underline nil :weight bold))))
    `(helm-selection          ((,class (:background ,dp_select_blue :underline nil))))
    `(helm-selection-line     ((,class (:background ,bg2))))
    `(helm-separator          ((,class (:foreground ,type    :background ,bg1))))
    `(helm-time-zone-current  ((,class (:foreground ,builtin :background ,bg1))))
    `(helm-time-zone-home     ((,class (:foreground ,type    :background ,bg1))))
    `(helm-visible-mark       ((,class (:foreground ,bg1     :background ,bg3))))
    `(helm-source-go-package-godoc-description      ((,class (:foreground ,str))))

    `(term               ((,class (:foreground ,dp_foreground :background ,dp_background))))
    `(term-color-black   ((,class (:foreground ,bg3           :background ,bg3))))
    `(term-color-blue    ((,class (:foreground ,dp_light_blue :background ,func))))
    `(term-color-red     ((,class (:foreground ,dp_light_red  :background ,bg3))))
    `(term-color-green   ((,class (:foreground ,dp_green      :background ,bg3))))
    `(term-color-yellow  ((,class (:foreground ,dp_yellow     :background ,var))))
    `(term-color-magenta ((,class (:foreground ,dp_pink       :background ,builtin))))
    `(term-color-cyan    ((,class (:foreground ,dp_seafoam    :background ,str))))
    `(term-color-white   ((,class (:foreground ,fg2           :background ,fg2))))

    `(company-echo-common    ((,class (:foreground ,bg1 :background ,fg1))))
    `(company-preview        ((,class (:background ,bg1 :foreground ,var))))
    `(company-preview-common ((,class (:foreground ,bg2 :foreground ,fg3))))
    `(company-preview-search ((,class (:foreground ,type :background ,bg1))))
    `(company-scrollbar-bg   ((,class (:background ,bg3))))
    `(company-scrollbar-fg   ((,class (:foreground ,keyword))))
    `(company-tooltip        ((,class (:foreground ,fg2 :background ,bg1 :bold t))))
    `(company-tooltop-annotation       ((,class (:foreground ,const))))
    `(company-tooltip-common           ((,class (:foreground ,fg3))))
    `(company-tooltip-common-selection ((,class (:foreground ,str))))
    `(company-tooltip-mouse            ((,class (:inherit highlight))))
    `(company-tooltip-selection        ((,class (:background ,bg3 :foreground ,fg3))))
    `(company-template-field           ((,class (:inherit region))))

    `(undo-tree-visualizer-current-face    ((,class :foreground ,builtin)))
    `(undo-tree-visualizer-default-face    ((,class :foreground ,fg2)))
    `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
    `(undo-tree-visualizer-register-face   ((,class :foreground ,type)))

    `(font-latex-bold-face                ((,class (:foreground ,type))))
    `(font-latex-italic-face              ((,class (:foreground ,var :italic t))))
    `(font-latex-string-face              ((,class (:foreground ,str))))
    `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
    `(font-latex-match-variable-keywords  ((,class (:foreground ,var))))

    `(gnus-header-content ((,class (:foreground ,keyword))))
    `(gnus-header-from    ((,class (:foreground ,var))))
    `(gnus-header-name    ((,class (:foreground ,type))))
    `(gnus-header-subject ((,class (:foreground ,func :bold t))))

    `(mu4e-view-url-number-face ((,class (:foreground ,type))))
    `(mu4e-cited-1-face ((,class (:foreground ,fg2))))
    `(mu4e-cited-7-face ((,class (:foreground ,fg3))))
    `(mu4e-header-marks-face ((,class (:foreground ,type))))

    `(js2-private-function-call    ((,class (:foreground ,const))))
    `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
    `(js2-jsdoc-html-tag-name      ((,class (:foreground ,var))))
    `(js2-jsdoc-value              ((,class (:foreground ,str))))
    `(js3-jsdoc-tag-face           ((,class (:foreground ,keyword))))
    `(js2-external-variable        ((,class (:foreground ,type  ))))
    `(js2-function-param           ((,class (:foreground ,const))))
    `(js3-function-param-face      ((,class (:foreground ,fg2))))
    `(js2-private-member           ((,class (:foreground ,fg3))))
    `(js3-warning-face             ((,class (:underline ,keyword))))
    `(js3-error-face               ((,class (:underline ,warning))))
    `(js3-external-variable-face   ((,class (:foreground ,var))))
    `(js3-instance-member-face     ((,class (:foreground ,const))))

    `(web-mode-builtin-face         ((,class (:inherit ,font-lock-builtin-face))))
    `(web-mode-comment-face         ((,class (:inherit ,font-lock-comment-face))))
    `(web-mode-constant-face        ((,class (:inherit ,font-lock-constant-face))))
    `(web-mode-keyword-face         ((,class (:foreground ,keyword))))
    `(web-mode-doctype-face         ((,class (:inherit ,font-lock-comment-face))))
    `(web-mode-function-name-face   ((,class (:inherit ,font-lock-function-name-face))))
    `(web-mode-string-face          ((,class (:foreground ,str))))
    `(web-mode-type-face            ((,class (:inherit ,font-lock-type-face))))
    `(web-mode-html-attr-name-face  ((,class (:foreground ,func))))
    `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))
    `(web-mode-warning-face         ((,class (:inherit ,font-lock-warning-face))))
    `(web-mode-html-tag-face        ((,class (:foreground ,builtin))))

    `(jde-java-font-lock-package-face   ((t (:foreground ,var))))
    `(jde-java-font-lock-public-face    ((t (:foreground ,keyword))))
    `(jde-java-font-lock-private-face   ((t (:foreground ,keyword))))
    `(jde-java-font-lock-constant-face  ((t (:foreground ,const))))
    `(jde-java-font-lock-modifier-face  ((t (:foreground ,fg2))))
    `(jde-jave-font-lock-protected-face ((t (:foreground ,keyword))))
    `(jde-java-font-lock-number-face    ((t (:foreground ,var))))))



;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'darkplus)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; darkplus.el ends here
