(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1
;   a1[2] -> a1_2
;   a1[3] -> a1_3
;   a3[0][0] -> a3_0_0
;   a3[0][1] -> a3_0_1
;   a3[0][2] -> a3_0_2
;   a3[1][0] -> a3_1_0
;   a3[1][1] -> a3_1_1
;   a3[1][2] -> a3_1_2
;   a3[2][0] -> a3_2_0
;   a3[2][1] -> a3_2_1
;   a3[2][2] -> a3_2_2
;   a3[3][0] -> a3_3_0
;   a3[3][1] -> a3_3_1
;   a3[3][2] -> a3_3_2
;   a3[4][0] -> a3_4_0
;   a3[4][1] -> a3_4_1
;   a3[4][2] -> a3_4_2
;   a7[0].i10 -> a7_0_i10
;   a7[0].i11 -> a7_0_i11
;   a7[0].i12 -> a7_0_i12
;   i6

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)
(declare-fun a1_2 () Int)
(declare-fun a1_3 () Int)
(declare-fun a3_0_0 () Int)
(declare-fun a3_0_1 () Int)
(declare-fun a3_0_2 () Int)
(declare-fun a3_1_0 () Int)
(declare-fun a3_1_1 () Int)
(declare-fun a3_1_2 () Int)
(declare-fun a3_2_0 () Int)
(declare-fun a3_2_1 () Int)
(declare-fun a3_2_2 () Int)
(declare-fun a3_3_0 () Int)
(declare-fun a3_3_1 () Int)
(declare-fun a3_3_2 () Int)
(declare-fun a3_4_0 () Int)
(declare-fun a3_4_1 () Int)
(declare-fun a3_4_2 () Int)
(declare-fun a7_0_i10 () Int)
(declare-fun a7_0_i11 () Int)
(declare-fun a7_0_i12 () Int)
(declare-fun i6 () Int)

; Domain constraints
(assert (or (= a1_0 567) (= a1_0 826)))
(assert (or (= a1_1 567) (= a1_1 826)))
(assert (or (= a1_2 567) (= a1_2 826)))
(assert (or (= a1_3 567) (= a1_3 826)))
(assert (and (<= -503 a3_0_0) (<= a3_0_0 709)))
(assert (and (<= -503 a3_0_1) (<= a3_0_1 709)))
(assert (and (<= -503 a3_0_2) (<= a3_0_2 709)))
(assert (and (<= -503 a3_1_0) (<= a3_1_0 709)))
(assert (and (<= -503 a3_1_1) (<= a3_1_1 709)))
(assert (and (<= -503 a3_1_2) (<= a3_1_2 709)))
(assert (and (<= -503 a3_2_0) (<= a3_2_0 709)))
(assert (and (<= -503 a3_2_1) (<= a3_2_1 709)))
(assert (and (<= -503 a3_2_2) (<= a3_2_2 709)))
(assert (and (<= -503 a3_3_0) (<= a3_3_0 709)))
(assert (and (<= -503 a3_3_1) (<= a3_3_1 709)))
(assert (and (<= -503 a3_3_2) (<= a3_3_2 709)))
(assert (and (<= -503 a3_4_0) (<= a3_4_0 709)))
(assert (and (<= -503 a3_4_1) (<= a3_4_1 709)))
(assert (and (<= -503 a3_4_2) (<= a3_4_2 709)))
(assert (and (<= 430 a7_0_i10) (<= a7_0_i10 472)))
(assert (or (= a7_0_i11 -554) (= a7_0_i11 11) (= a7_0_i11 271)))
(assert (or (and (<= -604 a7_0_i12) (<= a7_0_i12 147)) (= a7_0_i12 821)))
(assert (or (= i6 -924) (= i6 -497) (= i6 256) (= i6 498)))

; Formula constraint
(assert (> -31 a3_3_2))

(check-sat)
(get-model)