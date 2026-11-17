(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -402) (= i1 -315) (= i1 61) (= i1 81) (= i1 629)))

; Formula constraint
(assert (or (and (>= (* 29 i1) -78) (= i1 (* -38 i1))) (or (=> (< (* -46 i1) 53) (< (- i1 i1) i1)) (=> (>= i1 (* 91 i1)) (>= i1 (* 16 i1))))))

(check-sat)
(get-model)