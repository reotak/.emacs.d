;; color-moccur�Ɋւ���ݒ�
(when (require 'color-moccur nil t)
  ;; �X�y�[�X��؂��AND����
  (setq moccur-split-word t)
  ;; �f�B���N�g�������ȊO�̂Ƃ����O����t�@�C��
  (add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
  (add-to-list 'dmoccur-exclusion-mask "^#.+#$")
  ;; Migemo�𗘗p�ł�����ł����Migemo���g��
  (when (and (executable-find "cmigemo")
	     (require 'migemo nil t))
    (setq moccur-use-migemo t)))
