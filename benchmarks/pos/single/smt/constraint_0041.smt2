(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 20 i1) (<= i1 901)))

; Formula constraint
(assert (=> (=> (> (* 45 i1) i1) (>= (* 40 i1) i1)) (= i1 40)))

(check-sat)
(get-model)