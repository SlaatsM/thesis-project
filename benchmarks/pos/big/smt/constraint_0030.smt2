(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a10[0] -> a10_0
;   a10[1] -> a10_1
;   a10[2] -> a10_2
;   a10[3] -> a10_3
;   a13[0] -> a13_0
;   a13[1] -> a13_1
;   a13[2] -> a13_2
;   a13[3] -> a13_3
;   a13[4] -> a13_4
;   a13[5] -> a13_5
;   a8[0] -> a8_0
;   h1.a3[0] -> h1_a3_0
;   h1.a3[1] -> h1_a3_1
;   h1.a3[2] -> h1_a3_2
;   h1.a3[3] -> h1_a3_3
;   h1.a3[4] -> h1_a3_4
;   h1.a5[0][0] -> h1_a5_0_0
;   h1.a5[0][1] -> h1_a5_0_1
;   h1.a5[1][0] -> h1_a5_1_0
;   h1.a5[1][1] -> h1_a5_1_1
;   h1.a5[2][0] -> h1_a5_2_0
;   h1.a5[2][1] -> h1_a5_2_1
;   h1.a5[3][0] -> h1_a5_3_0
;   h1.a5[3][1] -> h1_a5_3_1
;   h1.i2 -> h1_i2
;   i12

; Variable declarations
(declare-fun a10_0 () Int)
(declare-fun a10_1 () Int)
(declare-fun a10_2 () Int)
(declare-fun a10_3 () Int)
(declare-fun a13_0 () Int)
(declare-fun a13_1 () Int)
(declare-fun a13_2 () Int)
(declare-fun a13_3 () Int)
(declare-fun a13_4 () Int)
(declare-fun a13_5 () Int)
(declare-fun a8_0 () Int)
(declare-fun h1_a3_0 () Int)
(declare-fun h1_a3_1 () Int)
(declare-fun h1_a3_2 () Int)
(declare-fun h1_a3_3 () Int)
(declare-fun h1_a3_4 () Int)
(declare-fun h1_a5_0_0 () Int)
(declare-fun h1_a5_0_1 () Int)
(declare-fun h1_a5_1_0 () Int)
(declare-fun h1_a5_1_1 () Int)
(declare-fun h1_a5_2_0 () Int)
(declare-fun h1_a5_2_1 () Int)
(declare-fun h1_a5_3_0 () Int)
(declare-fun h1_a5_3_1 () Int)
(declare-fun h1_i2 () Int)
(declare-fun i12 () Int)

; Domain constraints
(assert (and (<= 869 a10_0) (<= a10_0 888)))
(assert (and (<= 869 a10_1) (<= a10_1 888)))
(assert (and (<= 869 a10_2) (<= a10_2 888)))
(assert (and (<= 869 a10_3) (<= a10_3 888)))
(assert (and (<= 743 a13_0) (<= a13_0 891)))
(assert (and (<= 743 a13_1) (<= a13_1 891)))
(assert (and (<= 743 a13_2) (<= a13_2 891)))
(assert (and (<= 743 a13_3) (<= a13_3 891)))
(assert (and (<= 743 a13_4) (<= a13_4 891)))
(assert (and (<= 743 a13_5) (<= a13_5 891)))
(assert (or (= a8_0 354) (= a8_0 454) (= a8_0 979)))
(assert (or (= h1_a3_0 174) (= h1_a3_0 192) (= h1_a3_0 422) (= h1_a3_0 734)))
(assert (or (= h1_a3_1 174) (= h1_a3_1 192) (= h1_a3_1 422) (= h1_a3_1 734)))
(assert (or (= h1_a3_2 174) (= h1_a3_2 192) (= h1_a3_2 422) (= h1_a3_2 734)))
(assert (or (= h1_a3_3 174) (= h1_a3_3 192) (= h1_a3_3 422) (= h1_a3_3 734)))
(assert (or (= h1_a3_4 174) (= h1_a3_4 192) (= h1_a3_4 422) (= h1_a3_4 734)))
(assert (and (<= 47 h1_a5_0_0) (<= h1_a5_0_0 715)))
(assert (and (<= 47 h1_a5_0_1) (<= h1_a5_0_1 715)))
(assert (and (<= 47 h1_a5_1_0) (<= h1_a5_1_0 715)))
(assert (and (<= 47 h1_a5_1_1) (<= h1_a5_1_1 715)))
(assert (and (<= 47 h1_a5_2_0) (<= h1_a5_2_0 715)))
(assert (and (<= 47 h1_a5_2_1) (<= h1_a5_2_1 715)))
(assert (and (<= 47 h1_a5_3_0) (<= h1_a5_3_0 715)))
(assert (and (<= 47 h1_a5_3_1) (<= h1_a5_3_1 715)))
(assert (and (<= 520 h1_i2) (<= h1_i2 548)))
(assert (and (<= 371 i12) (<= i12 785)))

; Formula constraint
(assert (< a13_5 a13_0))

(check-sat)
(get-model)