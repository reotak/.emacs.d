;; color-theme

;; Emacs�̃o�[�W�������Â��ꍇ�́AColor-theme���g�����߁A���[�h�p�X�ɒʂ�
(when (< emacs-major-version 24)
  (setq load-path
	(append
	 (list (expand-file-name "~/Dropbox/.emacs.d/elisp/color-theme-6.6.0")) load-path)))

(if (< emacs-major-version 24)     
    ;; Emacs�̃o�[�W�������Â��ꍇ��Color-theme���g��
    (when (require 'color-theme nil t)
      ;; �e�[�}��ǂݍ��ނ��߂̐ݒ�
      (color-theme-initialize)
      ;; �e�[�}��holder�ɕύX
      (color-theme-hober))
  (when (>= emacs-major-version 24) ;; �������g�����������߂ɂނ���when���g��
  ;; http://d.hatena.ne.jp/syohex/20121211/1355231365 �𗘗p
    (deftheme molokai
      "Molokai color theme")
    
    (custom-theme-set-faces
     'molokai
     ;; �w�i�E�����E�J�[�\��
     '(cursor ((t (:foreground "#F8F8F0"))))
     '(default ((t (:background "#1B1D1E" :foreground "#F8F8F2"))))
     
     ;; �I��͈�
     '(region ((t (:background "#403D3D"))))
     
     ;; ���[�h���C��
     '(mode-line ((t (:foreground "#F8F8F2" :background "#000000"
				  :box (:line-width 1 :color "#000000" :style released-button)))))
     '(mode-line-buffer-id ((t (:foreground nil :background nil))))
     '(mode-line-inactive ((t (:foreground "#BCBCBC" :background "#333333"
					   :box (:line-width 1 :color "#333333")))))
     
     ;; �n�C���C�g
     '(highlight ((t (:foreground "#000000" :background "#C4BE89"))))
     '(hl-line ((t (:background "#293739"))))
     
     ;; �֐���
     '(font-lock-function-name-face ((t (:foreground "#FFFFFF"))))
     
     ;; �ϐ����E�ϐ��̓��e
     '(font-lock-variable-name-face ((t (:foreground "#FFFFFF"))))
     '(font-lock-string-face ((t (:foreground "#E6DB74"))))
     
     ;; ����L�[���[�h
     '(font-lock-keyword-face ((t (:foreground "#F92672"))))
     
     ;; Boolean
     '(font-lock-constant-face((t (:foreground "#AE81BC"))))
     
     ;; ����
     '(show-paren-match-face ((t (:foreground "#1B1D1E" :background "#FD971F"))))
     '(paren-face ((t (:foreground "#A6E22A" :background nil))))
     
     ;; �R�����g
     '(font-lock-comment-face ((t (:foreground "#74715D"))))
     
     ;; CSS
     '(css-selector ((t (:foreground "#66D9EF"))))
     '(css-property ((t (:foreground "#FD971F"))))
     
     ;; nXML-mode
     ;; �^�O��
     '(nxml-element-local-name ((t (:foreground "#F92672"))))
     ;; ����
     '(nxml-attribute-local-name ((t (:foreground "#66D9EF"))))
     ;; ����
     '(nxml-tag-delimiter ((t (:foreground "#A6E22A"))))
     ;; DOCTYPE�錾
     '(nxml-markup-declaration-delimiter ((t (:foreground "#74715D"))))
     
     ;; dired
     '(dired-directory ((t (:foreground "#A6E22A"))))
     '(dired-symlink ((t (:foreground "#66D9EF"))))
     
     ;; MMM-mode
     '(mmm-default-submode-face ((t (:foreground nil :background "#000000")))))
    
;;;###autoload
    (when load-file-name
      (add-to-list 'custom-theme-load-path
		   (file-name-as-directory (file-name-directory load-file-name))))
    
    (provide-theme 'molokai)
)
  
