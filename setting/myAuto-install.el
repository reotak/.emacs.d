;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; auto-install�̐ݒ�
(when (require 'auto-install nil t)
  ;; �C���X�g�[���f�B���N�g����ݒ肷��
  (setq auto-install-directory "~/Dropbox/.emacs.d/elisp/")
  ;; EmacsWiki�ɓo�^����Ă���elisp�̖��O���擾����
  (auto-install-update-emacswiki-package-name t)
  (auto-install-compatibility-setup))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
