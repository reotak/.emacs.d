;;; "~/Dropbox/.emacs.d/auto_backup/"�Ɏ����o�b�N�A�b�v��ۑ�����悤�ɂ���
(add-to-list 'backup-directory-alist
	     (cons "." "~/Dropbox/.emacs.d/auto_backup/"))
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/Dropbox/.emacs.d/auto_backup/") t)))
