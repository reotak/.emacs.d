
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; anything-c-moccur�̐ݒ�
;; �vcolor-moccur.el
(when (require 'anything-c-moccur nil t)
  (setq
   ;; anything-c-moccur�v `anything-idle-deray'
   anything-c-moccur-anything-idle-delay 0.1
   ;; �o�b�t�@�̏����n�C���C�g����
   anything-c-moccur-higlight-info-line-flag t
   ;; ���ݑI�𒆂̌��̈ʒu���ق���window�ɕ\������
   anything-c-moccur-enable-auto-look-flag t
   ;; �N�����Ƀ|�C���g�̈ʒu�̒P������L�p�^�[���ɂ���
   anything-c-moccur-enable-initial-pattern t))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
