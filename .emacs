;; The following lines are always needed. Choose your own keys.
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
