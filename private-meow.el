;; (add-hook 'meow-mode-hook (lambda ()
;;                             (meow-normal-define-key
;;                              '("j" . meow-head)
;;                              '("J" . meow-head-expand)
;;                              '("k" . meow-next)
;;                              '("K" . meow-next-expand)
;;                              '("l" . meow-prev)
;;                              '("L" . meow-prev-expand)
;;                              '(";" . meow-tail)
;;                              '(":" . meow-tail-expand)
;;                              '("h" . meow-reverse))))

(setq meow-expand-exclude-mode-list nil)
(with-eval-after-load 'meow
  (meow-motion-overwrite-define-key
 '("e" . meow-next-word)
 '("b" . meow-back-word)
 '("x" . meow-line)
 '(";" . meow-reverse)
 '("v" . meow-visit)
 '("o" . meow-block)
 '("0" . meow-expand-0)
 '("9" . meow-expand-9)
 '("8" . meow-expand-8)
 '("7" . meow-expand-7)
 '("6" . meow-expand-6)
 '("5" . meow-expand-5)
 '("4" . meow-expand-4)
 '("3" . meow-expand-3)
 '("2" . meow-expand-2)
 '("1" . meow-expand-1)
 '("y" . meow-save)))



(provide 'private-meow)
