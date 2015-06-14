;;; Mac用の設定

;;;; for golang ;;;;;
;; シェルのパス設定を受け取る
(require 'exec-path-from-shell)
(let ((envs `("PATH" "GOPATH")))
   (exec-path-from-shell-copy-envs envs))


;; font
(set-frame-font "ricty-14")

;; homebrewのPATH
(add-to-list 'exec-path (expand-file-name "~/homebrew/bin"))

