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

;; C-x C-k �ł�kill-buffer�ł���悤�ɂ���
(define-key global-map (kbd "C-x C-k") 'kill-buffer)

;; C-x C-x��M-x�Ɠ����̋@�\�����蓖�Ă�
(define-key global-map (kbd "C-x C-x") 'execute-extended-command)

;; M-+�Ƀt�H���g�̊g���ݒ肷��
(define-key global-map (kbd "M-+") 'text-scale-adjust)

;; C-M-_��indent-region�����蓖�Ă�
(define-key global-map (kbd "C-M-_") 'indent-region)

;; C-c C-c ��compile�����蓖�Ă�
(global-set-key (kbd "C-c C-c") 'compile)

;; M-,��C-,�Ń^�O��߂��悤�ɂ���
(global-set-key (kbd "M-,") 'pop-tag-mark)
(global-set-key (kbd "C-,") 'pop-tag-mark)


;;;; �c�[���̋N���n  ;;;;;

;; C-c k��anything-show-kill-ring���N��
(define-key global-map (kbd "C-c k") 'anything-show-kill-ring)
(define-key global-map (kbd "C-c C-k") 'anything-show-kill-ring)

;; C-c f��anything-for-files���N��
(define-key global-map (kbd "C-c f") 'anything-for-files)
(define-key global-map (kbd "C-c C-f") 'anything-for-files)

;; C-c s��shell���N��
(define-key global-map (kbd "C-c s") 'shell)

;; C-c o��anything-c-moccur-occur-by-moccur�����蓖�Ă�
(define-key global-map (kbd "C-M-o") 'anything-c-moccur-occur-by-moccur)

;; C-c a��auto-complete
;;(define-key ac-mode-map (kbd "C-c a") 'auto-complete)

;; C-; ��anything
(define-key global-map (kbd "C-;") 'anything)

;; M-o o��occur-by-moccur�����蓖��
(define-key global-map (kbd "M-o") 'occur-by-moccur)

;;;;; �����܂Ńc�[���̋N���n ;;;;;

;;;;;; mode�ŗL ;;;;;;

;;; c-lang ;;;
;; refactor
(define-key c-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
(define-key c++-mode-map (kbd "M-RET") 'srefactor-refactor-at-point)
;; find-tag
(define-key c-mode-map (kbd "C-.") 'find-tag)
(define-key c++-mode-map (kbd "C-.") 'find-tag)
(define-key c-mode-map (kbd "C-,") 'pop-tag-mark)
(define-key c++-mode-map (kbd "C-,") 'pop-tag-mark)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; ���݂̃f�B���N�g�������o�͂���R�}���h
(global-set-key (kbd "C-c C-d") (lambda () (interactive) (insert buffer-file-name)))


