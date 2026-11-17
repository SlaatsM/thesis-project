(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 322) (= i1 398) (= i1 621) (= i1 823)))

; Formula constraint
(assert (not (= -19 i1)))

(check-sat)
(get-model)