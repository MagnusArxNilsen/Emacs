# Archives
```
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))
```

# Installation
```
(setq package-list '(use-package))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
```

# Packages


## [elpy](https://github.com/jorgenschaefer/elpy/)
The Emacs Lisp Python Environment in Emacs. Elpy is an Emacs package to bring powerful Python editing to Emacs. It combines a number of existing Emacs packages, both written in Emacs Lisp as well as Python. For more information, read the Elpy manual: https://elpy.readthedocs.io/en/latest/index.html


## [nix-mode](https://github.com/NixOS/nix-mode)
A major mode for editing Nix expressions (.nix files).  See the Nix manual
for more information available at https://nixos.org/nix/manual/.

## [rustic](https://github.com/brotzeit/rustic)
Based on rust-mode and provides additional features: rust-analyzer configuration, flycheck integration, cargo popup and multiline error parsing. Translation of ANSI control sequences through xterm-color. (async org babel). Custom compilation process and rustfmt errors in a rust compilation mode. Automatic rust-analyzer configuration with eglot or lsp-mode.


