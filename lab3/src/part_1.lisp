(load "Constants.lisp")
(load "Functions.lisp")

; Measurements:
(setf C_p (make-array LENGTH-1 ;; Capacity.
					:element-type 'integer))
(setf P (make-array LENGTH-1 ;; Power.
					:element-type 'integer
					:initial-contents '(2442 2562 2638 2677 2688 2680 2658 2627 2591)))
(setf I_total (make-array LENGTH-1 ;; Current.
					:element-type 'float
					:initial-contents '(11.65 11.93 12.11 12.19 12.20 12.20 12.15 12.08 12.00)))
(setq U E) ;; Voltage is set to EMF.
(setf U_R (make-array LENGTH-1 ;; Current travelling through the resistor.
					:element-type 'float
					:initial-contents '(209.6 214.7 217.9 219.5 220.0 219.6 218.7 217.5 215.9))) 
(setf U_L (make-array LENGTH-1 ;; Current travelling through the inductor coil.
					:element-type 'float
					:initial-contents '(215.1 220.3 223.5 225.1 225.6 225.3 224.3 223.0 221.5))) 
(setf U_C (make-array LENGTH-1 ;; Current travelling through the capacitor.
					:element-type 'float
					:initial-contents '(281.6 267.8 253.6 239.5 225.9 213.0 201.0 189.8 179.5)))
(setf R_calc (make-array LENGTH-1 ;; Full circuit conductivity.
					:element-type 'float))
(setf Z (make-array LENGTH-1 ;; Reactive conductivity of the capacitor.
					:element-type 'float))
(setf X_L (make-array LENGTH-1 ;; Rective circuit conductivity.
					:element-type 'float))
(setf X_C (make-array LENGTH-1 ;; Active circuit conductivity.
					:element-type 'float))
(setf X (make-array LENGTH-1 ;; Total power.
					:element-type 'float))
(setf phi (make-array LENGTH-1 ;; Reactive conductivity of the inductor.
					:element-type 'float))
(setf S (make-array LENGTH-1 ;;
					:element-type 'float))
(setf Q (make-array LENGTH-1 ;;
					:element-type 'float))
(setf cos_phi (make-array LENGTH-1 ;; The cosine of the phi angle.
					:element-type 'float))

; Main:
(fill-array "C_p" C_p 0 (- (round (/ LENGTH-1 2)) 1) '(0) '(0) (- C 40) 10)
(fill-array "C_p" C_p (round (/ LENGTH-1 2)) (- LENGTH-1 1) '(0) '(0) (+ C 10) 10)
(fill-array "R" R_calc 0 (- LENGTH-1 1) U_R I_total 0 0)
(fill-array "Z" Z 0 (- LENGTH-1 1) I_total '(0) 0 0)
(fill-array "X_L" X_L 0 (- LENGTH-1 1) U_C I_total 0 0)
(fill-array "X_C" X_C 0 (- LENGTH-1 1) U_L I_total 0 0)
(fill-array "X" X 0 (- LENGTH-1 1) X_L X_C 0 0)
(fill-array "phi" phi 0 (- LENGTH-1 1) X R_calc 0 0)

(write C_p)
(terpri)
(write R_calc)
(terpri)
(write Z)
(terpri)
(write X_L)
(terpri)
(write X_C)
(terpri)
(write X)
(terpri)
(write phi)
(terpri)
