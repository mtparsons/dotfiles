;; The following lines are always needed. Choose your own keys.
;;Get rid of those fucking ~ files
(setq make-backup-files nil)

;;Easy goto-line
(global-set-key "\M-g" `goto-line)

;;Stop inserting tab characters
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

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

(put 'downcase-region 'disabled nil)

;; Not using this anymore

;; ============= Whitespace mode ===============
(require 'whitespace)

(setq whitespace-trailing-regexp " \\(\\(\t\\| \\|\xA0\\|\x8A0\\|\x920\\|\xE20\\|\xF20\\)+\\)$")
(setq whitespace-style '(face empty tabs trailing indentation space-before-tab space-after-tab lines-tail))
(setq whitespace-line-column 80)
(global-whitespace-mode 1)

(package-initialize)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(elpy-enable)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)
