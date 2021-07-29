(push "~/Documents/org/study.org" org-agenda-files)
(push "~/Documents/org/day.org" org-agenda-files)
(use-package org-html-themify
  :disabled
  :quelpa (org-html-themify
           :fetcher github
           :repo "DogLooksGood/org-html-themify"
           :files ("*.el" "*.js" "*.css"))
  :hook (org-mode . org-html-themify-mode)
  :custom
  (org-html-themify-themes
   '((dark . doom-tomorrow-night)
     (light . doom-tomorrow-day))))

(use-package hexrgb
  :disabled
  :quelpa ((hexrgb
           :fetcher github
           :repo "emacsmirror/hexrgb")))

;;高亮
(defface hi-red-b '((t (:foreground "#e50062"))) t)

(defun org-bold-highlight ()
  (interactive)
  (hi-lock-mode)
  (highlight-regexp "[ \\t]\\(\\*\\(\\S-[^*]+\\S-\\|[^*]\\{1,2\\}\\)\\*\\)[ \\t\\n]*" 'hi-red-b))

(add-hook 'org-mode-hook 'org-bold-highlight)
;;自动换行
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

(provide 'private-org)
