(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;;use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;cyberpunk theme
(unless (package-installed-p 'cyberpunk-theme)
  (package-refresh-contents)
  (package-install 'cyberpunk-theme))
(load-theme 'cyberpunk t)

;;elcord -
(unless (package-installed-p 'elcord)
  (package-refresh-contents)
  (package-install 'elcord))
(elcord-mode)

;;general settings -
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
;;font -
(set-frame-font "JetBrains Mono" nil t)
;;startup screen -
(setq inhibit-startup-screen t)

(use-package which-key
  :ensure t
  :init(which-key-mode))


;;ansi term
(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

;;alias -
(defalias 'yes-or-no-p 'y-or-n-p)

;;keybinding for ansi terminal -
(global-set-key (kbd "<s-return>") 'ansi-term) 

;;no politics -
(setq scroll-conservatively 100)

;; remove the bell -
(setq ring-bell-function 'ignore)

;;find your cursor only for GUI -
(when  window-system (global-hl-line-mode t))

;;prettify symbols for GUI only -
( when window-system(global-prettify-symbols-mode t)) 

;;remove the backup files -
(setq make-backup-files nil)
(setq auto-save-default nil)

;;beacon -
(use-package beacon
  :ensure t
  :init
  (beacon-mode t))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(Custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(package-selected-packages (quote (use-package))))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(custom-safe-themes
   (quote
    ("b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" default)))
 '(fci-rule-color "#383838")
 '(package-selected-packages
   (quote
    (beacon which-key use-package elcord cyberpunk-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
