(setq
 evan/eaf-grip-token "32872f2ccde165e5d36548619681c7b7e7ec8793"
 ;; 英文字体
 ;; evan/en-font-name "agave Nerd Font"
 ;; evan/en-font-style "r"
 ;; evan/en-font-size 22
 
 ;; evan/en-font-name "Fira Code Nerd Font"
 ;; evan/en-font-style "Regular"
 ;; evan/en-font-size 20
 ;; evan/zh-font-size 20
 browse-url-browser-function 'eaf-open-browser
 is-need-meow-module t
 is-need-awesome-tray t
 awesome-tray-refresh-idle-delay 0.1
 split-width-threshold nil)

(setq circadian-themes '((:sunrise . lazycat-light)
                         (:sunset . lazycat-dark)))
(circadian-setup)

(provide 'private-variable)
