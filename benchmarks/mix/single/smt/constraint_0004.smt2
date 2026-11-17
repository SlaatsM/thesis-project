(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -823) (= i1 186)))

; Formula constraint
(assert (>= (- (* -2 i1) i1) i1))

(check-sat)
(get-model)