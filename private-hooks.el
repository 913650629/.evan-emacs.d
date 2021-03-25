(add-hook 'circadian-after-load-theme-hook (lambda ()
                                             (shell-command "i3-msg reload")))
(push '(+evan/toggle-transparency) graphic-only-plugins-setting)
(delete-selection-mode -1)

(provide 'private-hooks)
