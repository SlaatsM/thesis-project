(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a6[0][0] -> a6_0_0
;   a6[0][1] -> a6_0_1
;   a6[0][2] -> a6_0_2
;   a6[0][3] -> a6_0_3
;   a6[0][4] -> a6_0_4
;   a6[1][0] -> a6_1_0
;   a6[1][1] -> a6_1_1
;   a6[1][2] -> a6_1_2
;   a6[1][3] -> a6_1_3
;   a6[1][4] -> a6_1_4
;   a6[2][0] -> a6_2_0
;   a6[2][1] -> a6_2_1
;   a6[2][2] -> a6_2_2
;   a6[2][3] -> a6_2_3
;   a6[2][4] -> a6_2_4
;   h1.i2 -> h1_i2
;   h1.i3 -> h1_i3
;   h1.i4 -> h1_i4
;   i5

; Variable declarations
(declare-fun a6_0_0 () Int)
(declare-fun a6_0_1 () Int)
(declare-fun a6_0_2 () Int)
(declare-fun a6_0_3 () Int)
(declare-fun a6_0_4 () Int)
(declare-fun a6_1_0 () Int)
(declare-fun a6_1_1 () Int)
(declare-fun a6_1_2 () Int)
(declare-fun a6_1_3 () Int)
(declare-fun a6_1_4 () Int)
(declare-fun a6_2_0 () Int)
(declare-fun a6_2_1 () Int)
(declare-fun a6_2_2 () Int)
(declare-fun a6_2_3 () Int)
(declare-fun a6_2_4 () Int)
(declare-fun h1_i2 () Int)
(declare-fun h1_i3 () Int)
(declare-fun h1_i4 () Int)
(declare-fun i5 () Int)

; Domain constraints
(assert (and (<= 598 a6_0_0) (<= a6_0_0 746)))
(assert (and (<= 598 a6_0_1) (<= a6_0_1 746)))
(assert (and (<= 598 a6_0_2) (<= a6_0_2 746)))
(assert (and (<= 598 a6_0_3) (<= a6_0_3 746)))
(assert (and (<= 598 a6_0_4) (<= a6_0_4 746)))
(assert (and (<= 598 a6_1_0) (<= a6_1_0 746)))
(assert (and (<= 598 a6_1_1) (<= a6_1_1 746)))
(assert (and (<= 598 a6_1_2) (<= a6_1_2 746)))
(assert (and (<= 598 a6_1_3) (<= a6_1_3 746)))
(assert (and (<= 598 a6_1_4) (<= a6_1_4 746)))
(assert (and (<= 598 a6_2_0) (<= a6_2_0 746)))
(assert (and (<= 598 a6_2_1) (<= a6_2_1 746)))
(assert (and (<= 598 a6_2_2) (<= a6_2_2 746)))
(assert (and (<= 598 a6_2_3) (<= a6_2_3 746)))
(assert (and (<= 598 a6_2_4) (<= a6_2_4 746)))
(assert (and (<= 537 h1_i2) (<= h1_i2 732)))
(assert (and (<= 786 h1_i3) (<= h1_i3 852)))
(assert (or (= h1_i4 779) (= h1_i4 920) (= h1_i4 962)))
(assert (and (<= 51 i5) (<= i5 818)))

; Formula constraint
(assert (>= a6_1_3 a6_2_0))

(check-sat)
(get-model)