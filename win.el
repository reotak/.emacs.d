
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; font���䂽�ۂ�ɂ���
;;(set-face-attribute 'default nil
;;		    :family "�䂽�ۂ�i�R�[�f�B���O�j"
;;		    :height 150)
;;(set-fontset-font
;; nil 'japanese-jisx0208
;; (font-spec :family "�䂽�ۂ�i�R�[�f�B���O�j"))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; font���䂽�ۂ�ɂ���
;;(set-face-attribute 'default nil
;;		    :family "�䂽�ۂ�i�R�[�f�B���O�j"
;;		    :height 120)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; shell�̕��������΍�(Windows)
;; shell�ŕ����������N�������߁ASJIS�œ��́ASJIS�ŏo�͂���悤�ɐݒ�
(add-hook
 'shell-mode-hook
 '(lambda ()
    (set-buffer-process-coding-system 'sjis 'sjis)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Windows�p�̃t�H���_�̃p�X��ǉ�����
(setq load-path
      (append
       (list (expand-file-name  "~/Dropbox/.emacs.d/win/")) load-path))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; M-x powershell��powershell���N���ł���悤�ɂ���
(autoload 'powershell "powershell" "Run powershell as a shell within emacs." t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

