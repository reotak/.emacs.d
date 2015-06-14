;;;; for golang ;;;;;
;; シェルのパス設定を受け取る
(require 'exec-path-from-shell)
(let ((envs `("PATH" "GOPATH")))
   (exec-path-from-shell-copy-envs envs))

;フォント設定
(set-frame-font "ricty-12")

;C-h で一文字削除
(global-set-key "\C-h" 'delete-backward-char)

; C-x C-hでキーマッピング表示
(global-set-key (kbd "C-x C-h") 'describe-bindings)

;カラー有効化
(global-font-lock-mode t)

;; X-windowのクリップボードとemacsのクリップボードの同期を取る
(setq x-select-enable-clipboard t)

;; リージョン表示
(setq-default transient-mark-mode t)

;; 日本語IME（Mozc）を使う
(load "~/.emacs.d/linux-ibus.el")

;; 標準の文字コードをutf-8に
(set-default-coding-systems 'utf-8)

;; Linux用キーセッティング
(global-set-key (kbd "C-j") 'toggle-input-method)

;; orgモードでC-jが変わらないようにする
;(define-key org-mode-map (kbd "C-j") 'toggle-input-method)
;(define-key lisp-interaction-mode-map (kbd "C-j") 'toggle-input-method)

;; diredでもC-tで別バッファに移動できるようにする
(define-key dired-mode-map (kbd "C-t") 'nil)


;; Go Lang ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; シェルのパス設定を受け取る
(require 'exec-path-from-shell)

(let ((envs `("PATH" "GOPATH")))
  (exec-path-from-shell-copy-envs envs))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; go-modeを有効にする
(require 'go-mode)
;;(require 'go-mode-load)

;; goの設定
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook '(lambda () (setq tab-width 2)))
;; godef
(add-hook 'go-mode-hook (lambda () (local-set-key (kbd "M-.") 'godef-jump)))
(add-hook 'go-mode-hook (lambda () (local-set-key (kbd "C-.") 'godef-jump)))

;; gocode
(require 'go-autocomplete)

