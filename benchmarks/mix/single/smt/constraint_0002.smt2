(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -782) (= i1 334) (= i1 750)))

; Formula constraint
(assert (>= -37 i1))

(check-sat)
(get-model)