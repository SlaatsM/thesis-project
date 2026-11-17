(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0][0] -> a1_0_0
;   a1[0][1] -> a1_0_1
;   a1[0][2] -> a1_0_2
;   a1[0][3] -> a1_0_3
;   a1[0][4] -> a1_0_4

; Variable declarations
(declare-fun a1_0_0 () Int)
(declare-fun a1_0_1 () Int)
(declare-fun a1_0_2 () Int)
(declare-fun a1_0_3 () Int)
(declare-fun a1_0_4 () Int)

; Domain constraints
(assert (and (<= -988 a1_0_0) (<= a1_0_0 27)))
(assert (and (<= -988 a1_0_1) (<= a1_0_1 27)))
(assert (and (<= -988 a1_0_2) (<= a1_0_2 27)))
(assert (and (<= -988 a1_0_3) (<= a1_0_3 27)))
(assert (and (<= -988 a1_0_4) (<= a1_0_4 27)))

; Formula constraint
(assert (not (not (and (<= 21 a1_0_1) (< (- a1_0_3 a1_0_4) a1_0_3)))))

(check-sat)
(get-model)