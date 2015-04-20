;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; �G���Ȑݒ�
;; ���܂��Ȃ�
(require 'cl)
;; Emacs����̎����y/n�ŉ񓚂���
(fset 'yes-or-no-p 'y-or-n-p)
;; �X�^�[�g�A�b�v���b�Z�[�W���\��
(setq inhibit-startup-screen t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; CUA���[�h�ɂ��邪�A�L�[�o�C���h�͕ς��Ȃ��i��`�ҏW�̂��߁j
;; ��`���[�h��C-SPC C-RET �ŃX�^�[�g
(cua-mode t) ; cua-mode���I��
(setq cua-enable-cua-keys nil) ; CUA�L�[�o�C���h�͖���
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ���[�h�p�X�̐ݒ�
;; ���[�h�p�X��elisp��ǉ�����
(setq load-path
      (append
       (list (expand-file-name "~/Dropbox/.emacs.d/elisp")) load-path))
;; ���[�h�p�X��elpa��ǉ�����
(setq load-path
      (append
       (list (expand-file-name "~/Dropbox/.emacs.d/elpa")) load-path))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; �����ς݃c�[���Ɋւ���ݒ�̃��[�h


;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)


;; anything�Ɋւ���ݒ�
(load "myAnything")
;; anything-c-moccur�Ɋւ���ݒ�
(load "myAnything-c-moccur")
;; color-moccur
(load "myColor-moccur")
;; moccur-edit
(load "myMoccur-edit")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; �l�I�Ȑݒ�̃��[�h
;; �����Őݒ肵���L�[�}�b�v��ǂݍ���
(load "myKeyMap")
;; �����Őݒ肵����ʂ̐ݒ��ǂݍ���
(load "myFrame")
;; �����Őݒ肵���o�b�N�A�b�v�Ɋւ���ݒ��ǂݍ���
(load "myBackup")
;; �����Őݒ肵�����[�h�Ɋւ���ݒ��ǂݍ���
(load "myMode")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; rubymode
(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(setq auto-mode-alist (cons '("\\.rb$" . ruby-mode) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode)) interpreter-mode-alist))
(autoload 'run-ruby "inf-ruby" "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby" "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook '(lambda () (inf-ruby-keys)))

;; rubydb
(autoload 'ruby "rubydb2x"
  "run rubydb on program file in buffer *gud-file*.
the directory containing file becomes the initial working directory
and source-file directory for your debugger." t)

;; ruby-electric.el --- electric editing commands for ruby files
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda () (ruby-electric-mode t)))
(let ((rel (assq 'ruby-electric-mode minor-mode-map-alist)))
  (setq minor-mode-map-alist (append (delete rel minor-mode-map-alist) (list rel))))
(setq ruby-electric-expand-delimiters-list nil)

(setq ruby-indent-level 2)
(setq ruby-indent-tabs-mode nil)
;;

;;
;; (require 'ruby-block)
;; (defun ruby-mode-hook-ruby-block()
;;   (ruby-block-mode t))
;; (add-hook 'ruby-mode-hook 'ruby-mode-hook-ruby-block)
;; (setq ruby-block-highlight-toggle t)

;; compile���ȒP�ɂ���
(require 'smart-compile)
;; �L�[�{�[�h�Ɋ��蓖��
(define-key ruby-mode-map (kbd "C-c c") 'smart-compile)
(define-key ruby-mode-map (kbd "C-c C-c") 'smart-compile)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; �V�F���̃p�X�ݒ���󂯎��
(require 'exec-path-from-shell)

(let ((envs `("PATH" "GOPATH")))
  (exec-path-from-shell-copy-envs envs))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; go-mode��L���ɂ���
(require 'go-mode)
;;(require 'go-mode-load)

;; go�̐ݒ�
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook '(lambda () (setq tab-width 2)))
;; godef
(add-hook 'go-mode-hook (lambda () (local-set-key (kbd "M-.") 'godef-jump)))
(add-hook 'go-mode-hook (lambda () (local-set-key (kbd "C-.") 'godef-jump)))
(add-hook 'go-mode-hook (lambda () (local-set-key (kbd "M-,") 'pop-tag-mark)))
(add-hook 'go-mode-hook (lambda () (local-set-key (kbd "C-,") 'pop-tag-mark)))

;; gocode
(require 'go-autocomplete)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;; �ȉ��A�����Őݒ肳�ꂽ����
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
