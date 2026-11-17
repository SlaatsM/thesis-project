(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a14[0][0] -> a14_0_0
;   a14[0][1] -> a14_0_1
;   a14[0][2] -> a14_0_2
;   a14[0][3] -> a14_0_3
;   a14[1][0] -> a14_1_0
;   a14[1][1] -> a14_1_1
;   a14[1][2] -> a14_1_2
;   a14[1][3] -> a14_1_3
;   a14[2][0] -> a14_2_0
;   a14[2][1] -> a14_2_1
;   a14[2][2] -> a14_2_2
;   a14[2][3] -> a14_2_3
;   a3[0] -> a3_0
;   a3[1] -> a3_1
;   a3[2] -> a3_2
;   h5.a11[0][0] -> h5_a11_0_0
;   h5.a11[0][1] -> h5_a11_0_1
;   h5.a11[0][2] -> h5_a11_0_2
;   h5.a11[0][3] -> h5_a11_0_3
;   h5.a11[0][4] -> h5_a11_0_4
;   h5.a11[0][5] -> h5_a11_0_5
;   h5.a11[1][0] -> h5_a11_1_0
;   h5.a11[1][1] -> h5_a11_1_1
;   h5.a11[1][2] -> h5_a11_1_2
;   h5.a11[1][3] -> h5_a11_1_3
;   h5.a11[1][4] -> h5_a11_1_4
;   h5.a11[1][5] -> h5_a11_1_5
;   h5.h7.a8[0] -> h5_h7_a8_0
;   h5.i10 -> h5_i10
;   h5.i6 -> h5_i6
;   i1
;   i2

; Variable declarations
(declare-fun a14_0_0 () Int)
(declare-fun a14_0_1 () Int)
(declare-fun a14_0_2 () Int)
(declare-fun a14_0_3 () Int)
(declare-fun a14_1_0 () Int)
(declare-fun a14_1_1 () Int)
(declare-fun a14_1_2 () Int)
(declare-fun a14_1_3 () Int)
(declare-fun a14_2_0 () Int)
(declare-fun a14_2_1 () Int)
(declare-fun a14_2_2 () Int)
(declare-fun a14_2_3 () Int)
(declare-fun a3_0 () Int)
(declare-fun a3_1 () Int)
(declare-fun a3_2 () Int)
(declare-fun h5_a11_0_0 () Int)
(declare-fun h5_a11_0_1 () Int)
(declare-fun h5_a11_0_2 () Int)
(declare-fun h5_a11_0_3 () Int)
(declare-fun h5_a11_0_4 () Int)
(declare-fun h5_a11_0_5 () Int)
(declare-fun h5_a11_1_0 () Int)
(declare-fun h5_a11_1_1 () Int)
(declare-fun h5_a11_1_2 () Int)
(declare-fun h5_a11_1_3 () Int)
(declare-fun h5_a11_1_4 () Int)
(declare-fun h5_a11_1_5 () Int)
(declare-fun h5_h7_a8_0 () Int)
(declare-fun h5_i10 () Int)
(declare-fun h5_i6 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= -800 a14_0_0) (<= a14_0_0 -463)))
(assert (and (<= -800 a14_0_1) (<= a14_0_1 -463)))
(assert (and (<= -800 a14_0_2) (<= a14_0_2 -463)))
(assert (and (<= -800 a14_0_3) (<= a14_0_3 -463)))
(assert (and (<= -800 a14_1_0) (<= a14_1_0 -463)))
(assert (and (<= -800 a14_1_1) (<= a14_1_1 -463)))
(assert (and (<= -800 a14_1_2) (<= a14_1_2 -463)))
(assert (and (<= -800 a14_1_3) (<= a14_1_3 -463)))
(assert (and (<= -800 a14_2_0) (<= a14_2_0 -463)))
(assert (and (<= -800 a14_2_1) (<= a14_2_1 -463)))
(assert (and (<= -800 a14_2_2) (<= a14_2_2 -463)))
(assert (and (<= -800 a14_2_3) (<= a14_2_3 -463)))
(assert (and (<= -277 a3_0) (<= a3_0 727)))
(assert (and (<= -277 a3_1) (<= a3_1 727)))
(assert (and (<= -277 a3_2) (<= a3_2 727)))
(assert (and (<= -435 h5_a11_0_0) (<= h5_a11_0_0 922)))
(assert (and (<= -435 h5_a11_0_1) (<= h5_a11_0_1 922)))
(assert (and (<= -435 h5_a11_0_2) (<= h5_a11_0_2 922)))
(assert (and (<= -435 h5_a11_0_3) (<= h5_a11_0_3 922)))
(assert (and (<= -435 h5_a11_0_4) (<= h5_a11_0_4 922)))
(assert (and (<= -435 h5_a11_0_5) (<= h5_a11_0_5 922)))
(assert (and (<= -435 h5_a11_1_0) (<= h5_a11_1_0 922)))
(assert (and (<= -435 h5_a11_1_1) (<= h5_a11_1_1 922)))
(assert (and (<= -435 h5_a11_1_2) (<= h5_a11_1_2 922)))
(assert (and (<= -435 h5_a11_1_3) (<= h5_a11_1_3 922)))
(assert (and (<= -435 h5_a11_1_4) (<= h5_a11_1_4 922)))
(assert (and (<= -435 h5_a11_1_5) (<= h5_a11_1_5 922)))
(assert (or (and (<= -386 h5_h7_a8_0) (<= h5_h7_a8_0 30)) (= h5_h7_a8_0 520)))
(assert (or (= h5_i10 -589) (= h5_i10 -506) (= h5_i10 66) (= h5_i10 108)))
(assert (and (<= -850 h5_i6) (<= h5_i6 -835)))
(assert (and (<= -969 i1) (<= i1 -593)))
(assert (and (<= -345 i2) (<= i2 399)))

; Formula constraint
(assert (and (not (= 55 -82)) (>= h5_h7_a8_0 49)))

(check-sat)
(get-model)