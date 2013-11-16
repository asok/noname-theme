(deftheme noname "Based on Sublime's Hickey theme")

(let ((background     "#1D2021")
      (dark-gray      "#333333")
      (mid-gray       "#555555")
      (light-gray     "#666666")
      (lightest-gray  "#999999")
      (comment-slate  "#505C63")
      (light-slate    "#465459")
      (dark-slate     "#161A1F")
      (gray-blue      "#95bbd6")
      (subtle-green   "#c7de92")
      (white          "#F8F8F2")
      (dirty-white    "#c4cbcc")
      ;; (dirty-white  "#F8F8F0")
      (subtle-red     "#d97977")
      (lighter-orange "#fab361"))

  (custom-theme-set-faces
   'noname

   `(default ((t (:background ,background :foreground ,dirty-white))))
   `(cursor  ((t (:background ,lightest-gray))))
   `(hl-line ((t (:background ,light-gray))))
   `(modeline ((t (:foreground ,lightest-gray :background ,mid-gray))))
   `(mode-line-inactive ((t (:box nil :foreground ,light-gray :background ,dark-gray))))
   `(mode-line ((t (:box nil :foreground ,background :background ,gray-blue))))
   `(fringe ((t (:background ,background))))
   `(region ((t (:foreground ,light-slate :background ,dark-slate))))
   `(minibuffer-prompt ((default (:foreground ,gray-blue))))

   `(font-lock-builtin-face ((t (:foreground ,lighter-orange))))
   `(font-lock-constant-face ((t (:foreground ,gray-blue))))
   `(font-lock-comment-face ((t (:foreground ,comment-slate))))
   `(font-lock-function-name-face ((t (:foreground ,lighter-orange))))
   `(font-lock-keyword-face ((t (:foreground ,white :bold t))))
   `(font-lock-string-face ((t (:foreground ,subtle-green))))
   `(font-lock-variable-name-face ((t (:foreground ,subtle-red))))
   `(font-lock-type-face ((t (:foreground ,lightest-gray :bold t))))
   `(font-lock-warning-face ((t (:foreground ,lightest-gray :bold t))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,lighter-orange :bold t))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,subtle-red :bold t))))

   `(flymake-warnline ((t (:underline ,lightest-gray))))
   `(flymake-errline ((t (:underline ,subtle-red))))

   `(flycheck-warning ((t (:underline ,lightest-gray))))
   `(flycheck-error ((t (:underline ,subtle-red))))

   `(disubtle-red-directory ((t (:foreground ,gray-blue))))
   `(disubtle-red-header ((t (:foreground ,lighter-orange))))

   `(compilation-info ((t (:foreground ,gray-blue))))

   `(helm-selection ((t (:underline ,gray-blue))))

   `(magit-diff-none ((t (:background ,dark-slate))))
   
   `(ido-subdir ((t (:foreground ,white :bold t))))
   `(ido-first-match ((t (:foreground ,lighter-orange))))
   `(ido-only-match ((t (:foreground ,subtle-red))))

   `(button ((t (:foreground ,lighter-orange :underline t))))


   `(powerline-active1 ((t (:background ,dirty-white :foreground ,background))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background "nil")))))))

(provide-theme 'noname)

;; Local Variables:
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode 1))
;; fill-column: 95
;; End:
