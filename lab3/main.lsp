; Constants
(defconstant E 220)
(defconstant R 18)
(defconstant C 170)
(defconstant L 58)
(defconstant LENGTH 10)

; Measurements
(setf C_p (make-array LENGTH ;; Capacity
					:element-type 'integer))
(setf P (make-array LENGTH ;; Power
					:element-type 'integer
					:initial-contents '(2771 2785 2805 2814 2833 2846 2865 2884 2904 2924)))
(setq U E) ;; Voltage is set to EMF
(setf I (make-array LENGTH ;; Current
					:element-type 'float
					:initial-contents '(12.91 12.84 12.80 12.81 12.86 12.96 13.09 13.26 13.48 13.72)))
(setf I_R (make-array LENGTH ;; Current travelling through the resistor
					:element-type 'float
					:initial-element 12.22)) 
(setf I_L (make-array LENGTH ;; Current travelling through the inductor coil
					:element-type 'float
					:initial-element 12.22)) 
(setf I_C (make-array LENGTH ;; Current travelling through the capacitor
					:element-type 'float
					:initial-contents '(9.09 9.79 10.49 11.19 11.88 12.58 13.28 13.97 14.67 15.37)))

; Functions
(defun fill_array (array_name begin_index end_index value_name step_value)
	(loop for i from begin_index to end_index and value from value_name by step_value do
		(setf (aref array_name i) value)))

; Main
(fill_array C_p 0 (- (/ LENGTH 2) 1) (- C 40) 10)
(fill_array C_P (/ LENGTH 2) (- LENGTH 1) (+ C 10) 10)

(write C_p)
(terpri)
(write P)
(terpri)
(write I_R)
