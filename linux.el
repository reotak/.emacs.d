;; mozc
(require 'mozc)
(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'overlay)
(global-set-key (kbd "C-\\") 'toggle-input-method)
(global-set-key (kbd "C-j") 'toggle-input-method)


