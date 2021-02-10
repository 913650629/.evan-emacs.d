(add-hook 'circadian-after-load-theme-hook (lambda ()
                                             (shell-command "i3-msg reload")))

(delete-selection-mode -1)

(provide 'private-hooks)
