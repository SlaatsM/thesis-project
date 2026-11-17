(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a13[0] -> a13_0
;   a13[1] -> a13_1
;   a16[0] -> a16_0
;   a16[1] -> a16_1
;   a16[2] -> a16_2
;   a16[3] -> a16_3
;   h2.a8[0][0] -> h2_a8_0_0
;   h2.a8[0][1] -> h2_a8_0_1
;   h2.a8[0][2] -> h2_a8_0_2
;   h2.a8[0][3] -> h2_a8_0_3
;   h2.a8[0][4] -> h2_a8_0_4
;   h2.a8[0][5] -> h2_a8_0_5
;   h2.a8[1][0] -> h2_a8_1_0
;   h2.a8[1][1] -> h2_a8_1_1
;   h2.a8[1][2] -> h2_a8_1_2
;   h2.a8[1][3] -> h2_a8_1_3
;   h2.a8[1][4] -> h2_a8_1_4
;   h2.a8[1][5] -> h2_a8_1_5
;   h2.a8[2][0] -> h2_a8_2_0
;   h2.a8[2][1] -> h2_a8_2_1
;   h2.a8[2][2] -> h2_a8_2_2
;   h2.a8[2][3] -> h2_a8_2_3
;   h2.a8[2][4] -> h2_a8_2_4
;   h2.a8[2][5] -> h2_a8_2_5
;   h2.a8[3][0] -> h2_a8_3_0
;   h2.a8[3][1] -> h2_a8_3_1
;   h2.a8[3][2] -> h2_a8_3_2
;   h2.a8[3][3] -> h2_a8_3_3
;   h2.a8[3][4] -> h2_a8_3_4
;   h2.a8[3][5] -> h2_a8_3_5
;   h2.h3.a4[0] -> h2_h3_a4_0
;   h2.h3.a4[1] -> h2_h3_a4_1
;   h2.h3.a4[2] -> h2_h3_a4_2
;   h2.h3.a4[3] -> h2_h3_a4_3
;   h2.h3.a4[4] -> h2_h3_a4_4
;   h2.h3.a4[5] -> h2_h3_a4_5
;   h2.h3.i7 -> h2_h3_i7
;   h2.i11 -> h2_i11
;   h2.i12 -> h2_i12
;   i1
;   i15

; Variable declarations
(declare-fun a13_0 () Int)
(declare-fun a13_1 () Int)
(declare-fun a16_0 () Int)
(declare-fun a16_1 () Int)
(declare-fun a16_2 () Int)
(declare-fun a16_3 () Int)
(declare-fun h2_a8_0_0 () Int)
(declare-fun h2_a8_0_1 () Int)
(declare-fun h2_a8_0_2 () Int)
(declare-fun h2_a8_0_3 () Int)
(declare-fun h2_a8_0_4 () Int)
(declare-fun h2_a8_0_5 () Int)
(declare-fun h2_a8_1_0 () Int)
(declare-fun h2_a8_1_1 () Int)
(declare-fun h2_a8_1_2 () Int)
(declare-fun h2_a8_1_3 () Int)
(declare-fun h2_a8_1_4 () Int)
(declare-fun h2_a8_1_5 () Int)
(declare-fun h2_a8_2_0 () Int)
(declare-fun h2_a8_2_1 () Int)
(declare-fun h2_a8_2_2 () Int)
(declare-fun h2_a8_2_3 () Int)
(declare-fun h2_a8_2_4 () Int)
(declare-fun h2_a8_2_5 () Int)
(declare-fun h2_a8_3_0 () Int)
(declare-fun h2_a8_3_1 () Int)
(declare-fun h2_a8_3_2 () Int)
(declare-fun h2_a8_3_3 () Int)
(declare-fun h2_a8_3_4 () Int)
(declare-fun h2_a8_3_5 () Int)
(declare-fun h2_h3_a4_0 () Int)
(declare-fun h2_h3_a4_1 () Int)
(declare-fun h2_h3_a4_2 () Int)
(declare-fun h2_h3_a4_3 () Int)
(declare-fun h2_h3_a4_4 () Int)
(declare-fun h2_h3_a4_5 () Int)
(declare-fun h2_h3_i7 () Int)
(declare-fun h2_i11 () Int)
(declare-fun h2_i12 () Int)
(declare-fun i1 () Int)
(declare-fun i15 () Int)

; Domain constraints
(assert (and (<= 338 a13_0) (<= a13_0 412)))
(assert (and (<= 338 a13_1) (<= a13_1 412)))
(assert (and (<= 419 a16_0) (<= a16_0 839)))
(assert (and (<= 419 a16_1) (<= a16_1 839)))
(assert (and (<= 419 a16_2) (<= a16_2 839)))
(assert (and (<= 419 a16_3) (<= a16_3 839)))
(assert (and (<= 918 h2_a8_0_0) (<= h2_a8_0_0 947)))
(assert (and (<= 918 h2_a8_0_1) (<= h2_a8_0_1 947)))
(assert (and (<= 918 h2_a8_0_2) (<= h2_a8_0_2 947)))
(assert (and (<= 918 h2_a8_0_3) (<= h2_a8_0_3 947)))
(assert (and (<= 918 h2_a8_0_4) (<= h2_a8_0_4 947)))
(assert (and (<= 918 h2_a8_0_5) (<= h2_a8_0_5 947)))
(assert (and (<= 918 h2_a8_1_0) (<= h2_a8_1_0 947)))
(assert (and (<= 918 h2_a8_1_1) (<= h2_a8_1_1 947)))
(assert (and (<= 918 h2_a8_1_2) (<= h2_a8_1_2 947)))
(assert (and (<= 918 h2_a8_1_3) (<= h2_a8_1_3 947)))
(assert (and (<= 918 h2_a8_1_4) (<= h2_a8_1_4 947)))
(assert (and (<= 918 h2_a8_1_5) (<= h2_a8_1_5 947)))
(assert (and (<= 918 h2_a8_2_0) (<= h2_a8_2_0 947)))
(assert (and (<= 918 h2_a8_2_1) (<= h2_a8_2_1 947)))
(assert (and (<= 918 h2_a8_2_2) (<= h2_a8_2_2 947)))
(assert (and (<= 918 h2_a8_2_3) (<= h2_a8_2_3 947)))
(assert (and (<= 918 h2_a8_2_4) (<= h2_a8_2_4 947)))
(assert (and (<= 918 h2_a8_2_5) (<= h2_a8_2_5 947)))
(assert (and (<= 918 h2_a8_3_0) (<= h2_a8_3_0 947)))
(assert (and (<= 918 h2_a8_3_1) (<= h2_a8_3_1 947)))
(assert (and (<= 918 h2_a8_3_2) (<= h2_a8_3_2 947)))
(assert (and (<= 918 h2_a8_3_3) (<= h2_a8_3_3 947)))
(assert (and (<= 918 h2_a8_3_4) (<= h2_a8_3_4 947)))
(assert (and (<= 918 h2_a8_3_5) (<= h2_a8_3_5 947)))
(assert (and (<= 100 h2_h3_a4_0) (<= h2_h3_a4_0 691)))
(assert (and (<= 100 h2_h3_a4_1) (<= h2_h3_a4_1 691)))
(assert (and (<= 100 h2_h3_a4_2) (<= h2_h3_a4_2 691)))
(assert (and (<= 100 h2_h3_a4_3) (<= h2_h3_a4_3 691)))
(assert (and (<= 100 h2_h3_a4_4) (<= h2_h3_a4_4 691)))
(assert (and (<= 100 h2_h3_a4_5) (<= h2_h3_a4_5 691)))
(assert (and (<= 47 h2_h3_i7) (<= h2_h3_i7 571)))
(assert (and (<= 489 h2_i11) (<= h2_i11 738)))
(assert (or (and (<= 59 h2_i12) (<= h2_i12 784)) (= h2_i12 826)))
(assert (and (<= 2 i1) (<= i1 818)))
(assert (and (<= 278 i15) (<= i15 315)))

; Formula constraint
(assert (or (=> (not (> h2_a8_3_4 51)) (<= h2_a8_0_5 h2_a8_3_5)) (and (not (not (= 64 a13_0))) (not (< -6 h2_a8_2_5)))))

(check-sat)
(get-model)