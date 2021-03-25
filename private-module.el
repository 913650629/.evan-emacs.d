;; 通过require引入个人的配置模块
;; 例如
;; (require 'private-demo)

(require 'private-variable)
(require 'private-function)
(require 'private-blog)
(require 'private-hooks)
(require 'private-package)
;; (require 'private-racket)
(require 'private-reader)
(require 'private-eaf)
(require 'private-eglot)
(require 'private-org)
(require 'private-meow)

;; 不要删除下面这行
(provide 'private-module)
