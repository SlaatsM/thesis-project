(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 23) (= i1 566)))

; Formula constraint
(assert (<= 73 79))

(check-sat)
(get-model)