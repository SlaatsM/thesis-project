(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0][0] -> a1_0_0
;   a1[0][1] -> a1_0_1
;   a1[0][2] -> a1_0_2
;   a1[0][3] -> a1_0_3
;   a1[0][4] -> a1_0_4
;   a1[0][5] -> a1_0_5
;   a1[1][0] -> a1_1_0
;   a1[1][1] -> a1_1_1
;   a1[1][2] -> a1_1_2
;   a1[1][3] -> a1_1_3
;   a1[1][4] -> a1_1_4
;   a1[1][5] -> a1_1_5
;   a1[2][0] -> a1_2_0
;   a1[2][1] -> a1_2_1
;   a1[2][2] -> a1_2_2
;   a1[2][3] -> a1_2_3
;   a1[2][4] -> a1_2_4
;   a1[2][5] -> a1_2_5
;   a1[3][0] -> a1_3_0
;   a1[3][1] -> a1_3_1
;   a1[3][2] -> a1_3_2
;   a1[3][3] -> a1_3_3
;   a1[3][4] -> a1_3_4
;   a1[3][5] -> a1_3_5
;   a5[0].a8[0] -> a5_0_a8_0
;   a5[0].a8[1] -> a5_0_a8_1
;   a5[0].i10 -> a5_0_i10
;   a5[0].i11 -> a5_0_i11
;   a5[0].i7 -> a5_0_i7
;   a5[1].a8[0] -> a5_1_a8_0
;   a5[1].a8[1] -> a5_1_a8_1
;   a5[1].i10 -> a5_1_i10
;   a5[1].i11 -> a5_1_i11
;   a5[1].i7 -> a5_1_i7
;   a5[2].a8[0] -> a5_2_a8_0
;   a5[2].a8[1] -> a5_2_a8_1
;   a5[2].i10 -> a5_2_i10
;   a5[2].i11 -> a5_2_i11
;   a5[2].i7 -> a5_2_i7
;   h12.i13 -> h12_i13
;   i4

; Variable declarations
(declare-fun a1_0_0 () Int)
(declare-fun a1_0_1 () Int)
(declare-fun a1_0_2 () Int)
(declare-fun a1_0_3 () Int)
(declare-fun a1_0_4 () Int)
(declare-fun a1_0_5 () Int)
(declare-fun a1_1_0 () Int)
(declare-fun a1_1_1 () Int)
(declare-fun a1_1_2 () Int)
(declare-fun a1_1_3 () Int)
(declare-fun a1_1_4 () Int)
(declare-fun a1_1_5 () Int)
(declare-fun a1_2_0 () Int)
(declare-fun a1_2_1 () Int)
(declare-fun a1_2_2 () Int)
(declare-fun a1_2_3 () Int)
(declare-fun a1_2_4 () Int)
(declare-fun a1_2_5 () Int)
(declare-fun a1_3_0 () Int)
(declare-fun a1_3_1 () Int)
(declare-fun a1_3_2 () Int)
(declare-fun a1_3_3 () Int)
(declare-fun a1_3_4 () Int)
(declare-fun a1_3_5 () Int)
(declare-fun a5_0_a8_0 () Int)
(declare-fun a5_0_a8_1 () Int)
(declare-fun a5_0_i10 () Int)
(declare-fun a5_0_i11 () Int)
(declare-fun a5_0_i7 () Int)
(declare-fun a5_1_a8_0 () Int)
(declare-fun a5_1_a8_1 () Int)
(declare-fun a5_1_i10 () Int)
(declare-fun a5_1_i11 () Int)
(declare-fun a5_1_i7 () Int)
(declare-fun a5_2_a8_0 () Int)
(declare-fun a5_2_a8_1 () Int)
(declare-fun a5_2_i10 () Int)
(declare-fun a5_2_i11 () Int)
(declare-fun a5_2_i7 () Int)
(declare-fun h12_i13 () Int)
(declare-fun i4 () Int)

