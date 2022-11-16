;;
;;


(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))


(custom-set-variables
  '(custom-enabled-themes '(misterioso))
  '(global-hl-line-mode t)
  '(global-linum-mode t)
  '(inhibit-startup-screen t)
  '(make-backup-files nil)
  '(menu-bar-mode nil)
  '(ring-bell-function 'ignore)
  '(scroll-bar-mode nil)
  '(tool-bar-mode nil)
  '(visible-bell t)
)


(custom-set-faces
   '(default ((t (:inherit nil :extend nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight semi-bold :height 120 :width normal :foundry "outline" :family "Cascadia Code")))))


(bind-key "C-M-<up>" 'enlarge-window)
(bind-key "C-M-<right>" 'enlarge-window-horizontally)
(bind-key "C-M-<down>" 'shrink-window)
(bind-key "C-M-<left>" 'shrink-window-horizontally)

(set-frame-parameter (selected-frame) 'alpha '(98 . 94))
(add-to-list 'default-frame-alist '(alpha . (98 . 94)))

(split-window-vertically)
(other-window 1)
(eshell)
(shrink-window 10)
(other-window 1)

