
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; auto-completeÇÃê›íË
(when (require 'auto-complete-config nil t)
  (add-to-list 'ac-dictionary-directories
	       "~/Dropbox/.emacs.d/elisp/ac-dict")
  (ac-config-default)
  )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
