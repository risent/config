
(defun my-auto-pair()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  (set skeleton-pair-alist'(
			    (?' ?' _ "'")
			    (?\( ? _ ")")
			    (?\[ ? _ ")")
			    (?\{ > \n > _ \n ?} >)))
  (setq skeleton-pair t)
  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kdb "{") 'skeleton-pair-insert-maybe)
  (local-set-key (kdb "'") 'skeleton-pair-insert-maybe)
  (local-set-key (kdb "[") 'skeleton-pair-insert-maybe))
(add-hook 'c-mode-hook 'my-auto-pair)
(add-hook 'c++-mode-hook 'my-auto-pair)
(add-hook 'java-mode-hook 'my-auto-pair)
(add-hook 'python-mode-hook 'my-auto-pair)
(add-hook 'html-mode-hook 'my-auto-pair)
;; Org-mode settings
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-font-lock-mode 1)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )









(defun color-theme-vivid-chalk ()
  "Based on Vivid Chalk, a vim port of Vibrant Ink."
  (interactive)
  (color-theme-install
   '(color-theme-vivid-chalk
     ((background-color . "black")
      (background-mode . dark)
      (border-color . "black")
      (cursor-color . "white")
      (foreground-color . "white")
      (list-matching-lines-face . bold)
      (view-highlight-face . highlight))
     (default ((t (nil))))
     (bold ((t (:bold t))))
     (bold-italic ((t (:italic t :bold t))))
     (fringe ((t (:background "black"))))
     (font-lock-builtin-face ((t (:foreground "#aaccff"))))
     (font-lock-comment-face ((t (:italic t :foreground "#9933cc"))))
     (font-lock-comment-delimiter-face ((t (:foreground "#9933cc"))))
     (font-lock-constant-face ((t (:foreground "#339999"))))
     (font-lock-function-name-face ((t (:foreground "#ffcc00"))))
     (font-lock-keyword-face ((t (:foreground "#ff6600"))))
     (font-lock-preprocessor-face ((t (:foreground "#aaffff"))))
     (font-lock-reference-face ((t (:foreground "LightSteelBlue"))))
     (font-lock-string-face ((t (:foreground "#66FF00"))))
     (font-lock-doc-face ((t (:foreground "LightSalmon"))))
     (font-lock-type-face ((t (:italic t :foreground "#aaaaaa"))))
     (font-lock-variable-name-face ((t (:foreground "#aaccff"))))
     (font-lock-warning-face ((t (:bold t :foreground "Pink"))))
     (paren-face-match-light ((t (:background "#222222"))))
     (highlight ((t (:background "darkolivegreen"))))
     (italic ((t (:italic t))))
     (modeline ((t (:background "#a5baf1" :foreground "black"))))
     (modeline-buffer-id ((t (:background "#a5baf1" :foreground
"black"))))
     (modeline-mousable ((t (:background "#a5baf1" :foreground
"black"))))
     (modeline-mousable-minor-mode ((t (:background
"#a5baf1" :foreground "black"))))
     (region ((t (:background "#555577"))))
     (primary-selection ((t (:background "#555577"))))
     (isearch ((t (:background "#555555"))))
     (zmacs-region ((t (:background "#555577"))))
     (secondary-selection ((t (:background "darkslateblue"))))
     (flymake-errline ((t (:background "LightSalmon" :foreground
"black"))))
     (flymake-warnline ((t (:background "LightSteelBlue" :foreground
"black"))))
     (underline ((t (:underline t))))
     (minibuffer-prompt ((t (:bold t :foreground "#ff6600"))))))) 

