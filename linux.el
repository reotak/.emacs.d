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
