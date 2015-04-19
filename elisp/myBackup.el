;;; "~/Dropbox/.emacs.d/auto_backup/"に自動バックアップを保存するようにする
(add-to-list 'backup-directory-alist
	     (cons "." "~/Dropbox/.emacs.d/auto_backup/"))
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/Dropbox/.emacs.d/auto_backup/") t)))
