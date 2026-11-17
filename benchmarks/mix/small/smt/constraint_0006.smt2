(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -809) (= i1 88)))

; Formula constraint
(assert (=> (and (and (< i1 (- -9 i1)) (not (= i1 i1))) (and (>= i1 50) (not (= -51 i1)))) (< (* 75 i1) i1)))

(check-sat)
(get-model)