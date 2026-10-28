;;; site-start.el --- loaded before user's ".emacs" file and default.el -*- lexical-binding: t -*-

;;; Commentary:
;;
;; Load *.el and *.elc in /usr/share/emacs/site-lisp/site-start.d on startup

;;; Code:

(dolist
    (file
     (delete-dups
      (mapcar 'file-name-sans-extension
              (directory-files
               "/usr/share/emacs/site-lisp/site-start.d" t "\\.elc?\\'"))))
  (load file nil t nil t))

;;; site-start.el ends here
