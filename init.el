;; Author: Andrei Morozov
;; +Simple Emacs Config
;; -+ currently only using Melpa package archieve

;; Packages
;; * Evil mode
;;  ** cannot live without it, uses VIMs key binding rather than default Emacs
;; * window numbering mode
;;  ** allows easy to navigate windows via meta+# (number key for window number)
(package-initialize)

(require 'package) ;; You might already have this line
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))


(evil-mode t)
(setq mac-command-modifier 'meta)
(window-numbering-mode t)






;; custom emacs configratino, don't touchy touchy
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(package-selected-packages (quote (solarized-theme window-numbering evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
