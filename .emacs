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
