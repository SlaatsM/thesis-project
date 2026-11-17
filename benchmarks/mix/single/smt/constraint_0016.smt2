(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -842) (= i1 -577) (= i1 -352) (= i1 537)))

; Formula constraint
(assert (> 12 (* -17 i1)))

(check-sat)
(get-model)