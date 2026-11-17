(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 29) (= i1 51) (= i1 355) (= i1 425) (= i1 647)))

; Formula constraint
(assert (not (>= i1 43)))

(check-sat)
(get-model)