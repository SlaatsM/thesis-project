(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.a2[0] -> h1_a2_0
;   h1.a2[1] -> h1_a2_1
;   h1.a2[2] -> h1_a2_2
;   h1.i4 -> h1_i4
;   h1.i5 -> h1_i5
;   h6.a13[0][0] -> h6_a13_0_0
;   h6.a13[1][0] -> h6_a13_1_0
;   h6.a13[2][0] -> h6_a13_2_0
;   h6.a13[3][0] -> h6_a13_3_0
;   h6.a13[4][0] -> h6_a13_4_0
;   h6.h10.i11 -> h6_h10_i11
;   h6.h10.i12 -> h6_h10_i12
;   h6.h7.i9 -> h6_h7_i9
;   h6.i16 -> h6_i16

; Variable declarations
(declare-fun h1_a2_0 () Int)
(declare-fun h1_a2_1 () Int)
(declare-fun h1_a2_2 () Int)
(declare-fun h1_i4 () Int)
(declare-fun h1_i5 () Int)
(declare-fun h6_a13_0_0 () Int)
(declare-fun h6_a13_1_0 () Int)
(declare-fun h6_a13_2_0 () Int)
(declare-fun h6_a13_3_0 () Int)
(declare-fun h6_a13_4_0 () Int)
(declare-fun h6_h10_i11 () Int)
(declare-fun h6_h10_i12 () Int)
(declare-fun h6_h7_i9 () Int)
(declare-fun h6_i16 () Int)

; Domain constraints
(assert (and (<= 19 h1_a2_0) (<= h1_a2_0 39)))
(assert (and (<= 19 h1_a2_1) (<= h1_a2_1 39)))
(assert (and (<= 19 h1_a2_2) (<= h1_a2_2 39)))
(assert (and (<= 54 h1_i4) (<= h1_i4 544)))
(assert (and (<= 238 h1_i5) (<= h1_i5 256)))
(assert (and (<= 70 h6_a13_0_0) (<= h6_a13_0_0 389)))
(assert (and (<= 70 h6_a13_1_0) (<= h6_a13_1_0 389)))
(assert (and (<= 70 h6_a13_2_0) (<= h6_a13_2_0 389)))
(assert (and (<= 70 h6_a13_3_0) (<= h6_a13_3_0 389)))
(assert (and (<= 70 h6_a13_4_0) (<= h6_a13_4_0 389)))
(assert (and (<= 156 h6_h10_i11) (<= h6_h10_i11 517)))
(assert (and (<= 86 h6_h10_i12) (<= h6_h10_i12 948)))
(assert (and (<= 118 h6_h7_i9) (<= h6_h7_i9 257)))
(assert (and (<= 53 h6_i16) (<= h6_i16 591)))

; Formula constraint
(assert (not (= 60 h6_i16)))

(check-sat)
(get-model)