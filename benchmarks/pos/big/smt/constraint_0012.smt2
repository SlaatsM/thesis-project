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
(assert (and (<= 73 a1_0) (<= a1_0 996)))
(assert (and (<= 73 a1_1) (<= a1_1 996)))
(assert (and (<= 73 a1_2) (<= a1_2 996)))
(assert (and (<= 73 a1_3) (<= a1_3 996)))
(assert (and (<= 73 a1_4) (<= a1_4 996)))
(assert (and (<= 73 a1_5) (<= a1_5 996)))

; Formula constraint
(assert (>= a1_5 a1_0))

(check-sat)
(get-model)