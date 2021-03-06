;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 雑多な設定
;; おまじない
(require 'cl)
;; Emacsからの質問をy/nで回答する
(fset 'yes-or-no-p 'y-or-n-p)
;; スタートアップメッセージを非表示
(setq inhibit-startup-screen t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ビープ音を消す
(setq ring-bell-function 'ignore)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; CUAモードにするが、キーバインドは変えない（矩形編集のため）
;; 矩形モードはC-SPC C-RET でスタート
(cua-mode t) ; cua-modeをオン
(setq cua-enable-cua-keys nil) ; CUAキーバインドは無効
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 外観に関する設定

;; カラーモードの設定
(when (>= emacs-major-version 24)
  (load-theme 'manoj-dark t)
)

;; tabや行末の空白の表示（whitespace）
(require 'whitespace)
(setq whitespace-style '(face           ; faceで可視化
                         trailing       ; 行末
                         tabs           ; タブ
                         empty          ; 先頭/末尾の空行
                         space-mark     ; 表示のマッピング
                         tab-mark
                         ))
(setq whitespace-display-mappings
      '((tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))
(global-whitespace-mode 1)

;; tabなどの色の設定
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
 '(whitespace-empty ((t (:background "burlywood4" :foreground "firebrick"))))
 '(whitespace-newline ((t (:background "dark cyan" :foreground "darkgray" :weight normal))))
 '(whitespace-tab ((t (:background "black" :foreground "darkgray"))))
 '(whitespace-trailing ((t (:background "dark magenta" :foreground "dark cyan" :underline t :weight bold)))))


;; 透明にする
(if window-system (progn
    (set-background-color "Black")
    (set-foreground-color "LightGray")
    (set-cursor-color "Gray")
    (set-frame-parameter nil 'alpha 80) ;透明度
    ))

(defun set-alpha (alpha-num)
  "set frame parameter 'alpha"
  (interactive "nAlpha: ")
  (set-frame-parameter nil 'alpha (cons alpha-num '(90))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 導入済みツールに関する設定のロード


;; auto-complete
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)


;; anythingに関する設定
(load "myAnything")
;; anything-c-moccurに関する設定
(load "myAnything-c-moccur")
;; color-moccur
(load "myColor-moccur")
;; moccur-edit
(load "myMoccur-edit")

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

;; compileを簡単にする
(require 'smart-compile)
;; キーボードに割り当て
(define-key ruby-mode-map (kbd "C-c c") 'smart-compile)
(define-key ruby-mode-map (kbd "C-c C-c") 'smart-compile)

;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; go-modeを有効にする
;; (require 'go-mode)
;; ;;(require 'go-mode-load)
;;  
;; ;; goの設定
;; (setq gofmt-command "goimports")
;; (add-hook 'before-save-hook 'gofmt-before-save)
;; (add-hook 'go-mode-hook '(lambda () (setq tab-width 2)))
;; ;; godef
;; (add-hook 'go-mode-hook (lambda () (local-set-key (kbd "M-.") 'godef-jump)))
;; (add-hook 'go-mode-hook (lambda () (local-set-key (kbd "C-.") 'godef-jump)))
;; (add-hook 'go-mode-hook (lambda () (local-set-key (kbd "M-,") 'pop-tag-mark)))
;; (add-hook 'go-mode-hook (lambda () (local-set-key (kbd "C-,") 'pop-tag-mark)))
;;  
;; ;; gocode
;; (require 'go-autocomplete)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; for C ;;

(require 'cc-mode)
 
;; c-mode-common-hook は C/C++ の設定
(add-hook 'c-mode-common-hook
          (lambda ()
            (setq c-default-style "k&r") ;; カーニハン・リッチースタイル
            (setq indent-tabs-mode t)  ;; タブは利用しない
            (setq c-basic-offset 4)      ;; indent は 2 スペース
            ))
(require 'srefactor)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; 以下、自動で設定されたもの
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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 個人的な設定のロード
;; 自分で設定したキーマップを読み込む
(load "myKeyMap")
;; 自分で設定した画面の設定を読み込む
(load "myFrame")
;; 自分で設定したバックアップに関する設定を読み込む
(load "myBackup")
;; 自分で設定したモードに関する設定を読み込む
(load "myMode")
