;;; htmltagwrap.el --- Wraps a chunk of HTML code in tags.                     -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Shen, Jen-Chieh
;; Created date 2018-12-04 16:09:31

;; Author: Shen, Jen-Chieh <jcs090218@gmail.com>
;; Description: Wraps a chunk of HTML code in tags.
;; Keyword: keybindings
;; Version: 0.0.1
;; Package-Requires: ((emacs "24.4"))
;; URL: https://github.com/jcs090218/htmltagwrap

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Wraps a chunk of HTML code in tags.
;;

;;; Code:

(defvar htmltagwrap-tag "p"
  "The default HTML tag to insert.")


(defun htmltagwrap-safe-do-tag-wrap ()
  "Check if able to do tag wrap."
  ;; NOTE(jenchieh): Rules design here..
  (and (use-region-p)))

(defun htmltagwrap-insert-open-tag ()
  "Insert the opening tag."
  (insert (concat "<" htmltagwrap-tag ">")))

(defun htmltagwrap-insert-close-tag ()
  "Insert the closing tag."
  (insert (concat "</" htmltagwrap-tag ">")))


;;;###autoload
(defun htmltagwrap-tag-wrap ()
  "Wraps a chunk of HTML code in tags."
  (interactive)
  (when (htmltagwrap-safe-do-tag-wrap)
    (let ((re (region-end))
          (rb (region-beginning)))
      (goto-char re)
      (htmltagwrap-insert-close-tag)
      (goto-char rb)
      (htmltagwrap-insert-open-tag)
      (backward-char 1))))

(provide 'htmltagwrap)
;;; htmltagwrap.el ends here
