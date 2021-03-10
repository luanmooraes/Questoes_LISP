( defun get-line
	(setf texto (mapcar 'string (coerce (string (read)) 'list))
)

( defun encode(x)

	(setq result (list nil))
	(setq z (+ (list-length x) 1))
	(setq cont1 1)
	(setq naux nil)

	(dotimes(i z)
		(setq n (pop x))
		(if (string = n naux))(progn
			(setq cont1 (+ cont1 1))
			(setq naux n)
			)
		(progn
			(push cont1 result)
			(push naux result)
			(setq cont1 1)
			(setq naux n)))
		)


)