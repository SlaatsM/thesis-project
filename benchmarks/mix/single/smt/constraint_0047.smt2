(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -713) (= i1 -369) (= i1 -274) (= i1 926)))

; Formula constraint
(assert (<= -37 i1))

(check-sat)
(get-model)