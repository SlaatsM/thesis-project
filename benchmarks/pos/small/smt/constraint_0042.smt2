(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 88) (= i1 89) (= i1 151) (= i1 392)))

; Formula constraint
(assert (or (=> (= -25 (* 70 i1)) (=> (= -32 i1) (< 63 1))) (not (> (- (* -44 i1) (* 34 i1)) i1))))

(check-sat)
(get-model)