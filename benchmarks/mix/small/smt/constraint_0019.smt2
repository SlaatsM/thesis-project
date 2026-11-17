(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -793) (= i1 -788) (= i1 -234) (= i1 461) (= i1 730)))

; Formula constraint
(assert (>= i1 (* 43 i1)))

(check-sat)
(get-model)