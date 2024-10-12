(defun fill-array (physical-value array-name-1 begin-index end-index array-name-2 array-name-3 value-name step-value)
	"Fill a physical array."
	(loop for i from begin-index to end-index and value from value-name by step-value do
		(cond
			((string-equal physical-value "C_p") (setf (aref array-name-1 i) value))
			((string-equal physical-value (or "Y" "G" "B")) (setf (aref array-name-1 i) (/ (aref array-name-2 i) U)))
			((string-equal physical-value "S") (setf (aref array-name-1 i) (* (aref array-name-2 i) U)))
			((string-equal physical-value "cos_phi") (setf (aref array-name-1 i) (/ (aref array-name-2 i) (aref array-name-3 i)))))))


