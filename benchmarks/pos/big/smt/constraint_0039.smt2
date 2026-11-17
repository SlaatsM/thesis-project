(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a3[0] -> a3_0
;   a3[1] -> a3_1
;   a3[2] -> a3_2
;   a3[3] -> a3_3
;   a3[4] -> a3_4
;   i1
;   i2

; Variable declarations
(declare-fun a3_0 () Int)
(declare-fun a3_1 () Int)
(declare-fun a3_2 () Int)
(declare-fun a3_3 () Int)
(declare-fun a3_4 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= a3_0 222) (= a3_0 269) (= a3_0 483) (= a3_0 590)))
(assert (or (= a3_1 222) (= a3_1 269) (= a3_1 483) (= a3_1 590)))
(assert (or (= a3_2 222) (= a3_2 269) (= a3_2 483) (= a3_2 590)))
(assert (or (= a3_3 222) (= a3_3 269) (= a3_3 483) (= a3_3 590)))
(assert (or (= a3_4 222) (= a3_4 269) (= a3_4 483) (= a3_4 590)))
(assert (and (<= 201 i1) (<= i1 294)))
(assert (and (<= 140 i2) (<= i2 320)))

; Formula constraint
(assert (>= i2 a3_2))

(check-sat)
(get-model)