(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -984) (= i1 474)))

; Formula constraint
(assert (>= i1 52))

(check-sat)
(get-model)