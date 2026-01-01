;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (list operation)
  (let ((result '()))
    (dolist (element list)
      (push (funcall operation element) result))
    (nreverse result)))

(provide 'accumulate)
;;; accumulate.el ends here
