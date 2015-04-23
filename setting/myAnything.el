
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; anything�̐ݒ�
;; (auto-install-batch "anything")
(when (require 'anything nil t)
  (setq
   ;; ����\������܂ł̎��ԁD�f�t�H���g��0.5
   anything-idle-dlay 0.3
   ;; �^�C�v���čĕ`�ʂ���܂ł̎��ԁD�f�t�H���g��0.1
   anything-input-idle-delay 0.2
   ;; ���̍ő�\�����D�f�t�H���g��50
   anything-candidate-number-limit 100
   ;; ��₪�����Ƃ��ɑ̊����x�𑁂�����
   anything-quick-update t
   ;; ���I���V���[�g�J�b�g���A���t�@�x�b�g��
   anything-enable-shortcuts 'alphabet)

  (when (require 'anything-config nil t)
    ;; root�����ŃA�N�V���������s����Ƃ��̃R�}���h
    ;; �f�t�H���g��"su"
    (setq anything-su-or-sudo "sudo"))

  (require 'anything-match-plugin nil t)

  (when (and (executable-find "cmigemo")
	     (require 'migemo nil t))
    (require 'anything-migemo nit t))

  (when (require 'anything-complete nil t)
    ;; lisp�V���{���⊮���̍Č�������
    (anything-lisp-complete-symbol-set-timer 150))

  (require 'anything-show-completion nil t)

  (when (require 'auto-install nil t)
    (require 'anything-auto-install nil t))

  (when (require 'descbinds-anything nil t)
    ;; describe-bindings��Anything�ɒu��������
    (descbinds-anything-install)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
