(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 25) (= i1 57) (= i1 912)))

; Formula constraint
(assert (<= i1 29))

(check-sat)
(get-model)