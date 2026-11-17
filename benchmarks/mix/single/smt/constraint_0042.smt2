(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0][0] -> a1_0_0

; Variable declarations
(declare-fun a1_0_0 () Int)

; Domain constraints
(assert (or (= a1_0_0 -870) (= a1_0_0 -629) (= a1_0_0 44) (= a1_0_0 108)))

; Formula constraint
(assert (> (+ -73 (+ 31 a1_0_0)) 4))

(check-sat)
(get-model)