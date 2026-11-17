(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a12[0][0] -> a12_0_0
;   a12[0][1] -> a12_0_1
;   a12[0][2] -> a12_0_2
;   a12[0][3] -> a12_0_3
;   a12[0][4] -> a12_0_4
;   a12[1][0] -> a12_1_0
;   a12[1][1] -> a12_1_1
;   a12[1][2] -> a12_1_2
;   a12[1][3] -> a12_1_3
;   a12[1][4] -> a12_1_4
;   a1[0] -> a1_0
;   a1[1] -> a1_1
;   a1[2] -> a1_2
;   a1[3] -> a1_3
;   a1[4] -> a1_4
;   a1[5] -> a1_5
;   a3[0][0][0] -> a3_0_0_0
;   a3[0][0][1] -> a3_0_0_1
;   a3[0][0][2] -> a3_0_0_2
;   a3[0][0][3] -> a3_0_0_3
;   a3[0][0][4] -> a3_0_0_4
;   a3[0][0][5] -> a3_0_0_5
;   a3[1][0][0] -> a3_1_0_0
;   a3[1][0][1] -> a3_1_0_1
;   a3[1][0][2] -> a3_1_0_2
;   a3[1][0][3] -> a3_1_0_3
;   a3[1][0][4] -> a3_1_0_4
;   a3[1][0][5] -> a3_1_0_5
;   h15.a16[0] -> h15_a16_0
;   h15.a16[1] -> h15_a16_1
;   h15.a16[2] -> h15_a16_2
;   h15.h18.i19 -> h15_h18_i19
;   h15.h18.i20 -> h15_h18_i20
;   h15.i21 -> h15_i21
;   h7.a8[0] -> h7_a8_0
;   h7.a8[1] -> h7_a8_1
;   h7.a8[2] -> h7_a8_2
;   h7.a8[3] -> h7_a8_3
;   h7.a8[4] -> h7_a8_4

; Variable declarations
(declare-fun a12_0_0 () Int)
(declare-fun a12_0_1 () Int)
(declare-fun a12_0_2 () Int)
(declare-fun a12_0_3 () Int)
(declare-fun a12_0_4 () Int)
(declare-fun a12_1_0 () Int)
(declare-fun a12_1_1 () Int)
(declare-fun a12_1_2 () Int)
(declare-fun a12_1_3 () Int)
(declare-fun a12_1_4 () Int)
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)
(declare-fun a1_2 () Int)
(declare-fun a1_3 () Int)
(declare-fun a1_4 () Int)
(declare-fun a1_5 () Int)
(declare-fun a3_0_0_0 () Int)
(declare-fun a3_0_0_1 () Int)
(declare-fun a3_0_0_2 () Int)
(declare-fun a3_0_0_3 () Int)
(declare-fun a3_0_0_4 () Int)
(declare-fun a3_0_0_5 () Int)
(declare-fun a3_1_0_0 () Int)
(declare-fun a3_1_0_1 () Int)
(declare-fun a3_1_0_2 () Int)
(declare-fun a3_1_0_3 () Int)
(declare-fun a3_1_0_4 () Int)
(declare-fun a3_1_0_5 () Int)
(declare-fun h15_a16_0 () Int)
(declare-fun h15_a16_1 () Int)
(declare-fun h15_a16_2 () Int)
(declare-fun h15_h18_i19 () Int)
(declare-fun h15_h18_i20 () Int)
(declare-fun h15_i21 () Int)
(declare-fun h7_a8_0 () Int)
(declare-fun h7_a8_1 () Int)
(declare-fun h7_a8_2 () Int)
(declare-fun h7_a8_3 () Int)
(declare-fun h7_a8_4 () Int)

; Domain constraints
(assert (and (<= 20 a12_0_0) (<= a12_0_0 822)))
(assert (and (<= 20 a12_0_1) (<= a12_0_1 822)))
(assert (and (<= 20 a12_0_2) (<= a12_0_2 822)))
(assert (and (<= 20 a12_0_3) (<= a12_0_3 822)))
(assert (and (<= 20 a12_0_4) (<= a12_0_4 822)))
(assert (and (<= 20 a12_1_0) (<= a12_1_0 822)))
(assert (and (<= 20 a12_1_1) (<= a12_1_1 822)))
(assert (and (<= 20 a12_1_2) (<= a12_1_2 822)))
(assert (and (<= 20 a12_1_3) (<= a12_1_3 822)))
(assert (and (<= 20 a12_1_4) (<= a12_1_4 822)))
(assert (or (= a1_0 26) (= a1_0 351) (= a1_0 366) (= a1_0 827)))
(assert (or (= a1_1 26) (= a1_1 351) (= a1_1 366) (= a1_1 827)))
(assert (or (= a1_2 26) (= a1_2 351) (= a1_2 366) (= a1_2 827)))
(assert (or (= a1_3 26) (= a1_3 351) (= a1_3 366) (= a1_3 827)))
(assert (or (= a1_4 26) (= a1_4 351) (= a1_4 366) (= a1_4 827)))
(assert (or (= a1_5 26) (= a1_5 351) (= a1_5 366) (= a1_5 827)))
(assert (and (<= 317 a3_0_0_0) (<= a3_0_0_0 443)))
(assert (and (<= 317 a3_0_0_1) (<= a3_0_0_1 443)))
(assert (and (<= 317 a3_0_0_2) (<= a3_0_0_2 443)))
(assert (and (<= 317 a3_0_0_3) (<= a3_0_0_3 443)))
(assert (and (<= 317 a3_0_0_4) (<= a3_0_0_4 443)))
(assert (and (<= 317 a3_0_0_5) (<= a3_0_0_5 443)))
(assert (and (<= 317 a3_1_0_0) (<= a3_1_0_0 443)))
(assert (and (<= 317 a3_1_0_1) (<= a3_1_0_1 443)))
(assert (and (<= 317 a3_1_0_2) (<= a3_1_0_2 443)))
(assert (and (<= 317 a3_1_0_3) (<= a3_1_0_3 443)))
(assert (and (<= 317 a3_1_0_4) (<= a3_1_0_4 443)))
(assert (and (<= 317 a3_1_0_5) (<= a3_1_0_5 443)))
(assert (and (<= 212 h15_a16_0) (<= h15_a16_0 274)))
(assert (and (<= 212 h15_a16_1) (<= h15_a16_1 274)))
(assert (and (<= 212 h15_a16_2) (<= h15_a16_2 274)))
(assert (and (<= 501 h15_h18_i19) (<= h15_h18_i19 678)))
(assert (or (= h15_h18_i20 43) (= h15_h18_i20 829)))
(assert (and (<= 489 h15_i21) (<= h15_i21 720)))
(assert (and (<= 247 h7_a8_0) (<= h7_a8_0 499)))
(assert (and (<= 247 h7_a8_1) (<= h7_a8_1 499)))
(assert (and (<= 247 h7_a8_2) (<= h7_a8_2 499)))
(assert (and (<= 247 h7_a8_3) (<= h7_a8_3 499)))
(assert (and (<= 247 h7_a8_4) (<= h7_a8_4 499)))

; Formula constraint
(assert (=> (>= a1_5 46) (and (= (+ h7_a8_2 a12_0_3) 49) (not (not (= (* -90 a3_0_0_4) (+ (+ h7_a8_3 a3_0_0_2) h7_a8_0)))))))

(check-sat)
(get-model)