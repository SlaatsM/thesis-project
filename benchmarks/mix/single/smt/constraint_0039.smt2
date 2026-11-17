(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -758) (= i1 885)))

; Formula constraint
(assert (>= (+ -91 (* -39 i1)) i1))

(check-sat)
(get-model)