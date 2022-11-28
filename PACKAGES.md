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


## elpy


## [nix-mode](https://github.com/NixOS/nix-mode)
A major mode for editing Nix expressions (.nix files).  See the Nix manual
for more information available at https://nixos.org/nix/manual/.

## rustic



