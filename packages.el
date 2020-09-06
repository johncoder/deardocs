;;; package -- Summary

;;; Commentary:

;;; Code:
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.milkbox.net/packages/"))

(package-initialize)
(package-refresh-contents)
(package-install 'use-package)

(use-package htmlize :ensure t)
;;; packages.el ends here
