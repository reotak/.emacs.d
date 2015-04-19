
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; fontをゆたぽんにする
;;(set-face-attribute 'default nil
;;		    :family "ゆたぽん（コーディング）"
;;		    :height 150)
;;(set-fontset-font
;; nil 'japanese-jisx0208
;; (font-spec :family "ゆたぽん（コーディング）"))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; fontをゆたぽんにする
;;(set-face-attribute 'default nil
;;		    :family "ゆたぽん（コーディング）"
;;		    :height 120)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; shellの文字化け対策(Windows)
;; shellで文字化けを起こすため、SJISで入力、SJISで出力するように設定
(add-hook
 'shell-mode-hook
 '(lambda ()
    (set-buffer-process-coding-system 'sjis 'sjis)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Windows用のフォルダのパスを追加する
(setq load-path
      (append
       (list (expand-file-name  "~/Dropbox/.emacs.d/win/")) load-path))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; M-x powershellでpowershellを起動できるようにする
(autoload 'powershell "powershell" "Run powershell as a shell within emacs." t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

