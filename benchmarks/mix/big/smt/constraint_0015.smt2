(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0][0] -> a1_0_0
;   a1[0][1] -> a1_0_1
;   a1[0][2] -> a1_0_2
;   a1[1][0] -> a1_1_0
;   a1[1][1] -> a1_1_1
;   a1[1][2] -> a1_1_2
;   a1[2][0] -> a1_2_0
;   a1[2][1] -> a1_2_1
;   a1[2][2] -> a1_2_2
;   a1[3][0] -> a1_3_0
;   a1[3][1] -> a1_3_1
;   a1[3][2] -> a1_3_2
;   a4[0][0] -> a4_0_0
;   a4[0][1] -> a4_0_1
;   a4[0][2] -> a4_0_2
;   a4[0][3] -> a4_0_3
;   a4[0][4] -> a4_0_4
;   a4[1][0] -> a4_1_0
;   a4[1][1] -> a4_1_1
;   a4[1][2] -> a4_1_2
;   a4[1][3] -> a4_1_3
;   a4[1][4] -> a4_1_4
;   a4[2][0] -> a4_2_0
;   a4[2][1] -> a4_2_1
;   a4[2][2] -> a4_2_2
;   a4[2][3] -> a4_2_3
;   a4[2][4] -> a4_2_4
;   a4[3][0] -> a4_3_0
;   a4[3][1] -> a4_3_1
;   a4[3][2] -> a4_3_2
;   a4[3][3] -> a4_3_3
;   a4[3][4] -> a4_3_4
;   a4[4][0] -> a4_4_0
;   a4[4][1] -> a4_4_1
;   a4[4][2] -> a4_4_2
;   a4[4][3] -> a4_4_3
;   a4[4][4] -> a4_4_4
;   a4[5][0] -> a4_5_0
;   a4[5][1] -> a4_5_1
;   a4[5][2] -> a4_5_2
;   a4[5][3] -> a4_5_3
;   a4[5][4] -> a4_5_4
;   a8[0] -> a8_0
;   a8[1] -> a8_1
;   a8[2] -> a8_2
;   a8[3] -> a8_3
;   a8[4] -> a8_4
;   i7

; Variable declarations
(declare-fun a1_0_0 () Int)
(declare-fun a1_0_1 () Int)
(declare-fun a1_0_2 () Int)
(declare-fun a1_1_0 () Int)
(declare-fun a1_1_1 () Int)
(declare-fun a1_1_2 () Int)
(declare-fun a1_2_0 () Int)
(declare-fun a1_2_1 () Int)
(declare-fun a1_2_2 () Int)
(declare-fun a1_3_0 () Int)
(declare-fun a1_3_1 () Int)
(declare-fun a1_3_2 () Int)
(declare-fun a4_0_0 () Int)
(declare-fun a4_0_1 () Int)
(declare-fun a4_0_2 () Int)
(declare-fun a4_0_3 () Int)
(declare-fun a4_0_4 () Int)
(declare-fun a4_1_0 () Int)
(declare-fun a4_1_1 () Int)
(declare-fun a4_1_2 () Int)
(declare-fun a4_1_3 () Int)
(declare-fun a4_1_4 () Int)
(declare-fun a4_2_0 () Int)
(declare-fun a4_2_1 () Int)
(declare-fun a4_2_2 () Int)
(declare-fun a4_2_3 () Int)
(declare-fun a4_2_4 () Int)
(declare-fun a4_3_0 () Int)
(declare-fun a4_3_1 () Int)
(declare-fun a4_3_2 () Int)
(declare-fun a4_3_3 () Int)
(declare-fun a4_3_4 () Int)
(declare-fun a4_4_0 () Int)
(declare-fun a4_4_1 () Int)
(declare-fun a4_4_2 () Int)
(declare-fun a4_4_3 () Int)
(declare-fun a4_4_4 () Int)
(declare-fun a4_5_0 () Int)
(declare-fun a4_5_1 () Int)
(declare-fun a4_5_2 () Int)
(declare-fun a4_5_3 () Int)
(declare-fun a4_5_4 () Int)
(declare-fun a8_0 () Int)
(declare-fun a8_1 () Int)
(declare-fun a8_2 () Int)
(declare-fun a8_3 () Int)
(declare-fun a8_4 () Int)
(declare-fun i7 () Int)

