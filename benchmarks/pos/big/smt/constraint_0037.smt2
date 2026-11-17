(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.a6[0] -> h1_a6_0
;   h1.a8[0][0] -> h1_a8_0_0
;   h1.a8[0][1] -> h1_a8_0_1
;   h1.a8[0][2] -> h1_a8_0_2
;   h1.a8[0][3] -> h1_a8_0_3
;   h1.a8[1][0] -> h1_a8_1_0
;   h1.a8[1][1] -> h1_a8_1_1
;   h1.a8[1][2] -> h1_a8_1_2
;   h1.a8[1][3] -> h1_a8_1_3
;   h1.a8[2][0] -> h1_a8_2_0
;   h1.a8[2][1] -> h1_a8_2_1
;   h1.a8[2][2] -> h1_a8_2_2
;   h1.a8[2][3] -> h1_a8_2_3
;   h1.h11.a14[0] -> h1_h11_a14_0
;   h1.h11.a14[1] -> h1_h11_a14_1
;   h1.h11.a14[2] -> h1_h11_a14_2
;   h1.h11.a14[3] -> h1_h11_a14_3
;   h1.h11.a14[4] -> h1_h11_a14_4
;   h1.h2.i3 -> h1_h2_i3
;   h1.h2.i4 -> h1_h2_i4
;   h1.h2.i5 -> h1_h2_i5

; Variable declarations
(declare-fun h1_a6_0 () Int)
(declare-fun h1_a8_0_0 () Int)
(declare-fun h1_a8_0_1 () Int)
(declare-fun h1_a8_0_2 () Int)
(declare-fun h1_a8_0_3 () Int)
(declare-fun h1_a8_1_0 () Int)
(declare-fun h1_a8_1_1 () Int)
(declare-fun h1_a8_1_2 () Int)
(declare-fun h1_a8_1_3 () Int)
(declare-fun h1_a8_2_0 () Int)
(declare-fun h1_a8_2_1 () Int)
(declare-fun h1_a8_2_2 () Int)
(declare-fun h1_a8_2_3 () Int)
(declare-fun h1_h11_a14_0 () Int)
(declare-fun h1_h11_a14_1 () Int)
(declare-fun h1_h11_a14_2 () Int)
(declare-fun h1_h11_a14_3 () Int)
(declare-fun h1_h11_a14_4 () Int)
(declare-fun h1_h2_i3 () Int)
(declare-fun h1_h2_i4 () Int)
(declare-fun h1_h2_i5 () Int)

; Domain constraints
(assert (and (<= 14 h1_a6_0) (<= h1_a6_0 952)))
(assert (and (<= 206 h1_a8_0_0) (<= h1_a8_0_0 899)))
(assert (and (<= 206 h1_a8_0_1) (<= h1_a8_0_1 899)))
(assert (and (<= 206 h1_a8_0_2) (<= h1_a8_0_2 899)))
(assert (and (<= 206 h1_a8_0_3) (<= h1_a8_0_3 899)))
(assert (and (<= 206 h1_a8_1_0) (<= h1_a8_1_0 899)))
(assert (and (<= 206 h1_a8_1_1) (<= h1_a8_1_1 899)))
(assert (and (<= 206 h1_a8_1_2) (<= h1_a8_1_2 899)))
(assert (and (<= 206 h1_a8_1_3) (<= h1_a8_1_3 899)))
(assert (and (<= 206 h1_a8_2_0) (<= h1_a8_2_0 899)))
(assert (and (<= 206 h1_a8_2_1) (<= h1_a8_2_1 899)))
(assert (and (<= 206 h1_a8_2_2) (<= h1_a8_2_2 899)))
(assert (and (<= 206 h1_a8_2_3) (<= h1_a8_2_3 899)))
(assert (and (<= 121 h1_h11_a14_0) (<= h1_h11_a14_0 709)))
(assert (and (<= 121 h1_h11_a14_1) (<= h1_h11_a14_1 709)))
(assert (and (<= 121 h1_h11_a14_2) (<= h1_h11_a14_2 709)))
(assert (and (<= 121 h1_h11_a14_3) (<= h1_h11_a14_3 709)))
(assert (and (<= 121 h1_h11_a14_4) (<= h1_h11_a14_4 709)))
(assert (or (= h1_h2_i3 168) (= h1_h2_i3 759) (= h1_h2_i3 940)))
(assert (and (<= 56 h1_h2_i4) (<= h1_h2_i4 845)))
(assert (and (<= 312 h1_h2_i5) (<= h1_h2_i5 707)))

; Formula constraint
(assert (=> (or (=> (<= (* 99 h1_a8_1_2) (+ (* 56 h1_a8_2_0) (- 10 h1_a8_0_3))) (> (* 2 h1_h11_a14_2) h1_h11_a14_2)) (<= 69 -41)) (not (not (= (* -48 h1_a8_0_1) (* -52 h1_h11_a14_1))))))

(check-sat)
(get-model)