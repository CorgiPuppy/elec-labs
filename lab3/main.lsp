; Constants:
(defconstant E 220)
(defconstant R 18)
(defconstant C 170)
(defconstant L 58)
(defconstant LENGTH 10)

; Measurements:
(setf C_p (make-array LENGTH ;; Capacity.
					:element-type 'integer))
(setf P (make-array LENGTH ;; Power.
					:element-type 'integer
					:initial-contents '(2771 2785 2805 2814 2833 2846 2865 2884 2904 2924)))
(setq U E) ;; Voltage is set to EMF.
(setf I_total (make-array LENGTH ;; Current.
					:element-type 'float
					:initial-contents '(12.91 12.84 12.80 12.81 12.86 12.96 13.09 13.26 13.48 13.72)))
(setf I_R (make-array LENGTH ;; Current travelling through the resistor.
					:element-type 'float
					:initial-element 12.22)) 
(setf I_L (make-array LENGTH ;; Current travelling through the inductor coil.
					:element-type 'float
					:initial-element 11.92)) 
(setf I_C (make-array LENGTH ;; Current travelling through the capacitor.
					:element-type 'float
					:initial-contents '(9.09 9.79 10.49 11.19 11.88 12.58 13.28 13.97 14.67 15.37)))
(setf Y (make-array LENGTH
					:element-type 'float))
(setf G (make-array LENGTH
					:element-type 'float))
(setf B_L (make-array LENGTH
					:element-type 'float))
(setf B_C (make-array LENGTH
					:element-type 'float))
(setf S (make-array LENGTH
					:element-type 'float))
(setf cos_phi (make-array LENGTH
					:element-type 'float))

; Functions:
(defun fill-Cp (capacity begin-index end-index value-name step-value)
	"Fill a capacity array."
	(loop for i from begin-index to end-index and value from value-name by step-value do
		(setf (aref capacity i) value)))

(defun fill-Conductivity (conductivity begin-index end-index current)
	"Fill a conductivity array."
	(loop for i from begin-index to end-index do
		(setf (aref conductivity i) (/ (aref current i) U))))

(defun fill-Power (power begin-index end-index current)
	"Fill a power array."
	(loop for i from begin-index to end-index do
		(setf (aref power i) (* (aref current i) U))))
		
(defun fill-CosPhi (cosPhi begin-index end-index)
	"Fill a cosPhi array."
	(loop for i from begin-index to end-index do
		(setf (aref cosPhi i) (/ (aref P i) (aref S i)))))
	
; Main:
(fill-Cp C_p 0 (- (/ LENGTH 2) 1) (- C 40) 10)
(fill-Cp C_P (/ LENGTH 2) (- LENGTH 1) (+ C 10) 10)

(fill-Conductivity Y 0 (- LENGTH 1) I_total)
(fill-Conductivity G 0 (- LENGTH 1) I_R)
(fill-Conductivity B_L 0 (- LENGTH 1) I_L)
(fill-Conductivity B_C 0 (- LENGTH 1) I_C)

(fill-Power S 0 (- LENGTH 1) I_total)

(fill-CosPhi cos_phi 0 (- LENGTH 1))

