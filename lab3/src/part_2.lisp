(load "Constants.lisp")
(load "Functions.lisp")

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
(setf Y (make-array LENGTH ;; Full circuit conductivity.
					:element-type 'float))
(setf G (make-array LENGTH ;; Active circuit conductivity.
					:element-type 'float))
(setf B_L (make-array LENGTH ;; Reactive conductivity of the inductor.
					:element-type 'float))
(setf B_C (make-array LENGTH ;; Reactive conductivity of the capacitor.
					:element-type 'float))
(setf B (make-array LENGTH ;; Rective circuit conductivity.
					:element-type 'float))
(setf S (make-array LENGTH ;; Total power.
					:element-type 'float))
(setf cos_phi (make-array LENGTH ;; The cosine of the phi angle.
					:element-type 'float))

; Main:
(fill-array "C_p" C_p 0 (- (/ LENGTH 2) 1) '(0) '(0) (- C 40) 10)
(fill-array "C_p" C_p (/ LENGTH 2) (- LENGTH 1) '(0) '(0) (+ C 10) 10)
(fill-array "Y" Y 0 (- LENGTH 1) I_total '(0) 0 0)
(fill-array "G" G 0 (- LENGTH 1) I_R '(0) 0 0)
(fill-array "B_L" B_L 0 (- LENGTH 1) I_L '(0) 0 0)
(fill-array "B_C" B_C 0 (- LENGTH 1) I_C '(0) 0 0)
(fill-array "S" S 0 (- LENGTH 1) I_total '(0) 0 0)
(fill-array "cos_phi" cos_phi 0 (- LENGTH 1) P S 0 0)
