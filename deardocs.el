;;; package -- Summary

;;; Commentary:

;;; Code:

(setq package-archives nil)
(defvar melpa '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives melpa t)

(package-initialize)

(defun packages-install (&rest packages)
  "Install packages.
PACKAGES is a list of name/source pairs"
  (message "running packages-install")
  (mapc (lambda (package)
          (let ((name (car package))
                (repo (cdr package)))
            (when (not (package-installed-p name))
              (let ((package-archives (list repo)))
                 (package-initialize)
                 (package-install name)))))
         packages)
  (package-initialize))

(defun init--install-packages ()
  (message "Let's install some packages")
  (packages-install
   ;; this is the only entry here because use-package is used later
   (cons 'use-package melpa)))

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))

(require 'use-package)

(require 'ox-publish)
(use-package htmlize
  :ensure t)

(defun deardocs-publish()
  "A modest start..."
  (when (file-exists-p "/deardocs/publish.el")
    (message "deardocs: loading /deardocs/publish.el...")
    (load-file "/deardocs/publish.el"))
  (message "deardocs: hello, world"))

(deardocs-publish)

;;; deardocs.el ends here
