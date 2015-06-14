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
(add-hook 'go-mode-hook (lambda () (local-set-key (kbd "M-,") 'pop-tag-mark)))
(add-hook 'go-mode-hook (lambda () (local-set-key (kbd "C-,") 'pop-tag-mark)))

;; gocode
(require 'go-autocomplete)




		
		






