(push "~/Documents/org/capture/study.org" org-agenda-files)
(push "~/Documents/org/capture/code.org" org-agenda-files)


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

(provide 'private-org)
