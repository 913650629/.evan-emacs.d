(defun awesome-tray-meow-status ()
  (meow-indicator))
(defun perspeen-status()
  (car (cdr perspeen-modestring)))
(defun evan-battery-status ()
  (defface evan-battery-ac-face
    '((t (:weight bold :foreground "#228b22")))
    "充电时的battery颜色")
  (defface evan-battery-bat-face
    '((t (:weight bold :foreground "#eedd82")))
    "放电时的battery颜色")
  (require 'battery)
  (let* ((battery-info (funcall battery-status-function))
         (battery-state (cdr (nth 8 battery-info)))
         (battery-amount (cdr (nth 7 battery-info))))
    (propertize (format "%s-%s%%" battery-state battery-amount) 'face (if (string= battery-state "AC")
                                                                          `evan-battery-ac-face
                                                                        `evan-battery-bat-face))))
(with-eval-after-load 'awesome-tray
  (add-to-list 'awesome-tray-module-alist '("meow" . (awesome-tray-meow-status)))
  (add-to-list 'awesome-tray-module-alist '("perspeen" . (perspeen-status)))
  (add-to-list 'awesome-tray-module-alist '("evan-battery" . (evan-battery-status)))
  (setq awesome-tray-active-modules '("perspeen" "meow" "git" "location" "parent-dir" "mode-name" "evan-battery" "date")))

(provide 'private-awesome-tray)
