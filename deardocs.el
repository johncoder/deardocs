;;; package -- Summary

;;; Commentary:

;;; Code:
(require 'package)
(package-initialize)

(require 'use-package)

(use-package ox-publish)
(use-package htmlize)

(defun deardocs-publish()
  "A modest start..."
  (when (file-exists-p "/deardocs/publish.el")
    (message "deardocs: loading /deardocs/publish.el...")
    (message "deardocs: org version %s" (org-version))
    (load-file "/deardocs/publish.el"))
  (message "deardocs: hello, world"))

(deardocs-publish)

;;; deardocs.el ends here
