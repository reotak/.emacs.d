;;; Mac用の設定

;; homebrewのPATH
(add-to-list 'exec-path (expand-file-name "~/homebrew/bin"))

;;; go の設定

;; goのPATH
(add-to-list 'exec-path (expand-file-name "~/Dropbox/go/bin"))
;; go-mode
(require 'go-mode)
;; godef
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-.") 'godef-jump)))
;; goimports
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
;; go-autocomplete
(require 'go-autocomplete)
(require 'auto-complete-config)

	  
