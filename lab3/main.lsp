(defconstant E 220)
(defconstant R 18)
(defconstant C 170)
(defconstant L 58)

(setf C_p (make-array '(9)))
(loop for i from 0 to (- (length C_p) 1) and value from 130 by 10
	do
		(setf (aref C_p i) value)
)

(write C_p)
