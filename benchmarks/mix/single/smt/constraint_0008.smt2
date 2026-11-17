(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0

; Variable declarations
(declare-fun a1_0 () Int)

; Domain constraints
(assert (or (= a1_0 -298) (= a1_0 113) (= a1_0 617)))

; Formula constraint
(assert (=> (<= a1_0 a1_0) (>= (* -8 a1_0) -86)))

(check-sat)
(get-model)