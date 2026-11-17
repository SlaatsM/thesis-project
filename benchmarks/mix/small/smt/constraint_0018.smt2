(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)

; Domain constraints
(assert (or (= a1_0 -34) (= a1_0 629) (= a1_0 799)))
(assert (or (= a1_1 -34) (= a1_1 629) (= a1_1 799)))

; Formula constraint
(assert (<= a1_0 a1_1))

(check-sat)
(get-model)