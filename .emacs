;; The following lines are always needed. Choose your own keys.
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode)) ; not needed since Emacs 22.2
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;;Get rid of those fucking ~ files
(setq make-backup-files nil)

;;Easy goto-line
(global-set-key "\M-g" `goto-line)

;;Stop inserting tab characters
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;;This is supposed to help with files saving
;;speed although it doesn't really seem to be doing anything
(setq vc-handled-backends nil)

(load-theme 'tsdh-dark t)

;;Functions to handle moving to other windows 
(defun move-cursor-next-pane ()
  (interactive)
  (other-window 1))

(defun move-cursor-previous-pane ()
  (interactive)
  (other-window -1))

(global-set-key "\C-xn" 'move-cursor-next-pane)
(global-set-key "\C-xp" 'move-cursor-previous-pane)
(put 'upcase-region 'disabled nil)

(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))

(require 'nginx-mode)
(add-to-list 'auto-mode-alist '("\\.com\\'" . nginx-mode))   
(put 'downcase-region 'disabled nil)

(add-to-list 'load-path (expand-file-name "~/Work/emacs/"))

;; If use bundled typescript.el,
(require 'typescript)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

(require 'tss)

;; Key binding
(setq tss-popup-help-key "C-:")
(setq tss-jump-to-definition-key "C->")
(setq tss-implement-definition-key "C-c i")
(tss-config-default)

;; ============= Whitespace mode ===============
(require 'whitespace)

(setq whitespace-trailing-regexp " \\(\\(\t\\| \\|\xA0\\|\x8A0\\|\x920\\|\xE20\\|\xF20\\)+\\)$")
(setq whitespace-style '(face empty tabs trailing indentation space-before-tab space-after-tab lines-tail))
(setq whitespace-line-column 80)
(global-whitespace-mode 1)
