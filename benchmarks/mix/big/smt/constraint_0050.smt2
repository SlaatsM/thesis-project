(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1
;   a1[2] -> a1_2
;   a1[3] -> a1_3
;   a1[4] -> a1_4
;   a1[5] -> a1_5

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)
(declare-fun a1_2 () Int)
(declare-fun a1_3 () Int)
(declare-fun a1_4 () Int)
(declare-fun a1_5 () Int)

; Domain constraints
(assert (or (= a1_0 681) (= a1_0 787)))
(assert (or (= a1_1 681) (= a1_1 787)))
(assert (or (= a1_2 681) (= a1_2 787)))
(assert (or (= a1_3 681) (= a1_3 787)))
(assert (or (= a1_4 681) (= a1_4 787)))
(assert (or (= a1_5 681) (= a1_5 787)))

; Formula constraint
(assert (> a1_0 31))

(check-sat)
(get-model)