(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 376) (= i1 438) (= i1 707)))

; Formula constraint
(assert (>= i1 89))

(check-sat)
(get-model)