; Domain constraints
(assert (and (<= -536 a1_0_0) (<= a1_0_0 -23)))
(assert (and (<= -536 a1_0_1) (<= a1_0_1 -23)))
(assert (and (<= -536 a1_0_2) (<= a1_0_2 -23)))
(assert (and (<= -536 a1_1_0) (<= a1_1_0 -23)))
(assert (and (<= -536 a1_1_1) (<= a1_1_1 -23)))
(assert (and (<= -536 a1_1_2) (<= a1_1_2 -23)))
(assert (and (<= -536 a1_2_0) (<= a1_2_0 -23)))
(assert (and (<= -536 a1_2_1) (<= a1_2_1 -23)))
(assert (and (<= -536 a1_2_2) (<= a1_2_2 -23)))
(assert (and (<= -536 a1_3_0) (<= a1_3_0 -23)))
(assert (and (<= -536 a1_3_1) (<= a1_3_1 -23)))
(assert (and (<= -536 a1_3_2) (<= a1_3_2 -23)))
(assert (and (<= -483 a4_0_0) (<= a4_0_0 573)))
(assert (and (<= -483 a4_0_1) (<= a4_0_1 573)))
(assert (and (<= -483 a4_0_2) (<= a4_0_2 573)))
(assert (and (<= -483 a4_0_3) (<= a4_0_3 573)))
(assert (and (<= -483 a4_0_4) (<= a4_0_4 573)))
(assert (and (<= -483 a4_1_0) (<= a4_1_0 573)))
(assert (and (<= -483 a4_1_1) (<= a4_1_1 573)))
(assert (and (<= -483 a4_1_2) (<= a4_1_2 573)))
(assert (and (<= -483 a4_1_3) (<= a4_1_3 573)))
(assert (and (<= -483 a4_1_4) (<= a4_1_4 573)))
(assert (and (<= -483 a4_2_0) (<= a4_2_0 573)))
(assert (and (<= -483 a4_2_1) (<= a4_2_1 573)))
(assert (and (<= -483 a4_2_2) (<= a4_2_2 573)))
(assert (and (<= -483 a4_2_3) (<= a4_2_3 573)))
(assert (and (<= -483 a4_2_4) (<= a4_2_4 573)))
(assert (and (<= -483 a4_3_0) (<= a4_3_0 573)))
(assert (and (<= -483 a4_3_1) (<= a4_3_1 573)))
(assert (and (<= -483 a4_3_2) (<= a4_3_2 573)))
(assert (and (<= -483 a4_3_3) (<= a4_3_3 573)))
(assert (and (<= -483 a4_3_4) (<= a4_3_4 573)))
(assert (and (<= -483 a4_4_0) (<= a4_4_0 573)))
(assert (and (<= -483 a4_4_1) (<= a4_4_1 573)))
(assert (and (<= -483 a4_4_2) (<= a4_4_2 573)))
(assert (and (<= -483 a4_4_3) (<= a4_4_3 573)))
(assert (and (<= -483 a4_4_4) (<= a4_4_4 573)))
(assert (and (<= -483 a4_5_0) (<= a4_5_0 573)))
(assert (and (<= -483 a4_5_1) (<= a4_5_1 573)))
(assert (and (<= -483 a4_5_2) (<= a4_5_2 573)))
(assert (and (<= -483 a4_5_3) (<= a4_5_3 573)))
(assert (and (<= -483 a4_5_4) (<= a4_5_4 573)))
(assert (and (<= -850 a8_0) (<= a8_0 -46)))
(assert (and (<= -850 a8_1) (<= a8_1 -46)))
(assert (and (<= -850 a8_2) (<= a8_2 -46)))
(assert (and (<= -850 a8_3) (<= a8_3 -46)))
(assert (and (<= -850 a8_4) (<= a8_4 -46)))
(assert (or (= i7 -882) (= i7 874)))

; Formula constraint
(assert (or (or (=> (<= a4_1_4 a4_4_0) (<= (+ 48 (- a1_3_2 (* -71 a4_3_1))) -64)) (>= (+ (- a4_4_1 -15) a1_2_1) i7)) (=> (and (<= a4_3_3 (* -22 a4_0_0)) (<= -48 a4_5_1)) (and (= a4_3_1 -12) (<= -40 a4_2_4)))))

(check-sat)
(get-model)