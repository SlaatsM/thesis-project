(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 730 i1) (<= i1 749)))

; Formula constraint
(assert (not (= (* 74 i1) (- 41 i1))))

(check-sat)
(get-model)