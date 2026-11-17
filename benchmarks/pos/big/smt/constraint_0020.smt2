(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a10[0] -> a10_0
;   a10[1] -> a10_1
;   a10[2] -> a10_2
;   a10[3] -> a10_3
;   a10[4] -> a10_4
;   a5[0] -> a5_0
;   a7[0].i9 -> a7_0_i9
;   a7[1].i9 -> a7_1_i9
;   a7[2].i9 -> a7_2_i9
;   a7[3].i9 -> a7_3_i9
;   h1.i4 -> h1_i4
;   h12.a13[0] -> h12_a13_0
;   h12.a13[1] -> h12_a13_1

; Variable declarations
(declare-fun a10_0 () Int)
(declare-fun a10_1 () Int)
(declare-fun a10_2 () Int)
(declare-fun a10_3 () Int)
(declare-fun a10_4 () Int)
(declare-fun a5_0 () Int)
(declare-fun a7_0_i9 () Int)
(declare-fun a7_1_i9 () Int)
(declare-fun a7_2_i9 () Int)
(declare-fun a7_3_i9 () Int)
(declare-fun h1_i4 () Int)
(declare-fun h12_a13_0 () Int)
(declare-fun h12_a13_1 () Int)

; Domain constraints
(assert (and (<= 64 a10_0) (<= a10_0 979)))
(assert (and (<= 64 a10_1) (<= a10_1 979)))
(assert (and (<= 64 a10_2) (<= a10_2 979)))
(assert (and (<= 64 a10_3) (<= a10_3 979)))
(assert (and (<= 64 a10_4) (<= a10_4 979)))
(assert (or (= a5_0 79) (= a5_0 432)))
(assert (and (<= 452 a7_0_i9) (<= a7_0_i9 483)))
(assert (and (<= 452 a7_1_i9) (<= a7_1_i9 483)))
(assert (and (<= 452 a7_2_i9) (<= a7_2_i9 483)))
(assert (and (<= 452 a7_3_i9) (<= a7_3_i9 483)))
(assert (and (<= 117 h1_i4) (<= h1_i4 251)))
(assert (and (<= 852 h12_a13_0) (<= h12_a13_0 912)))
(assert (and (<= 852 h12_a13_1) (<= h12_a13_1 912)))

; Formula constraint
(assert (= a7_2_i9 a7_0_i9))

(check-sat)
(get-model)