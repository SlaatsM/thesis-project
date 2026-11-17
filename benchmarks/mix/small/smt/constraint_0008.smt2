(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 716) (= i1 872)))

; Formula constraint
(assert (<= (- (+ -85 i1) i1) (* 63 i1)))

(check-sat)
(get-model)