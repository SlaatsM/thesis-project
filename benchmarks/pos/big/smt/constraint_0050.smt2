(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a4[0][0][0] -> a4_0_0_0
;   a4[0][0][1] -> a4_0_0_1
;   a4[0][0][2] -> a4_0_0_2
;   a4[0][0][3] -> a4_0_0_3
;   a4[0][1][0] -> a4_0_1_0
;   a4[0][1][1] -> a4_0_1_1
;   a4[0][1][2] -> a4_0_1_2
;   a4[0][1][3] -> a4_0_1_3
;   a4[1][0][0] -> a4_1_0_0
;   a4[1][0][1] -> a4_1_0_1
;   a4[1][0][2] -> a4_1_0_2
;   a4[1][0][3] -> a4_1_0_3
;   a4[1][1][0] -> a4_1_1_0
;   a4[1][1][1] -> a4_1_1_1
;   a4[1][1][2] -> a4_1_1_2
;   a4[1][1][3] -> a4_1_1_3
;   a4[2][0][0] -> a4_2_0_0
;   a4[2][0][1] -> a4_2_0_1
;   a4[2][0][2] -> a4_2_0_2
;   a4[2][0][3] -> a4_2_0_3
;   a4[2][1][0] -> a4_2_1_0
;   a4[2][1][1] -> a4_2_1_1
;   a4[2][1][2] -> a4_2_1_2
;   a4[2][1][3] -> a4_2_1_3
;   a4[3][0][0] -> a4_3_0_0
;   a4[3][0][1] -> a4_3_0_1
;   a4[3][0][2] -> a4_3_0_2
;   a4[3][0][3] -> a4_3_0_3
;   a4[3][1][0] -> a4_3_1_0
;   a4[3][1][1] -> a4_3_1_1
;   a4[3][1][2] -> a4_3_1_2
;   a4[3][1][3] -> a4_3_1_3
;   a4[4][0][0] -> a4_4_0_0
;   a4[4][0][1] -> a4_4_0_1
;   a4[4][0][2] -> a4_4_0_2
;   a4[4][0][3] -> a4_4_0_3
;   a4[4][1][0] -> a4_4_1_0
;   a4[4][1][1] -> a4_4_1_1
;   a4[4][1][2] -> a4_4_1_2
;   a4[4][1][3] -> a4_4_1_3
;   a4[5][0][0] -> a4_5_0_0
;   a4[5][0][1] -> a4_5_0_1
;   a4[5][0][2] -> a4_5_0_2
;   a4[5][0][3] -> a4_5_0_3
;   a4[5][1][0] -> a4_5_1_0
;   a4[5][1][1] -> a4_5_1_1
;   a4[5][1][2] -> a4_5_1_2
;   a4[5][1][3] -> a4_5_1_3
;   i1
;   i2
;   i3

; Variable declarations
(declare-fun a4_0_0_0 () Int)
(declare-fun a4_0_0_1 () Int)
(declare-fun a4_0_0_2 () Int)
(declare-fun a4_0_0_3 () Int)
(declare-fun a4_0_1_0 () Int)
(declare-fun a4_0_1_1 () Int)
(declare-fun a4_0_1_2 () Int)
(declare-fun a4_0_1_3 () Int)
(declare-fun a4_1_0_0 () Int)
(declare-fun a4_1_0_1 () Int)
(declare-fun a4_1_0_2 () Int)
(declare-fun a4_1_0_3 () Int)
(declare-fun a4_1_1_0 () Int)
(declare-fun a4_1_1_1 () Int)
(declare-fun a4_1_1_2 () Int)
(declare-fun a4_1_1_3 () Int)
(declare-fun a4_2_0_0 () Int)
(declare-fun a4_2_0_1 () Int)
(declare-fun a4_2_0_2 () Int)
(declare-fun a4_2_0_3 () Int)
(declare-fun a4_2_1_0 () Int)
(declare-fun a4_2_1_1 () Int)
(declare-fun a4_2_1_2 () Int)
(declare-fun a4_2_1_3 () Int)
(declare-fun a4_3_0_0 () Int)
(declare-fun a4_3_0_1 () Int)
(declare-fun a4_3_0_2 () Int)
(declare-fun a4_3_0_3 () Int)
(declare-fun a4_3_1_0 () Int)
(declare-fun a4_3_1_1 () Int)
(declare-fun a4_3_1_2 () Int)
(declare-fun a4_3_1_3 () Int)
(declare-fun a4_4_0_0 () Int)
(declare-fun a4_4_0_1 () Int)
(declare-fun a4_4_0_2 () Int)
(declare-fun a4_4_0_3 () Int)
(declare-fun a4_4_1_0 () Int)
(declare-fun a4_4_1_1 () Int)
(declare-fun a4_4_1_2 () Int)
(declare-fun a4_4_1_3 () Int)
(declare-fun a4_5_0_0 () Int)
(declare-fun a4_5_0_1 () Int)
(declare-fun a4_5_0_2 () Int)
(declare-fun a4_5_0_3 () Int)
(declare-fun a4_5_1_0 () Int)
(declare-fun a4_5_1_1 () Int)
(declare-fun a4_5_1_2 () Int)
(declare-fun a4_5_1_3 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (and (<= 411 a4_0_0_0) (<= a4_0_0_0 919)))
(assert (and (<= 411 a4_0_0_1) (<= a4_0_0_1 919)))
(assert (and (<= 411 a4_0_0_2) (<= a4_0_0_2 919)))
(assert (and (<= 411 a4_0_0_3) (<= a4_0_0_3 919)))
(assert (and (<= 411 a4_0_1_0) (<= a4_0_1_0 919)))
(assert (and (<= 411 a4_0_1_1) (<= a4_0_1_1 919)))
(assert (and (<= 411 a4_0_1_2) (<= a4_0_1_2 919)))
(assert (and (<= 411 a4_0_1_3) (<= a4_0_1_3 919)))
(assert (and (<= 411 a4_1_0_0) (<= a4_1_0_0 919)))
(assert (and (<= 411 a4_1_0_1) (<= a4_1_0_1 919)))
(assert (and (<= 411 a4_1_0_2) (<= a4_1_0_2 919)))
(assert (and (<= 411 a4_1_0_3) (<= a4_1_0_3 919)))
(assert (and (<= 411 a4_1_1_0) (<= a4_1_1_0 919)))
(assert (and (<= 411 a4_1_1_1) (<= a4_1_1_1 919)))
(assert (and (<= 411 a4_1_1_2) (<= a4_1_1_2 919)))
(assert (and (<= 411 a4_1_1_3) (<= a4_1_1_3 919)))
(assert (and (<= 411 a4_2_0_0) (<= a4_2_0_0 919)))
(assert (and (<= 411 a4_2_0_1) (<= a4_2_0_1 919)))
(assert (and (<= 411 a4_2_0_2) (<= a4_2_0_2 919)))
(assert (and (<= 411 a4_2_0_3) (<= a4_2_0_3 919)))
(assert (and (<= 411 a4_2_1_0) (<= a4_2_1_0 919)))
(assert (and (<= 411 a4_2_1_1) (<= a4_2_1_1 919)))
(assert (and (<= 411 a4_2_1_2) (<= a4_2_1_2 919)))
(assert (and (<= 411 a4_2_1_3) (<= a4_2_1_3 919)))
(assert (and (<= 411 a4_3_0_0) (<= a4_3_0_0 919)))
(assert (and (<= 411 a4_3_0_1) (<= a4_3_0_1 919)))
(assert (and (<= 411 a4_3_0_2) (<= a4_3_0_2 919)))
(assert (and (<= 411 a4_3_0_3) (<= a4_3_0_3 919)))
(assert (and (<= 411 a4_3_1_0) (<= a4_3_1_0 919)))
(assert (and (<= 411 a4_3_1_1) (<= a4_3_1_1 919)))
(assert (and (<= 411 a4_3_1_2) (<= a4_3_1_2 919)))
(assert (and (<= 411 a4_3_1_3) (<= a4_3_1_3 919)))
(assert (and (<= 411 a4_4_0_0) (<= a4_4_0_0 919)))
(assert (and (<= 411 a4_4_0_1) (<= a4_4_0_1 919)))
(assert (and (<= 411 a4_4_0_2) (<= a4_4_0_2 919)))
(assert (and (<= 411 a4_4_0_3) (<= a4_4_0_3 919)))
(assert (and (<= 411 a4_4_1_0) (<= a4_4_1_0 919)))
(assert (and (<= 411 a4_4_1_1) (<= a4_4_1_1 919)))
(assert (and (<= 411 a4_4_1_2) (<= a4_4_1_2 919)))
(assert (and (<= 411 a4_4_1_3) (<= a4_4_1_3 919)))
(assert (and (<= 411 a4_5_0_0) (<= a4_5_0_0 919)))
(assert (and (<= 411 a4_5_0_1) (<= a4_5_0_1 919)))
(assert (and (<= 411 a4_5_0_2) (<= a4_5_0_2 919)))
(assert (and (<= 411 a4_5_0_3) (<= a4_5_0_3 919)))
(assert (and (<= 411 a4_5_1_0) (<= a4_5_1_0 919)))
(assert (and (<= 411 a4_5_1_1) (<= a4_5_1_1 919)))
(assert (and (<= 411 a4_5_1_2) (<= a4_5_1_2 919)))
(assert (and (<= 411 a4_5_1_3) (<= a4_5_1_3 919)))
(assert (and (<= 609 i1) (<= i1 990)))
(assert (or (= i2 5) (= i2 467) (= i2 796)))
(assert (and (<= 41 i3) (<= i3 509)))

; Formula constraint
(assert (< (* -89 i3) a4_0_1_3))

(check-sat)
(get-model)