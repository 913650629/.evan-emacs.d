(use-package eaf
  :commands (eaf-open eaf-search-it eaf-open-browser eaf-open-bookmark eaf-open-browser-with-history)
  :load-path "~/.emacs.d/site-lisp/emacs-application-framework"
  :init
  (use-package epc
    :defer t
    :ensure t)
  (use-package ctable
    :quelpa ((ctable :fetcher github :repo "kiwanami/emacs-ctable"))
    :defer t)
  (use-package deferred
    :quelpa ((deferred :fetcher github :repo "kiwanami/emacs-deferred"))
    :defer t)
  (use-package s
    :defer t
    :ensure t)
  :custom
  (eaf-find-alternate-file-in-dired t)
  (eaf-proxy-type "socks5")
  (eaf-proxy-host evan/proxy-host)
  (eaf-proxy-port evan/proxy-port)
  :config
  (defalias 'browse-web #'eaf-open-browser)
  (setq eaf-grip-token evan/eaf-grip-token)
  ;; (setq eaf-browser-default-search-engine "google")
  (setq eaf-browser-default-search-engine "google")
  (eaf-setq eaf-browse-blank-page-url "https://google.com")
  (eaf-setq eaf-browser-enable-adblocker "true")
  (eaf-setq eaf-browser-default-zoom "1.2")
  (eaf-bind-key scroll_up "C-n" eaf-pdf-viewer-keybinding) 
  (eaf-bind-key scroll_down "C-p" eaf-pdf-viewer-keybinding) 
  (eaf-bind-key take_photo "p" eaf-camera-keybinding)
  (eaf-bind-key nil "x" eaf-browser-keybinding)
  (eaf-bind-key eaf-proxy-insert_or_close_buffer "C-S-x" eaf-browser-keybinding)
  ;; 将eaf 浏览器原本的SPC键命令取消
  ;; (eaf-bind-key nil "SPC" eaf-browser-keybinding)
  ;; 将EAF浏览器中的SPC绑定为meow-leader-keymap
  ;; (eaf-bind-key meow-leader-keymap "SPC" eaf-browser-keybinding)
  ;; (eaf-bind-key nil "SPC" eaf-pdf-viewer-keybinding)
  ;; (eaf-bind-key meow-leader-keymap "SPC" eaf-pdf-viewer-keybinding)
  ;; 将光标自动移动到右下角（防止eaf buffer无法使用emacs快捷键)
  (if (and
	   (> (car (circadian-now-time)) (car (circadian-sunrise)))
	   (< (car (circadian-now-time)) (car (circadian-sunset))))
	  (progn
	    (eaf-setq eaf-pdf-dark-mode "false")
	    (eaf-setq eaf-browser-dark-mode "false") 
	    (eaf-setq eaf-mindmap-dark-mode "false"))
    (progn
      (eaf-setq eaf-pdf-dark-mode "true")
	  (eaf-setq eaf-browser-dark-mode "true") 
	  (eaf-setq eaf-mindmap-dark-mode "true")))
  (setq mouse-avoidance-banish-position '((frame-or-window . frame)
	    								  (side . right)
	    								  (side-pos . 100)
	    								  (top-or-bottom . bottom)
	    								  (top-or-bottom-pos . -100)))
  (mouse-avoidance-mode 'banish))

(provide 'private-eaf)
