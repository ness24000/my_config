(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(deeper-blue))
 '(org-format-latex-options
   '(:foreground default :background default :scale 2.5 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(package-selected-packages
   '(projectile orderless vertico python-black org auctex jupyter virtualenvwrapper elpy magit))
 '(vterm-tramp-shells '(("ssh" "/bin/bash"))))

;; suppress noise on startup
(setq-default inhibit-startup-screen t
              inhibit-splash-screen t
              initial-scratch-message ";; Buenos dias Sr. Narbona
")

;; remove unwanted elements
(menu-bar-mode 0)   ; disable the menu bar at the top
(scroll-bar-mode 0) ; disable visible scrollbar
(scroll-all-mode 0) ; disable synchronized scrolling of buffers
(tool-bar-mode 0)   ; disable the toolbar
(tooltip-mode 0)    ; disable the tooltip

;; define package repositories
(setq package-archives
      '(("gnu elpa" . "https://elpa.gnu.org/packages/")
        ("melpa"    . "https://melpa.org/packages/")
        ("nongnu"   . "https://elpa.nongnu.org/nongnu/"))
      package-archive-priorities
      '(("melpa"    . 6)
        ("gnu elpa" . 5)
        ("nongnu"   . 4)))

;; enable elpy commands from the moment a python files is opened
(add-hook 'python-mode-hook' elpy-enable)

;; enable flyspell from the moment text mode is open
(add-hook 'text-mode-hook' flyspell-mode)

;; activate vertico (i.e. vertical minibuffer menues) on start up
(add-hook 'after-init-hook' vertico-mode)

;; make org start on org-indent-mode for readability
(add-hook 'org-mode-hook' org-indent-mode)

;; make default font larger
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t :height 170))))

;;add python for org execution
;;Documentation on python in org: https://orgmode.org/worg/org-contrib/
;;babel/languages/ob-doc-python.html
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . nil)
   (python . t)
   (shell . t)))

;; enable y and n for 'yes' and 'no'
(fset 'yes-or-no-p 'y-or-n-p)

;; define key mappings
(define-key python-mode-map (kbd "C-c f") 'python-black-buffer)
(keymap-global-set "C-z" 'shell)

;; setup orderless package for better search
(use-package orderless
  :ensure t
  :config
  (setq completion-styles '(orderless basic)))
;;
(setq tramp-default-remote-shell "/bin/bash")
