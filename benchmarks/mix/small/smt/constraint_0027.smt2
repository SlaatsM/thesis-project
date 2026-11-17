(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1
;   a1[2] -> a1_2

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)
(declare-fun a1_2 () Int)

; Domain constraints
(assert (or (= a1_0 -998) (= a1_0 -903)))
(assert (or (= a1_1 -998) (= a1_1 -903)))
(assert (or (= a1_2 -998) (= a1_2 -903)))

; Formula constraint
(assert (<= a1_0 a1_2))

(check-sat)
(get-model)