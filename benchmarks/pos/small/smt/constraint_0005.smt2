(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 656) (= i1 767) (= i1 913) (= i1 949)))

; Formula constraint
(assert (> i1 29))

(check-sat)
(get-model)