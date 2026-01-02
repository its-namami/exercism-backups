;;; acronym.el --- Acronym (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun acronym (phrase)
  (let (( result '() ))
    (let (( part-of-acronym 1 ))
      (mapcar (lambda (ch)
		(if (or (= ch ?\s) (or (= ch ?-) (= ch ?_)))
		    (setq part-of-acronym 1)
		  (if (= part-of-acronym 1)
		      (progn 
			(push ch result)
			(setq part-of-acronym -1))
		    (setq part-of-acronym -1))
		  )) phrase)
      (concat (mapcar 'upcase (nreverse result))))))

(provide 'acronym)

(acronym "hello world!")

(acronym "i am very nice")

(provide 'acronym)
;;; acronym.el ends here
