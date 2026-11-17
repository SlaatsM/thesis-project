(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0].a5[0] -> a1_0_a5_0
;   a1[0].a5[1] -> a1_0_a5_1
;   a1[0].a5[2] -> a1_0_a5_2
;   a1[0].a5[3] -> a1_0_a5_3
;   a1[0].a5[4] -> a1_0_a5_4
;   a1[0].i3 -> a1_0_i3
;   a1[0].i7 -> a1_0_i7
;   a1[1].a5[0] -> a1_1_a5_0
;   a1[1].a5[1] -> a1_1_a5_1
;   a1[1].a5[2] -> a1_1_a5_2
;   a1[1].a5[3] -> a1_1_a5_3
;   a1[1].a5[4] -> a1_1_a5_4
;   a1[1].i3 -> a1_1_i3
;   a1[1].i7 -> a1_1_i7
;   a1[2].a5[0] -> a1_2_a5_0
;   a1[2].a5[1] -> a1_2_a5_1
;   a1[2].a5[2] -> a1_2_a5_2
;   a1[2].a5[3] -> a1_2_a5_3
;   a1[2].a5[4] -> a1_2_a5_4
;   a1[2].i3 -> a1_2_i3
;   a1[2].i7 -> a1_2_i7
;   a1[3].a5[0] -> a1_3_a5_0
;   a1[3].a5[1] -> a1_3_a5_1
;   a1[3].a5[2] -> a1_3_a5_2
;   a1[3].a5[3] -> a1_3_a5_3
;   a1[3].a5[4] -> a1_3_a5_4
;   a1[3].i3 -> a1_3_i3
;   a1[3].i7 -> a1_3_i7
;   i8

; Variable declarations
(declare-fun a1_0_a5_0 () Int)
(declare-fun a1_0_a5_1 () Int)
(declare-fun a1_0_a5_2 () Int)
(declare-fun a1_0_a5_3 () Int)
(declare-fun a1_0_a5_4 () Int)
(declare-fun a1_0_i3 () Int)
(declare-fun a1_0_i7 () Int)
(declare-fun a1_1_a5_0 () Int)
(declare-fun a1_1_a5_1 () Int)
(declare-fun a1_1_a5_2 () Int)
(declare-fun a1_1_a5_3 () Int)
(declare-fun a1_1_a5_4 () Int)
(declare-fun a1_1_i3 () Int)
(declare-fun a1_1_i7 () Int)
(declare-fun a1_2_a5_0 () Int)
(declare-fun a1_2_a5_1 () Int)
(declare-fun a1_2_a5_2 () Int)
(declare-fun a1_2_a5_3 () Int)
(declare-fun a1_2_a5_4 () Int)
(declare-fun a1_2_i3 () Int)
(declare-fun a1_2_i7 () Int)
(declare-fun a1_3_a5_0 () Int)
(declare-fun a1_3_a5_1 () Int)
(declare-fun a1_3_a5_2 () Int)
(declare-fun a1_3_a5_3 () Int)
(declare-fun a1_3_a5_4 () Int)
(declare-fun a1_3_i3 () Int)
(declare-fun a1_3_i7 () Int)
(declare-fun i8 () Int)

; Domain constraints
(assert (and (<= 213 a1_0_a5_0) (<= a1_0_a5_0 237)))
(assert (and (<= 213 a1_0_a5_1) (<= a1_0_a5_1 237)))
(assert (and (<= 213 a1_0_a5_2) (<= a1_0_a5_2 237)))
(assert (and (<= 213 a1_0_a5_3) (<= a1_0_a5_3 237)))
(assert (and (<= 213 a1_0_a5_4) (<= a1_0_a5_4 237)))
(assert (or (= a1_0_i3 83) (= a1_0_i3 429)))
(assert (or (= a1_0_i7 30) (= a1_0_i7 79) (= a1_0_i7 309) (= a1_0_i7 927)))
(assert (and (<= 213 a1_1_a5_0) (<= a1_1_a5_0 237)))
(assert (and (<= 213 a1_1_a5_1) (<= a1_1_a5_1 237)))
(assert (and (<= 213 a1_1_a5_2) (<= a1_1_a5_2 237)))
(assert (and (<= 213 a1_1_a5_3) (<= a1_1_a5_3 237)))
(assert (and (<= 213 a1_1_a5_4) (<= a1_1_a5_4 237)))
(assert (or (= a1_1_i3 83) (= a1_1_i3 429)))
(assert (or (= a1_1_i7 30) (= a1_1_i7 79) (= a1_1_i7 309) (= a1_1_i7 927)))
(assert (and (<= 213 a1_2_a5_0) (<= a1_2_a5_0 237)))
(assert (and (<= 213 a1_2_a5_1) (<= a1_2_a5_1 237)))
(assert (and (<= 213 a1_2_a5_2) (<= a1_2_a5_2 237)))
(assert (and (<= 213 a1_2_a5_3) (<= a1_2_a5_3 237)))
(assert (and (<= 213 a1_2_a5_4) (<= a1_2_a5_4 237)))
(assert (or (= a1_2_i3 83) (= a1_2_i3 429)))
(assert (or (= a1_2_i7 30) (= a1_2_i7 79) (= a1_2_i7 309) (= a1_2_i7 927)))
(assert (and (<= 213 a1_3_a5_0) (<= a1_3_a5_0 237)))
(assert (and (<= 213 a1_3_a5_1) (<= a1_3_a5_1 237)))
(assert (and (<= 213 a1_3_a5_2) (<= a1_3_a5_2 237)))
(assert (and (<= 213 a1_3_a5_3) (<= a1_3_a5_3 237)))
(assert (and (<= 213 a1_3_a5_4) (<= a1_3_a5_4 237)))
(assert (or (= a1_3_i3 83) (= a1_3_i3 429)))
(assert (or (= a1_3_i7 30) (= a1_3_i7 79) (= a1_3_i7 309) (= a1_3_i7 927)))
(assert (and (<= 207 i8) (<= i8 503)))

; Formula constraint
(assert (=> (and (or (>= a1_3_a5_1 a1_2_i3) (not (= a1_2_i7 (+ a1_2_a5_1 a1_1_a5_1)))) (not (>= a1_2_i7 a1_0_i7))) (< a1_2_a5_1 a1_0_a5_2)))

(check-sat)
(get-model)