;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; package.el�̐ݒ�
(when (require 'package nil t)
  (add-to-list 'package-archives
	       '("marmalade" .
		 "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives
	       '("ELPA" .
		 "http://tromey.com/elpa/"))
  ;; �C���X�g�[�������p�b�P�[�W�Ƀ��[�h�p�X��ʂ��ēǂݍ���
  (package-initialize))

;; �C���X�g�[����̃f�B���N�g�����w��
(setq package-user-dir "~/Dropbox/.emacs.d/elpa/")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
