;; Shift+���L�[�Ńo�b�t�@�ړ�
(windmove-default-keybindings)

;; C-m��newline-add-indent�����蓖�Ă�i���s��C���f���g�j
;; (global-set-key (kbd "C-m") 'newline-and-indent)

;; �܂�Ԃ��g�O���R�}���h��C-c l�Ɋ��蓖�Ă�
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)

;; C-h���L�[�o�C���h�̕\���ɐ؂�ւ���
(define-key global-map (kbd "C-h") 'describe-bindings)

;; C-t�ŃE�B���h�E��؂�ւ���iC-x o�Ɠ����j
(define-key global-map (kbd "C-t") 'other-window)

;; C-x��undo�����蓖�Ă�
(define-key global-map (kbd "C-z") 'undo)

;; C-x C-x��M-x�Ɠ����̋@�\�����蓖�Ă�
(define-key global-map (kbd "C-x C-x") 'execute-extended-command)

;; M-+�Ƀt�H���g�̊g���ݒ肷��
(define-key global-map (kbd "M-+") 'text-scale-adjust)



;;;; �c�[���̋N���n  ;;;;;

;; C-c y��anything-show-kill-ring���N��
(define-key global-map (kbd "C-c y") 'anything-show-kill-ring)

;; C-c f��anything-for-files���N��
(define-key global-map (kbd "C-c f") 'anything-for-files)

;; C-c s��shell���N��
(define-key global-map (kbd "C-c s") 'shell)

;; C-c o��anything-c-moccur-occur-by-moccur�����蓖�Ă�
(define-key global-map (kbd "C-M-o") 'anything-c-moccur-occur-by-moccur)

;; C-c a��auto-complete
;;(define-key ac-mode-map (kbd "C-c a") 'auto-complete)

(define-key global-map (kbd "C-;") 'anything)

;; M-o��occur-by-moccur�����蓖��
(define-key global-map (kbd "M-o") 'occur-by-moccur)

;;;;; �����܂Ńc�[���̋N���n ;;;;;
