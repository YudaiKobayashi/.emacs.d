;; C-h as backspace
(keyboard-translate ?\C-h ?\C-?)
;;(global-set-key "\C-h" 'delete-backward-char)

(setq read-file-name-completion-ignore-case t)
(setq-default show-trailing-whitespace t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(require 'undo-tree)
(global-undo-tree-mode)

;; Loading my elisp files
(add-to-list 'load-path "~/.emacs.d/lisp/")
(cond ((eq window-system 'mac) (load "mac.el"))
      ((eq window-system 'x) (load "ubuntu.el")))

(global-set-key (kbd "<tab>") 'completion-at-point)
(global-set-key (kbd "<C-tab>") 'next-buffer)
(global-set-key (kbd "<backtab>") 'previous-buffer)
(global-set-key (kbd "s-]") 'next-buffer)
(global-set-key (kbd "s-[") 'previous-buffer)

;; Line number
(require 'linum)
(global-linum-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (manoj-dark)))
 '(frame-resize-pixelwise t)
 '(fringe-mode 0 nil (fringe))
 '(mac-font-panel-mode nil)
 '(package-selected-packages
   (quote
    (dash-at-point unicode-fonts dash dashboard markdown-mode jedi android-mode swift-mode w3 undo-tree mmm-mode lua-mode google-c-style flycheck fill-column-indicator f exec-path-from-shell dash-functional csv-mode company applescript-mode apples-mode)))
 '(python-indent-offset 4)
 '(ring-bell-function (quote ignore))
 '(safe-local-variable-values
   (quote
    ((tex-master . "minuscule.tex")
     (tex-master . "designs.tex"))))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq nxml-child-indent 4 nxml-attribute-indent 4)

;; (setq confirm-kill-emacs 'y-or-n-p)

;; dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)
;;(setq dashboard-items '((recents . 5) (bookmarks . 5) (projects . 5)))
;;(setq dashboard-banner-logo-title "Welcome to ｱｯｶﾘ~ﾝ")
;;(setq dashboard-startup-banner "~/Downloads/akari.jpeg")
