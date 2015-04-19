
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; anything-c-moccurの設定
;; 要color-moccur.el
(when (require 'anything-c-moccur nil t)
  (setq
   ;; anything-c-moccur要 `anything-idle-deray'
   anything-c-moccur-anything-idle-delay 0.1
   ;; バッファの情報をハイライトする
   anything-c-moccur-higlight-info-line-flag t
   ;; 現在選択中の候補の位置をほかのwindowに表示する
   anything-c-moccur-enable-auto-look-flag t
   ;; 起動時にポイントの位置の単語を書記パターンにする
   anything-c-moccur-enable-initial-pattern t))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
