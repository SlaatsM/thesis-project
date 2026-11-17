(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -405) (= i1 -33)))

; Formula constraint
(assert (<= (* 88 i1) (- 59 -51)))

(check-sat)
(get-model)