(use-package! clojure-mode
  :init
  (add-hook! 'clojure-mode (lambda () (paredit-mode t)))
  (lambda ()
    (load! "lib/cljstyle-mode.el")
    (when shortcut-elisp-loaded
      (add-hook! clojure-mode-hook 'shortcut-backend-font-lock)))
  (setq clojure-indent-style :always-align)

  )

(use-package! cider
	:init
  (add-hook! 'cider-repl-mode (lambda () (paredit-mode t)))
  (setq
   cider-font-lock-dynamically        nil
   cider-auto-select-error-buffer     t
   ;; try symbol at point before asking
   cider-prompt-for-symbol            nil
   cider-eval-spinner-type            'vertical-breathing
   cider-repl-print-length            100
   cider-repl-wrap-history            t
   cider-repl-history-file           (concat user-emacs-directory "cider-repl-history")
   cider-repl-pop-to-buffer-on-connect 'display-only
   cider-repl-use-content-types       nil
   cider-repl-display-help-banner     nil
   cider-repl-prompt-function         (lambda (namespace)
                                        (format "%s>\n" namespace)))

)
