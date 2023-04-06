(defun tc/make-pretty ()
  (interactive)
  (when (locate-dominating-file (expand-file-name default-directory)
                                "prettier.config.js")
    (let ((default-directory "~/Projects/app-frontend" ))
    (shell-command (format "yarn run prettier --write %s" buffer-file-name)))
    (revert-buffer nil t)))

(defun tc/turn-on-prettier-on-save ()
  (add-hook 'after-save-hook 'tc/make-pretty nil 'local))

(use-package! typescript-mode
  :init
  (add-hook! typescript-mode 'tc/turn-on-prettier-on-save)
  ;; it's a crime to indent 4 spaces
  )
