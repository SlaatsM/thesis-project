(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.a3[0][0] -> h1_a3_0_0
;   h1.a3[0][1] -> h1_a3_0_1
;   h1.a3[0][2] -> h1_a3_0_2
;   h1.a3[0][3] -> h1_a3_0_3
;   h1.a3[0][4] -> h1_a3_0_4
;   h1.a3[0][5] -> h1_a3_0_5
;   h1.a3[1][0] -> h1_a3_1_0
;   h1.a3[1][1] -> h1_a3_1_1
;   h1.a3[1][2] -> h1_a3_1_2
;   h1.a3[1][3] -> h1_a3_1_3
;   h1.a3[1][4] -> h1_a3_1_4
;   h1.a3[1][5] -> h1_a3_1_5
;   h1.a3[2][0] -> h1_a3_2_0
;   h1.a3[2][1] -> h1_a3_2_1
;   h1.a3[2][2] -> h1_a3_2_2
;   h1.a3[2][3] -> h1_a3_2_3
;   h1.a3[2][4] -> h1_a3_2_4
;   h1.a3[2][5] -> h1_a3_2_5
;   h1.i2 -> h1_i2
;   h1.i6 -> h1_i6
;   h7.h8.i10 -> h7_h8_i10
;   h7.h8.i11 -> h7_h8_i11

; Variable declarations
(declare-fun h1_a3_0_0 () Int)
(declare-fun h1_a3_0_1 () Int)
(declare-fun h1_a3_0_2 () Int)
(declare-fun h1_a3_0_3 () Int)
(declare-fun h1_a3_0_4 () Int)
(declare-fun h1_a3_0_5 () Int)
(declare-fun h1_a3_1_0 () Int)
(declare-fun h1_a3_1_1 () Int)
(declare-fun h1_a3_1_2 () Int)
(declare-fun h1_a3_1_3 () Int)
(declare-fun h1_a3_1_4 () Int)
(declare-fun h1_a3_1_5 () Int)
(declare-fun h1_a3_2_0 () Int)
(declare-fun h1_a3_2_1 () Int)
(declare-fun h1_a3_2_2 () Int)
(declare-fun h1_a3_2_3 () Int)
(declare-fun h1_a3_2_4 () Int)
(declare-fun h1_a3_2_5 () Int)
(declare-fun h1_i2 () Int)
(declare-fun h1_i6 () Int)
(declare-fun h7_h8_i10 () Int)
(declare-fun h7_h8_i11 () Int)

; Domain constraints
(assert (or (= h1_a3_0_0 -733) (= h1_a3_0_0 -381) (= h1_a3_0_0 -128)))
(assert (or (= h1_a3_0_1 -733) (= h1_a3_0_1 -381) (= h1_a3_0_1 -128)))
(assert (or (= h1_a3_0_2 -733) (= h1_a3_0_2 -381) (= h1_a3_0_2 -128)))
(assert (or (= h1_a3_0_3 -733) (= h1_a3_0_3 -381) (= h1_a3_0_3 -128)))
(assert (or (= h1_a3_0_4 -733) (= h1_a3_0_4 -381) (= h1_a3_0_4 -128)))
(assert (or (= h1_a3_0_5 -733) (= h1_a3_0_5 -381) (= h1_a3_0_5 -128)))
(assert (or (= h1_a3_1_0 -733) (= h1_a3_1_0 -381) (= h1_a3_1_0 -128)))
(assert (or (= h1_a3_1_1 -733) (= h1_a3_1_1 -381) (= h1_a3_1_1 -128)))
(assert (or (= h1_a3_1_2 -733) (= h1_a3_1_2 -381) (= h1_a3_1_2 -128)))
(assert (or (= h1_a3_1_3 -733) (= h1_a3_1_3 -381) (= h1_a3_1_3 -128)))
(assert (or (= h1_a3_1_4 -733) (= h1_a3_1_4 -381) (= h1_a3_1_4 -128)))
(assert (or (= h1_a3_1_5 -733) (= h1_a3_1_5 -381) (= h1_a3_1_5 -128)))
(assert (or (= h1_a3_2_0 -733) (= h1_a3_2_0 -381) (= h1_a3_2_0 -128)))
(assert (or (= h1_a3_2_1 -733) (= h1_a3_2_1 -381) (= h1_a3_2_1 -128)))
(assert (or (= h1_a3_2_2 -733) (= h1_a3_2_2 -381) (= h1_a3_2_2 -128)))
(assert (or (= h1_a3_2_3 -733) (= h1_a3_2_3 -381) (= h1_a3_2_3 -128)))
(assert (or (= h1_a3_2_4 -733) (= h1_a3_2_4 -381) (= h1_a3_2_4 -128)))
(assert (or (= h1_a3_2_5 -733) (= h1_a3_2_5 -381) (= h1_a3_2_5 -128)))
(assert (and (<= 170 h1_i2) (<= h1_i2 278)))
(assert (or (= h1_i6 -160) (= h1_i6 -34) (= h1_i6 771)))
(assert (or (= h7_h8_i10 -349) (= h7_h8_i10 -312) (= h7_h8_i10 448)))
(assert (and (<= -736 h7_h8_i11) (<= h7_h8_i11 291)))

; Formula constraint
(assert (>= h1_i6 h1_a3_2_2))

(check-sat)
(get-model)