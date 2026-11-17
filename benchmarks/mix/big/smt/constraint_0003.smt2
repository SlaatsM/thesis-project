(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.h2.a3[0] -> h1_h2_a3_0
;   h1.h2.a3[1] -> h1_h2_a3_1
;   h1.h2.a3[2] -> h1_h2_a3_2
;   h1.h2.a3[3] -> h1_h2_a3_3
;   h1.h2.a3[4] -> h1_h2_a3_4
;   h1.h2.i5 -> h1_h2_i5
;   h6.a7[0] -> h6_a7_0
;   h6.a7[1] -> h6_a7_1
;   h6.a7[2] -> h6_a7_2
;   h6.a7[3] -> h6_a7_3
;   h6.a7[4] -> h6_a7_4
;   h6.a7[5] -> h6_a7_5
;   h6.h13.a17[0] -> h6_h13_a17_0
;   h6.h13.a17[1] -> h6_h13_a17_1
;   h6.h13.i16 -> h6_h13_i16
;   h6.h9.a11[0] -> h6_h9_a11_0
;   h6.h9.a11[1] -> h6_h9_a11_1
;   h6.h9.a11[2] -> h6_h9_a11_2
;   h6.h9.a11[3] -> h6_h9_a11_3
;   h6.h9.a11[4] -> h6_h9_a11_4
;   h6.h9.a11[5] -> h6_h9_a11_5
;   h6.h9.i10 -> h6_h9_i10
;   h6.i19 -> h6_i19
;   i20
;   i21
;   i22

; Variable declarations
(declare-fun h1_h2_a3_0 () Int)
(declare-fun h1_h2_a3_1 () Int)
(declare-fun h1_h2_a3_2 () Int)
(declare-fun h1_h2_a3_3 () Int)
(declare-fun h1_h2_a3_4 () Int)
(declare-fun h1_h2_i5 () Int)
(declare-fun h6_a7_0 () Int)
(declare-fun h6_a7_1 () Int)
(declare-fun h6_a7_2 () Int)
(declare-fun h6_a7_3 () Int)
(declare-fun h6_a7_4 () Int)
(declare-fun h6_a7_5 () Int)
(declare-fun h6_h13_a17_0 () Int)
(declare-fun h6_h13_a17_1 () Int)
(declare-fun h6_h13_i16 () Int)
(declare-fun h6_h9_a11_0 () Int)
(declare-fun h6_h9_a11_1 () Int)
(declare-fun h6_h9_a11_2 () Int)
(declare-fun h6_h9_a11_3 () Int)
(declare-fun h6_h9_a11_4 () Int)
(declare-fun h6_h9_a11_5 () Int)
(declare-fun h6_h9_i10 () Int)
(declare-fun h6_i19 () Int)
(declare-fun i20 () Int)
(declare-fun i21 () Int)
(declare-fun i22 () Int)

; Domain constraints
(assert (or (= h1_h2_a3_0 -286) (= h1_h2_a3_0 -86) (= h1_h2_a3_0 432) (= h1_h2_a3_0 465) (= h1_h2_a3_0 782)))
(assert (or (= h1_h2_a3_1 -286) (= h1_h2_a3_1 -86) (= h1_h2_a3_1 432) (= h1_h2_a3_1 465) (= h1_h2_a3_1 782)))
(assert (or (= h1_h2_a3_2 -286) (= h1_h2_a3_2 -86) (= h1_h2_a3_2 432) (= h1_h2_a3_2 465) (= h1_h2_a3_2 782)))
(assert (or (= h1_h2_a3_3 -286) (= h1_h2_a3_3 -86) (= h1_h2_a3_3 432) (= h1_h2_a3_3 465) (= h1_h2_a3_3 782)))
(assert (or (= h1_h2_a3_4 -286) (= h1_h2_a3_4 -86) (= h1_h2_a3_4 432) (= h1_h2_a3_4 465) (= h1_h2_a3_4 782)))
(assert (or (= h1_h2_i5 80) (= h1_h2_i5 232) (= h1_h2_i5 411)))
(assert (and (<= -892 h6_a7_0) (<= h6_a7_0 -180)))
(assert (and (<= -892 h6_a7_1) (<= h6_a7_1 -180)))
(assert (and (<= -892 h6_a7_2) (<= h6_a7_2 -180)))
(assert (and (<= -892 h6_a7_3) (<= h6_a7_3 -180)))
(assert (and (<= -892 h6_a7_4) (<= h6_a7_4 -180)))
(assert (and (<= -892 h6_a7_5) (<= h6_a7_5 -180)))
(assert (and (<= -684 h6_h13_a17_0) (<= h6_h13_a17_0 -615)))
(assert (and (<= -684 h6_h13_a17_1) (<= h6_h13_a17_1 -615)))
(assert (or (= h6_h13_i16 -276) (= h6_h13_i16 582) (= h6_h13_i16 980)))
(assert (and (<= -711 h6_h9_a11_0) (<= h6_h9_a11_0 940)))
(assert (and (<= -711 h6_h9_a11_1) (<= h6_h9_a11_1 940)))
(assert (and (<= -711 h6_h9_a11_2) (<= h6_h9_a11_2 940)))
(assert (and (<= -711 h6_h9_a11_3) (<= h6_h9_a11_3 940)))
(assert (and (<= -711 h6_h9_a11_4) (<= h6_h9_a11_4 940)))
(assert (and (<= -711 h6_h9_a11_5) (<= h6_h9_a11_5 940)))
(assert (or (= h6_h9_i10 78) (= h6_h9_i10 367) (= h6_h9_i10 768)))
(assert (or (= h6_i19 -529) (= h6_i19 538) (= h6_i19 616)))
(assert (and (<= 323 i20) (<= i20 911)))
(assert (or (= i21 -598) (= i21 -228) (= i21 -29) (= i21 792)))
(assert (or (= i22 -708) (= i22 6) (= i22 481) (= i22 483) (= i22 935)))

; Formula constraint
(assert (not (= h1_h2_a3_2 h6_a7_3)))

(check-sat)
(get-model)