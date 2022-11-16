;;
;;


;; Language Protocol
(use-package lsp-mode 
  :ensure
  :config (lsp))

;; Selection Framework
(use-package helm 
  :ensure
  :config (require 'helm-config)
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-x b" . helm-mini)
	 ("C-x C-r" . helm-recentf)
	 ("C-c i" . helm-imenu)
	 ("M-y" . helm-show-kill-ring)
	 :map helm-map
	 ("C-z" . helm-select-action)
	 ("<tab>" . helm-execute-persistent-action)))

(use-package flyspell-correct-helm
  :bind ("C-M-;" . flyspell-correct-wrapper)
  :init
  (setq flyspell-correct-interface #'flyspell-correct-helm))

;; Auto Completion
(use-package company
  :ensure
  :config
  (setq company-idle-delay 0
        company-minimum-prefix-length 3
        company-selection-wrap-around t))

;; Syntax Checker
(use-package flycheck
  :ensure)

;; Template System
(use-package yasnippet
  :ensure)

(use-package yasnippet-snippets
  :ensure)

 ;; Custom Mode-Line 
(use-package powerline
  :ensure
  :config (powerline-default-theme))

;; Selection Guesser 
(use-package smart-region
  :ensure)


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

