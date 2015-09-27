;; Shift+矢印キーでバッファ移動
(windmove-default-keybindings)

;; C-mにnewline-add-indentを割り当てる（改行後インデント）
;; (global-set-key (kbd "C-m") 'newline-and-indent)

;; 折り返しトグルコマンドをC-c lに割り当てる
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)

;; C-hをキーバインドの表示に切り替える
(define-key global-map (kbd "C-h") 'describe-bindings)

;; C-tでウィンドウを切り替える（C-x oと同じ）
(define-key global-map (kbd "C-t") 'other-window)

;; C-xにundoを割り当てる
(define-key global-map (kbd "C-z") 'undo)

;; C-x C-k でもkill-bufferできるようにする
(define-key global-map (kbd "C-x C-k") 'kill-buffer)

;; C-x C-xにM-xと同等の機能を割り当てる
(define-key global-map (kbd "C-x C-x") 'execute-extended-command)

;; M-+にフォントの拡大を設定する
(define-key global-map (kbd "M-+") 'text-scale-adjust)

;; C-M-_にindent-regionを割り当てる
(define-key global-map (kbd "C-M-_") 'indent-region)

;; C-c C-c にcompileを割り当てる
(global-set-key (kbd "C-c C-c") 'compile)

;; M-,やC-,でタグを戻れるようにする
(global-set-key (kbd "M-,") 'pop-tag-mark)
(global-set-key (kbd "C-,") 'pop-tag-mark)


;;;; ツールの起動系  ;;;;;

;; C-c kでanything-show-kill-ringを起動
(define-key global-map (kbd "C-c k") 'anything-show-kill-ring)
(define-key global-map (kbd "C-c C-k") 'anything-show-kill-ring)

;; C-c fでanything-for-filesを起動
(define-key global-map (kbd "C-c f") 'anything-for-files)
(define-key global-map (kbd "C-c C-f") 'anything-for-files)

;; C-c sでshellを起動
(define-key global-map (kbd "C-c s") 'shell)

;; C-c oでanything-c-moccur-occur-by-moccurを割り当てる
(define-key global-map (kbd "C-M-o") 'anything-c-moccur-occur-by-moccur)

;; C-c aでauto-complete
;;(define-key ac-mode-map (kbd "C-c a") 'auto-complete)

;; C-; でanything
(define-key global-map (kbd "C-;") 'anything)

;; M-o oにoccur-by-moccurを割り当て
(define-key global-map (kbd "M-o") 'occur-by-moccur)

;;;;; ここまでツールの起動系 ;;;;;

;;;;;; mode固有 ;;;;;;

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

;;; 現在のディレクトリ名を出力するコマンド
(global-set-key (kbd "C-c C-d") (lambda () (interactive) (insert buffer-file-name)))


