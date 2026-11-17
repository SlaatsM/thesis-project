(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 441 i1) (<= i1 578)))

; Formula constraint
(assert (< (+ i1 -70) (* 75 i1)))

(check-sat)
(get-model)