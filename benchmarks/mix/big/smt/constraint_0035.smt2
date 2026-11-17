(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a11[0][0][0] -> a11_0_0_0
;   a11[0][1][0] -> a11_0_1_0
;   a11[0][2][0] -> a11_0_2_0
;   a11[1][0][0] -> a11_1_0_0
;   a11[1][1][0] -> a11_1_1_0
;   a11[1][2][0] -> a11_1_2_0
;   a11[2][0][0] -> a11_2_0_0
;   a11[2][1][0] -> a11_2_1_0
;   a11[2][2][0] -> a11_2_2_0
;   a1[0].a3[0] -> a1_0_a3_0
;   a1[0].a3[1] -> a1_0_a3_1
;   a1[0].a3[2] -> a1_0_a3_2
;   a1[0].a3[3] -> a1_0_a3_3
;   a1[0].a3[4] -> a1_0_a3_4
;   a1[0].i5 -> a1_0_i5
;   a1[0].i6 -> a1_0_i6
;   a1[0].i7 -> a1_0_i7
;   a1[1].a3[0] -> a1_1_a3_0
;   a1[1].a3[1] -> a1_1_a3_1
;   a1[1].a3[2] -> a1_1_a3_2
;   a1[1].a3[3] -> a1_1_a3_3
;   a1[1].a3[4] -> a1_1_a3_4
;   a1[1].i5 -> a1_1_i5
;   a1[1].i6 -> a1_1_i6
;   a1[1].i7 -> a1_1_i7
;   a1[2].a3[0] -> a1_2_a3_0
;   a1[2].a3[1] -> a1_2_a3_1
;   a1[2].a3[2] -> a1_2_a3_2
;   a1[2].a3[3] -> a1_2_a3_3
;   a1[2].a3[4] -> a1_2_a3_4
;   a1[2].i5 -> a1_2_i5
;   a1[2].i6 -> a1_2_i6
;   a1[2].i7 -> a1_2_i7
;   a1[3].a3[0] -> a1_3_a3_0
;   a1[3].a3[1] -> a1_3_a3_1
;   a1[3].a3[2] -> a1_3_a3_2
;   a1[3].a3[3] -> a1_3_a3_3
;   a1[3].a3[4] -> a1_3_a3_4
;   a1[3].i5 -> a1_3_i5
;   a1[3].i6 -> a1_3_i6
;   a1[3].i7 -> a1_3_i7
;   a1[4].a3[0] -> a1_4_a3_0
;   a1[4].a3[1] -> a1_4_a3_1
;   a1[4].a3[2] -> a1_4_a3_2
;   a1[4].a3[3] -> a1_4_a3_3
;   a1[4].a3[4] -> a1_4_a3_4
;   a1[4].i5 -> a1_4_i5
;   a1[4].i6 -> a1_4_i6
;   a1[4].i7 -> a1_4_i7
;   a1[5].a3[0] -> a1_5_a3_0
;   a1[5].a3[1] -> a1_5_a3_1
;   a1[5].a3[2] -> a1_5_a3_2
;   a1[5].a3[3] -> a1_5_a3_3
;   a1[5].a3[4] -> a1_5_a3_4
;   a1[5].i5 -> a1_5_i5
;   a1[5].i6 -> a1_5_i6
;   a1[5].i7 -> a1_5_i7
;   a9[0] -> a9_0
;   a9[1] -> a9_1
;   i8

; Variable declarations
(declare-fun a11_0_0_0 () Int)
(declare-fun a11_0_1_0 () Int)
(declare-fun a11_0_2_0 () Int)
(declare-fun a11_1_0_0 () Int)
(declare-fun a11_1_1_0 () Int)
(declare-fun a11_1_2_0 () Int)
(declare-fun a11_2_0_0 () Int)
(declare-fun a11_2_1_0 () Int)
(declare-fun a11_2_2_0 () Int)
(declare-fun a1_0_a3_0 () Int)
(declare-fun a1_0_a3_1 () Int)
(declare-fun a1_0_a3_2 () Int)
(declare-fun a1_0_a3_3 () Int)
(declare-fun a1_0_a3_4 () Int)
(declare-fun a1_0_i5 () Int)
(declare-fun a1_0_i6 () Int)
(declare-fun a1_0_i7 () Int)
(declare-fun a1_1_a3_0 () Int)
(declare-fun a1_1_a3_1 () Int)
(declare-fun a1_1_a3_2 () Int)
(declare-fun a1_1_a3_3 () Int)
(declare-fun a1_1_a3_4 () Int)
(declare-fun a1_1_i5 () Int)
(declare-fun a1_1_i6 () Int)
(declare-fun a1_1_i7 () Int)
(declare-fun a1_2_a3_0 () Int)
(declare-fun a1_2_a3_1 () Int)
(declare-fun a1_2_a3_2 () Int)
(declare-fun a1_2_a3_3 () Int)
(declare-fun a1_2_a3_4 () Int)
(declare-fun a1_2_i5 () Int)
(declare-fun a1_2_i6 () Int)
(declare-fun a1_2_i7 () Int)
(declare-fun a1_3_a3_0 () Int)
(declare-fun a1_3_a3_1 () Int)
(declare-fun a1_3_a3_2 () Int)
(declare-fun a1_3_a3_3 () Int)
(declare-fun a1_3_a3_4 () Int)
(declare-fun a1_3_i5 () Int)
(declare-fun a1_3_i6 () Int)
(declare-fun a1_3_i7 () Int)
(declare-fun a1_4_a3_0 () Int)
(declare-fun a1_4_a3_1 () Int)
(declare-fun a1_4_a3_2 () Int)
(declare-fun a1_4_a3_3 () Int)
(declare-fun a1_4_a3_4 () Int)
(declare-fun a1_4_i5 () Int)
(declare-fun a1_4_i6 () Int)
(declare-fun a1_4_i7 () Int)
(declare-fun a1_5_a3_0 () Int)
(declare-fun a1_5_a3_1 () Int)
(declare-fun a1_5_a3_2 () Int)
(declare-fun a1_5_a3_3 () Int)
(declare-fun a1_5_a3_4 () Int)
(declare-fun a1_5_i5 () Int)
(declare-fun a1_5_i6 () Int)
(declare-fun a1_5_i7 () Int)
(declare-fun a9_0 () Int)
(declare-fun a9_1 () Int)
(declare-fun i8 () Int)

; Domain constraints
(assert (and (<= -180 a11_0_0_0) (<= a11_0_0_0 73)))
(assert (and (<= -180 a11_0_1_0) (<= a11_0_1_0 73)))
(assert (and (<= -180 a11_0_2_0) (<= a11_0_2_0 73)))
(assert (and (<= -180 a11_1_0_0) (<= a11_1_0_0 73)))
(assert (and (<= -180 a11_1_1_0) (<= a11_1_1_0 73)))
(assert (and (<= -180 a11_1_2_0) (<= a11_1_2_0 73)))
(assert (and (<= -180 a11_2_0_0) (<= a11_2_0_0 73)))
(assert (and (<= -180 a11_2_1_0) (<= a11_2_1_0 73)))
(assert (and (<= -180 a11_2_2_0) (<= a11_2_2_0 73)))
(assert (and (<= -272 a1_0_a3_0) (<= a1_0_a3_0 300)))
(assert (and (<= -272 a1_0_a3_1) (<= a1_0_a3_1 300)))
(assert (and (<= -272 a1_0_a3_2) (<= a1_0_a3_2 300)))
(assert (and (<= -272 a1_0_a3_3) (<= a1_0_a3_3 300)))
(assert (and (<= -272 a1_0_a3_4) (<= a1_0_a3_4 300)))
(assert (or (= a1_0_i5 -294) (= a1_0_i5 225)))
(assert (and (<= -502 a1_0_i6) (<= a1_0_i6 552)))
(assert (and (<= 317 a1_0_i7) (<= a1_0_i7 984)))
(assert (and (<= -272 a1_1_a3_0) (<= a1_1_a3_0 300)))
(assert (and (<= -272 a1_1_a3_1) (<= a1_1_a3_1 300)))
(assert (and (<= -272 a1_1_a3_2) (<= a1_1_a3_2 300)))
(assert (and (<= -272 a1_1_a3_3) (<= a1_1_a3_3 300)))
(assert (and (<= -272 a1_1_a3_4) (<= a1_1_a3_4 300)))
(assert (or (= a1_1_i5 -294) (= a1_1_i5 225)))
(assert (and (<= -502 a1_1_i6) (<= a1_1_i6 552)))
(assert (and (<= 317 a1_1_i7) (<= a1_1_i7 984)))
(assert (and (<= -272 a1_2_a3_0) (<= a1_2_a3_0 300)))
(assert (and (<= -272 a1_2_a3_1) (<= a1_2_a3_1 300)))
(assert (and (<= -272 a1_2_a3_2) (<= a1_2_a3_2 300)))
(assert (and (<= -272 a1_2_a3_3) (<= a1_2_a3_3 300)))
(assert (and (<= -272 a1_2_a3_4) (<= a1_2_a3_4 300)))
(assert (or (= a1_2_i5 -294) (= a1_2_i5 225)))
(assert (and (<= -502 a1_2_i6) (<= a1_2_i6 552)))
(assert (and (<= 317 a1_2_i7) (<= a1_2_i7 984)))
(assert (and (<= -272 a1_3_a3_0) (<= a1_3_a3_0 300)))
(assert (and (<= -272 a1_3_a3_1) (<= a1_3_a3_1 300)))
(assert (and (<= -272 a1_3_a3_2) (<= a1_3_a3_2 300)))
(assert (and (<= -272 a1_3_a3_3) (<= a1_3_a3_3 300)))
(assert (and (<= -272 a1_3_a3_4) (<= a1_3_a3_4 300)))
(assert (or (= a1_3_i5 -294) (= a1_3_i5 225)))
(assert (and (<= -502 a1_3_i6) (<= a1_3_i6 552)))
(assert (and (<= 317 a1_3_i7) (<= a1_3_i7 984)))
(assert (and (<= -272 a1_4_a3_0) (<= a1_4_a3_0 300)))
(assert (and (<= -272 a1_4_a3_1) (<= a1_4_a3_1 300)))
(assert (and (<= -272 a1_4_a3_2) (<= a1_4_a3_2 300)))
(assert (and (<= -272 a1_4_a3_3) (<= a1_4_a3_3 300)))
(assert (and (<= -272 a1_4_a3_4) (<= a1_4_a3_4 300)))
(assert (or (= a1_4_i5 -294) (= a1_4_i5 225)))
(assert (and (<= -502 a1_4_i6) (<= a1_4_i6 552)))
(assert (and (<= 317 a1_4_i7) (<= a1_4_i7 984)))
(assert (and (<= -272 a1_5_a3_0) (<= a1_5_a3_0 300)))
(assert (and (<= -272 a1_5_a3_1) (<= a1_5_a3_1 300)))
(assert (and (<= -272 a1_5_a3_2) (<= a1_5_a3_2 300)))
(assert (and (<= -272 a1_5_a3_3) (<= a1_5_a3_3 300)))
(assert (and (<= -272 a1_5_a3_4) (<= a1_5_a3_4 300)))
(assert (or (= a1_5_i5 -294) (= a1_5_i5 225)))
(assert (and (<= -502 a1_5_i6) (<= a1_5_i6 552)))
(assert (and (<= 317 a1_5_i7) (<= a1_5_i7 984)))
(assert (and (<= -185 a9_0) (<= a9_0 3)))
(assert (and (<= -185 a9_1) (<= a9_1 3)))
(assert (and (<= 240 i8) (<= i8 480)))

; Formula constraint
(assert (= 17 a1_1_a3_4))

(check-sat)
(get-model)