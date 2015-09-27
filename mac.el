;;; Mac用の設定

;;;; for golang ;;;;;
;; シェルのパス設定を受け取る
(require 'exec-path-from-shell)
(let ((envs `("PATH" "GOPATH")))
   (exec-path-from-shell-copy-envs envs))

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
		
		
;;; font

(when (>= emacs-major-version 23)
 (set-face-attribute 'default nil
                     :family "monaco"
                     :height 140)
 (set-fontset-font
  (frame-parameter nil 'font)
  'japanese-jisx0208
  '("Hiragino Maru Gothic Pro" . "iso10646-1"))
 (set-fontset-font
  (frame-parameter nil 'font)
  'japanese-jisx0212
  '("Hiragino Maru Gothic Pro" . "iso10646-1"))
 (set-fontset-font
  (frame-parameter nil 'font)
  'mule-unicode-0100-24ff
  '("monaco" . "iso10646-1"))
 (setq face-font-rescale-alist
      '(("^-apple-hiragino.*" . 1.2)
        (".*osaka-bold.*" . 1.2)
        (".*osaka-medium.*" . 1.2)
        (".*courier-bold-.*-mac-roman" . 1.0)
        (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
        (".*monaco-bold-.*-mac-roman" . 0.9)
        ("-cdac$" . 1.3))))




