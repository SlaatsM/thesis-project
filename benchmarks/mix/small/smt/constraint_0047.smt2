(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -260) (= i1 340) (= i1 887)))

; Formula constraint
(assert (or (or (=> (< (- (* 50 i1) (* -89 i1)) i1) (< (* 89 i1) 98)) (not (<= 60 (+ i1 (* -83 i1))))) (< (* -27 i1) (+ (* 4 i1) 37))))

(check-sat)
(get-model)