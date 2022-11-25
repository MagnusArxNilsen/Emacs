;; ----
;; -- Emacs Init-Script


;; ----
;; -- Required Archives 

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))


;; ----
;; -- Install Packages

(setq package-list '(use-package))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


;; ----
;; -- Required Packages

(use-package helm 
  :ensure
  :init (helm-mode t)
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

(use-package powerline
  :ensure
  :config (powerline-default-theme))

(use-package company-box
  :ensure
  :init (global-company-mode t)
  :hook (company-mode . company-box-mode)
  :config
  (setq company-idle-delay 0.25
        company-minimum-prefix-length 2
        company-selection-wrap-around t))

(use-package yasnippet-snippets
  :ensure
  :config (yas-global-mode t))

(use-package rustic
  :ensure)

(use-package nix-mode
  :ensure)

(use-package elpy
  :ensure
  :config (elpy-enable))


;; ----
;; -- Customize Variables

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(misterioso))
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(org-startup-indented t)
 '(package-selected-packages '(corfu nix-mode rustic use-package))
 '(ring-bell-function 'ignore)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))


;; ----
;; -- Customize Theme
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#2d3743" :foreground "#e1e1e0" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 120 :width normal :foundry "outline" :family "Cascadia Code")))))


;; ----
;; -- Define Variables


;; ---
;; -- Keybindings

(bind-key "C-c C-SPC" 'yas-insert-snippet)
(bind-key "C-M-<up>" 'enlarge-window)
(bind-key "C-M-<right>" 'enlarge-window-horizontally)
(bind-key "C-M-<down>" 'shrink-window)
(bind-key "C-M-<left>" 'shrink-window-horizontally)
(bind-key "M-\\" 'ispell-word)


;; ---
;; -- Parameters

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(set-frame-parameter (selected-frame) 'alpha '(98 . 94))
(add-to-list 'default-frame-alist '(alpha . (98 . 94)))


;; ----
;; -- Setup Script

(if (eq system-type 'windows-nt)
    (progn (setq ispell-local-dictionary "en_US")
	   (setq ispell-local-dictionary-alist
		 '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']"
		    nil ("-d" "en_US") nil utf-8)))
	   (setq ispell-program-name "hunspell")
	   (setq ispell-hunspell-dict-paths-alist
		 '(("en_US" "~/.emacs.d/hunspell/en_US.aff")))))

(if (eq window-system nil)
    (set-face-attribute 'default nil :background "black"))

(split-window-vertically)
(other-window 1)
(eshell)
(shrink-window 10)
(other-window 1)
(cd "path/to/work/dir")

;; --
;; ---- ~/.emacs.d/init.el
