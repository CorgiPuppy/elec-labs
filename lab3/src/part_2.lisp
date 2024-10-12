(load "Constants.lisp")
(load "Functions.lisp")

; Measurements:
(setf C_p (make-array LENGTH-2 ;; Capacity.
					:element-type 'integer))
(setf P (make-array LENGTH-2 ;; Power.
					:element-type 'integer
					:initial-contents '(2771 2785 2805 2814 2833 2846 2865 2884 2904 2924)))
(setq U E) ;; Voltage is set to EMF.
(setf I_total (make-array LENGTH-2 ;; Current.
					:element-type 'float
					:initial-contents '(12.91 12.84 12.80 12.81 12.86 12.96 13.09 13.26 13.48 13.72)))
(setf I_R (make-array LENGTH-2 ;; Current travelling through the resistor.
					:element-type 'float
					:initial-element 12.22)) 
(setf I_L (make-array LENGTH-2 ;; Current travelling through the inductor coil.
					:element-type 'float
					:initial-element 11.92)) 
(setf I_C (make-array LENGTH-2 ;; Current travelling through the capacitor.
					:element-type 'float
					:initial-contents '(9.09 9.79 10.49 11.19 11.88 12.58 13.28 13.97 14.67 15.37)))
(setf Y (make-array LENGTH-2 ;; Full circuit conductivity.
					:element-type 'float))
(setf G (make-array LENGTH-2 ;; Active circuit conductivity.
					:element-type 'float))
(setf B_L (make-array LENGTH-2 ;; Reactive conductivity of the inductor.
					:element-type 'float))
(setf B_C (make-array LENGTH-2 ;; Reactive conductivity of the capacitor.
					:element-type 'float))
(setf B (make-array LENGTH-2 ;; Reactive circuit conductivity.
					:element-type 'float))
(setf S (make-array LENGTH-2 ;; Total power, B*A.
					:element-type 'float))
(setf cos_phi (make-array LENGTH-2 ;; The cosine of the phi angle.
					:element-type 'float))

; Main:
(fill-array "C_p" C_p 0 (- (/ LENGTH-2 2) 1) '(0) '(0) (- C 40) 10)
(fill-array "C_p" C_p (/ LENGTH-2 2) (- LENGTH-2 1) '(0) '(0) (+ C 10) 10)
(fill-array "Y" Y 0 (- LENGTH-2 1) I_total '(0) 0 0)
(fill-array "G" G 0 (- LENGTH-2 1) I_R '(0) 0 0)
(fill-array "B_L" B_L 0 (- LENGTH-2 1) I_L '(0) 0 0)
(fill-array "B_C" B_C 0 (- LENGTH-2 1) I_C '(0) 0 0)
(fill-array "B" B 0 (- LENGTH-2 1) B_L B_C 0 0)
(fill-array "S" S 0 (- LENGTH-2 1) I_total '(0) 0 0)
(fill-array "cos_phi" cos_phi 0 (- LENGTH-2 1) P S 0 0)

(format t "C_p ~C P ~C U ~C I ~C I_R ~C I_L ~C I_C ~C Y ~C G ~C B ~C cos_phi" #\tab #\tab #\tab #\tab #\tab #\tab #\tab #\tab #\tab #\tab)
(terpri)
(loop for i from 0 to (- LENGTH-1 1) do
	(format t "~f ~C" (aref C_p i) #\tab)
	(format t "~f ~C" (aref P i) #\tab)
	(format t "~f ~C" U #\tab)
	(format t "~,2f ~C" (aref I_total i) #\tab)
	(format t "~,2f ~C" (aref I_R i) #\tab)
	(format t "~,2f ~C" (aref I_L i) #\tab)
	(format t "~,2f ~C" (aref I_C i) #\tab)
	(format t "~,4f ~C" (aref Y i) #\tab)
	(format t "~,4f ~C" (aref G i) #\tab)
	(format t "~,4f ~C" (aref B i) #\tab)
	(format t "~,3f ~C" (aref cos_phi i) #\tab)
	(terpri))

