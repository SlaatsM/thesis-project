(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 53 i1) (<= i1 477)))

; Formula constraint
(assert (and (= 57 i1) (=> (=> (> i1 i1) (>= 20 i1)) (=> (= i1 (+ -19 (+ (* -56 i1) (* -25 i1)))) (< i1 34)))))

(check-sat)
(get-model)