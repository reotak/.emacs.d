;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; package.elの設定
(when (require 'package nil t)
  (add-to-list 'package-archives
	       '("marmalade" .
		 "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives
	       '("ELPA" .
		 "http://tromey.com/elpa/"))
  ;; インストールしたパッケージにロードパスを通して読み込む
  (package-initialize))

;; インストール先のディレクトリを指定
(setq package-user-dir "~/Dropbox/.emacs.d/elpa/")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
