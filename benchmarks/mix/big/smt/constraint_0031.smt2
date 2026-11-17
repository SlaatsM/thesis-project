(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a16[0].a18[0] -> a16_0_a18_0
;   a16[0].a18[1] -> a16_0_a18_1
;   a16[0].i20 -> a16_0_i20
;   a16[0].i21 -> a16_0_i21
;   a16[1].a18[0] -> a16_1_a18_0
;   a16[1].a18[1] -> a16_1_a18_1
;   a16[1].i20 -> a16_1_i20
;   a16[1].i21 -> a16_1_i21
;   a16[2].a18[0] -> a16_2_a18_0
;   a16[2].a18[1] -> a16_2_a18_1
;   a16[2].i20 -> a16_2_i20
;   a16[2].i21 -> a16_2_i21
;   a16[3].a18[0] -> a16_3_a18_0
;   a16[3].a18[1] -> a16_3_a18_1
;   a16[3].i20 -> a16_3_i20
;   a16[3].i21 -> a16_3_i21
;   a16[4].a18[0] -> a16_4_a18_0
;   a16[4].a18[1] -> a16_4_a18_1
;   a16[4].i20 -> a16_4_i20
;   a16[4].i21 -> a16_4_i21
;   a16[5].a18[0] -> a16_5_a18_0
;   a16[5].a18[1] -> a16_5_a18_1
;   a16[5].i20 -> a16_5_i20
;   a16[5].i21 -> a16_5_i21
;   h1.a2[0][0] -> h1_a2_0_0
;   h1.a2[0][1] -> h1_a2_0_1
;   h1.a2[0][2] -> h1_a2_0_2
;   h1.a2[1][0] -> h1_a2_1_0
;   h1.a2[1][1] -> h1_a2_1_1
;   h1.a2[1][2] -> h1_a2_1_2
;   h1.a2[2][0] -> h1_a2_2_0
;   h1.a2[2][1] -> h1_a2_2_1
;   h1.a2[2][2] -> h1_a2_2_2
;   h1.a2[3][0] -> h1_a2_3_0
;   h1.a2[3][1] -> h1_a2_3_1
;   h1.a2[3][2] -> h1_a2_3_2
;   h1.a2[4][0] -> h1_a2_4_0
;   h1.a2[4][1] -> h1_a2_4_1
;   h1.a2[4][2] -> h1_a2_4_2
;   h1.a2[5][0] -> h1_a2_5_0
;   h1.a2[5][1] -> h1_a2_5_1
;   h1.a2[5][2] -> h1_a2_5_2
;   h1.h7.i8 -> h1_h7_i8
;   h1.i5 -> h1_i5
;   h1.i6 -> h1_i6
;   h10.h13.a14[0] -> h10_h13_a14_0
;   h10.h13.a14[1] -> h10_h13_a14_1
;   h10.i11 -> h10_i11
;   h10.i12 -> h10_i12
;   i23
;   i9

; Variable declarations
(declare-fun a16_0_a18_0 () Int)
(declare-fun a16_0_a18_1 () Int)
(declare-fun a16_0_i20 () Int)
(declare-fun a16_0_i21 () Int)
(declare-fun a16_1_a18_0 () Int)
(declare-fun a16_1_a18_1 () Int)
(declare-fun a16_1_i20 () Int)
(declare-fun a16_1_i21 () Int)
(declare-fun a16_2_a18_0 () Int)
(declare-fun a16_2_a18_1 () Int)
(declare-fun a16_2_i20 () Int)
(declare-fun a16_2_i21 () Int)
(declare-fun a16_3_a18_0 () Int)
(declare-fun a16_3_a18_1 () Int)
(declare-fun a16_3_i20 () Int)
(declare-fun a16_3_i21 () Int)
(declare-fun a16_4_a18_0 () Int)
(declare-fun a16_4_a18_1 () Int)
(declare-fun a16_4_i20 () Int)
(declare-fun a16_4_i21 () Int)
(declare-fun a16_5_a18_0 () Int)
(declare-fun a16_5_a18_1 () Int)
(declare-fun a16_5_i20 () Int)
(declare-fun a16_5_i21 () Int)
(declare-fun h1_a2_0_0 () Int)
(declare-fun h1_a2_0_1 () Int)
(declare-fun h1_a2_0_2 () Int)
(declare-fun h1_a2_1_0 () Int)
(declare-fun h1_a2_1_1 () Int)
(declare-fun h1_a2_1_2 () Int)
(declare-fun h1_a2_2_0 () Int)
(declare-fun h1_a2_2_1 () Int)
(declare-fun h1_a2_2_2 () Int)
(declare-fun h1_a2_3_0 () Int)
(declare-fun h1_a2_3_1 () Int)
(declare-fun h1_a2_3_2 () Int)
(declare-fun h1_a2_4_0 () Int)
(declare-fun h1_a2_4_1 () Int)
(declare-fun h1_a2_4_2 () Int)
(declare-fun h1_a2_5_0 () Int)
(declare-fun h1_a2_5_1 () Int)
(declare-fun h1_a2_5_2 () Int)
(declare-fun h1_h7_i8 () Int)
(declare-fun h1_i5 () Int)
(declare-fun h1_i6 () Int)
(declare-fun h10_h13_a14_0 () Int)
(declare-fun h10_h13_a14_1 () Int)
(declare-fun h10_i11 () Int)
(declare-fun h10_i12 () Int)
(declare-fun i23 () Int)
(declare-fun i9 () Int)

; Domain constraints
(assert (and (<= 176 a16_0_a18_0) (<= a16_0_a18_0 710)))
(assert (and (<= 176 a16_0_a18_1) (<= a16_0_a18_1 710)))
(assert (and (<= -857 a16_0_i20) (<= a16_0_i20 979)))
(assert (and (<= -596 a16_0_i21) (<= a16_0_i21 649)))
(assert (and (<= 176 a16_1_a18_0) (<= a16_1_a18_0 710)))
(assert (and (<= 176 a16_1_a18_1) (<= a16_1_a18_1 710)))
(assert (and (<= -857 a16_1_i20) (<= a16_1_i20 979)))
(assert (and (<= -596 a16_1_i21) (<= a16_1_i21 649)))
(assert (and (<= 176 a16_2_a18_0) (<= a16_2_a18_0 710)))
(assert (and (<= 176 a16_2_a18_1) (<= a16_2_a18_1 710)))
(assert (and (<= -857 a16_2_i20) (<= a16_2_i20 979)))
(assert (and (<= -596 a16_2_i21) (<= a16_2_i21 649)))
(assert (and (<= 176 a16_3_a18_0) (<= a16_3_a18_0 710)))
(assert (and (<= 176 a16_3_a18_1) (<= a16_3_a18_1 710)))
(assert (and (<= -857 a16_3_i20) (<= a16_3_i20 979)))
(assert (and (<= -596 a16_3_i21) (<= a16_3_i21 649)))
(assert (and (<= 176 a16_4_a18_0) (<= a16_4_a18_0 710)))
(assert (and (<= 176 a16_4_a18_1) (<= a16_4_a18_1 710)))
(assert (and (<= -857 a16_4_i20) (<= a16_4_i20 979)))
(assert (and (<= -596 a16_4_i21) (<= a16_4_i21 649)))
(assert (and (<= 176 a16_5_a18_0) (<= a16_5_a18_0 710)))
(assert (and (<= 176 a16_5_a18_1) (<= a16_5_a18_1 710)))
(assert (and (<= -857 a16_5_i20) (<= a16_5_i20 979)))
(assert (and (<= -596 a16_5_i21) (<= a16_5_i21 649)))
(assert (or (= h1_a2_0_0 -290) (= h1_a2_0_0 -21) (= h1_a2_0_0 997)))
(assert (or (= h1_a2_0_1 -290) (= h1_a2_0_1 -21) (= h1_a2_0_1 997)))
(assert (or (= h1_a2_0_2 -290) (= h1_a2_0_2 -21) (= h1_a2_0_2 997)))
(assert (or (= h1_a2_1_0 -290) (= h1_a2_1_0 -21) (= h1_a2_1_0 997)))
(assert (or (= h1_a2_1_1 -290) (= h1_a2_1_1 -21) (= h1_a2_1_1 997)))
(assert (or (= h1_a2_1_2 -290) (= h1_a2_1_2 -21) (= h1_a2_1_2 997)))
(assert (or (= h1_a2_2_0 -290) (= h1_a2_2_0 -21) (= h1_a2_2_0 997)))
(assert (or (= h1_a2_2_1 -290) (= h1_a2_2_1 -21) (= h1_a2_2_1 997)))
(assert (or (= h1_a2_2_2 -290) (= h1_a2_2_2 -21) (= h1_a2_2_2 997)))
(assert (or (= h1_a2_3_0 -290) (= h1_a2_3_0 -21) (= h1_a2_3_0 997)))
(assert (or (= h1_a2_3_1 -290) (= h1_a2_3_1 -21) (= h1_a2_3_1 997)))
(assert (or (= h1_a2_3_2 -290) (= h1_a2_3_2 -21) (= h1_a2_3_2 997)))
(assert (or (= h1_a2_4_0 -290) (= h1_a2_4_0 -21) (= h1_a2_4_0 997)))
(assert (or (= h1_a2_4_1 -290) (= h1_a2_4_1 -21) (= h1_a2_4_1 997)))
(assert (or (= h1_a2_4_2 -290) (= h1_a2_4_2 -21) (= h1_a2_4_2 997)))
(assert (or (= h1_a2_5_0 -290) (= h1_a2_5_0 -21) (= h1_a2_5_0 997)))
(assert (or (= h1_a2_5_1 -290) (= h1_a2_5_1 -21) (= h1_a2_5_1 997)))
(assert (or (= h1_a2_5_2 -290) (= h1_a2_5_2 -21) (= h1_a2_5_2 997)))
(assert (and (<= -866 h1_h7_i8) (<= h1_h7_i8 -475)))
(assert (or (= h1_i5 -512) (= h1_i5 346) (= h1_i5 443)))
(assert (or (= h1_i6 -977) (= h1_i6 104) (= h1_i6 295) (= h1_i6 472)))
(assert (and (<= -867 h10_h13_a14_0) (<= h10_h13_a14_0 -97)))
(assert (and (<= -867 h10_h13_a14_1) (<= h10_h13_a14_1 -97)))
(assert (and (<= -832 h10_i11) (<= h10_i11 587)))
(assert (or (= h10_i12 -801) (and (<= -565 h10_i12) (<= h10_i12 203))))
(assert (and (<= -559 i23) (<= i23 607)))
(assert (or (and (<= -579 i9) (<= i9 237)) (= i9 746)))

; Formula constraint
(assert (and (not (= 50 a16_1_a18_1)) (and (=> (>= -38 h1_a2_5_2) (>= (+ (* -66 a16_4_a18_0) 25) a16_1_a18_0)) (and (<= -30 2) (> 67 a16_4_i21)))))

(check-sat)
(get-model)