; Domain constraints
(assert (and (<= 62 a1_0_0) (<= a1_0_0 376)))
(assert (and (<= 62 a1_0_1) (<= a1_0_1 376)))
(assert (and (<= 62 a1_0_2) (<= a1_0_2 376)))
(assert (and (<= 62 a1_0_3) (<= a1_0_3 376)))
(assert (and (<= 62 a1_0_4) (<= a1_0_4 376)))
(assert (and (<= 62 a1_0_5) (<= a1_0_5 376)))
(assert (and (<= 62 a1_1_0) (<= a1_1_0 376)))
(assert (and (<= 62 a1_1_1) (<= a1_1_1 376)))
(assert (and (<= 62 a1_1_2) (<= a1_1_2 376)))
(assert (and (<= 62 a1_1_3) (<= a1_1_3 376)))
(assert (and (<= 62 a1_1_4) (<= a1_1_4 376)))
(assert (and (<= 62 a1_1_5) (<= a1_1_5 376)))
(assert (and (<= 62 a1_2_0) (<= a1_2_0 376)))
(assert (and (<= 62 a1_2_1) (<= a1_2_1 376)))
(assert (and (<= 62 a1_2_2) (<= a1_2_2 376)))
(assert (and (<= 62 a1_2_3) (<= a1_2_3 376)))
(assert (and (<= 62 a1_2_4) (<= a1_2_4 376)))
(assert (and (<= 62 a1_2_5) (<= a1_2_5 376)))
(assert (and (<= 62 a1_3_0) (<= a1_3_0 376)))
(assert (and (<= 62 a1_3_1) (<= a1_3_1 376)))
(assert (and (<= 62 a1_3_2) (<= a1_3_2 376)))
(assert (and (<= 62 a1_3_3) (<= a1_3_3 376)))
(assert (and (<= 62 a1_3_4) (<= a1_3_4 376)))
(assert (and (<= 62 a1_3_5) (<= a1_3_5 376)))
(assert (and (<= 8 a5_0_a8_0) (<= a5_0_a8_0 402)))
(assert (and (<= 8 a5_0_a8_1) (<= a5_0_a8_1 402)))
(assert (and (<= 582 a5_0_i10) (<= a5_0_i10 917)))
(assert (and (<= 281 a5_0_i11) (<= a5_0_i11 637)))
(assert (or (= a5_0_i7 26) (and (<= 533 a5_0_i7) (<= a5_0_i7 659)) (= a5_0_i7 840)))
(assert (and (<= 8 a5_1_a8_0) (<= a5_1_a8_0 402)))
(assert (and (<= 8 a5_1_a8_1) (<= a5_1_a8_1 402)))
(assert (and (<= 582 a5_1_i10) (<= a5_1_i10 917)))
(assert (and (<= 281 a5_1_i11) (<= a5_1_i11 637)))
(assert (or (= a5_1_i7 26) (and (<= 533 a5_1_i7) (<= a5_1_i7 659)) (= a5_1_i7 840)))
(assert (and (<= 8 a5_2_a8_0) (<= a5_2_a8_0 402)))
(assert (and (<= 8 a5_2_a8_1) (<= a5_2_a8_1 402)))
(assert (and (<= 582 a5_2_i10) (<= a5_2_i10 917)))
(assert (and (<= 281 a5_2_i11) (<= a5_2_i11 637)))
(assert (or (= a5_2_i7 26) (and (<= 533 a5_2_i7) (<= a5_2_i7 659)) (= a5_2_i7 840)))
(assert (and (<= 89 h12_i13) (<= h12_i13 142)))
(assert (or (= i4 155) (= i4 499) (= i4 566) (= i4 841) (= i4 959)))

; Formula constraint
(assert (and (and (> a5_2_a8_1 a1_1_1) (and (>= a1_0_2 a1_0_0) (< a1_2_5 74))) (=> (>= -91 a5_0_a8_1) (and (> a1_3_0 a1_0_4) (= (+ (* 27 a5_2_i11) a1_1_1) 7)))))

(check-sat)
(get-model)