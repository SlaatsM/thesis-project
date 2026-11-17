(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 26) (= i1 666)))

; Formula constraint
(assert (<= (- 43 (+ i1 i1)) i1))

(check-sat)
(get-model)