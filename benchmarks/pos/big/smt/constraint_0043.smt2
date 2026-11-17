(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a14[0][0] -> a14_0_0
;   a14[0][1] -> a14_0_1
;   a14[0][2] -> a14_0_2
;   a14[0][3] -> a14_0_3
;   a14[0][4] -> a14_0_4
;   a14[0][5] -> a14_0_5
;   a14[1][0] -> a14_1_0
;   a14[1][1] -> a14_1_1
;   a14[1][2] -> a14_1_2
;   a14[1][3] -> a14_1_3
;   a14[1][4] -> a14_1_4
;   a14[1][5] -> a14_1_5
;   a14[2][0] -> a14_2_0
;   a14[2][1] -> a14_2_1
;   a14[2][2] -> a14_2_2
;   a14[2][3] -> a14_2_3
;   a14[2][4] -> a14_2_4
;   a14[2][5] -> a14_2_5
;   a14[3][0] -> a14_3_0
;   a14[3][1] -> a14_3_1
;   a14[3][2] -> a14_3_2
;   a14[3][3] -> a14_3_3
;   a14[3][4] -> a14_3_4
;   a14[3][5] -> a14_3_5
;   h1.i4 -> h1_i4
;   h1.i5 -> h1_i5
;   h1.i6 -> h1_i6
;   h7.h8.a10[0] -> h7_h8_a10_0
;   h7.h8.a10[1] -> h7_h8_a10_1
;   h7.h8.a10[2] -> h7_h8_a10_2
;   h7.i12 -> h7_i12
;   i13

; Variable declarations
(declare-fun a14_0_0 () Int)
(declare-fun a14_0_1 () Int)
(declare-fun a14_0_2 () Int)
(declare-fun a14_0_3 () Int)
(declare-fun a14_0_4 () Int)
(declare-fun a14_0_5 () Int)
(declare-fun a14_1_0 () Int)
(declare-fun a14_1_1 () Int)
(declare-fun a14_1_2 () Int)
(declare-fun a14_1_3 () Int)
(declare-fun a14_1_4 () Int)
(declare-fun a14_1_5 () Int)
(declare-fun a14_2_0 () Int)
(declare-fun a14_2_1 () Int)
(declare-fun a14_2_2 () Int)
(declare-fun a14_2_3 () Int)
(declare-fun a14_2_4 () Int)
(declare-fun a14_2_5 () Int)
(declare-fun a14_3_0 () Int)
(declare-fun a14_3_1 () Int)
(declare-fun a14_3_2 () Int)
(declare-fun a14_3_3 () Int)
(declare-fun a14_3_4 () Int)
(declare-fun a14_3_5 () Int)
(declare-fun h1_i4 () Int)
(declare-fun h1_i5 () Int)
(declare-fun h1_i6 () Int)
(declare-fun h7_h8_a10_0 () Int)
(declare-fun h7_h8_a10_1 () Int)
(declare-fun h7_h8_a10_2 () Int)
(declare-fun h7_i12 () Int)
(declare-fun i13 () Int)

; Domain constraints
(assert (and (<= 128 a14_0_0) (<= a14_0_0 415)))
(assert (and (<= 128 a14_0_1) (<= a14_0_1 415)))
(assert (and (<= 128 a14_0_2) (<= a14_0_2 415)))
(assert (and (<= 128 a14_0_3) (<= a14_0_3 415)))
(assert (and (<= 128 a14_0_4) (<= a14_0_4 415)))
(assert (and (<= 128 a14_0_5) (<= a14_0_5 415)))
(assert (and (<= 128 a14_1_0) (<= a14_1_0 415)))
(assert (and (<= 128 a14_1_1) (<= a14_1_1 415)))
(assert (and (<= 128 a14_1_2) (<= a14_1_2 415)))
(assert (and (<= 128 a14_1_3) (<= a14_1_3 415)))
(assert (and (<= 128 a14_1_4) (<= a14_1_4 415)))
(assert (and (<= 128 a14_1_5) (<= a14_1_5 415)))
(assert (and (<= 128 a14_2_0) (<= a14_2_0 415)))
(assert (and (<= 128 a14_2_1) (<= a14_2_1 415)))
(assert (and (<= 128 a14_2_2) (<= a14_2_2 415)))
(assert (and (<= 128 a14_2_3) (<= a14_2_3 415)))
(assert (and (<= 128 a14_2_4) (<= a14_2_4 415)))
(assert (and (<= 128 a14_2_5) (<= a14_2_5 415)))
(assert (and (<= 128 a14_3_0) (<= a14_3_0 415)))
(assert (and (<= 128 a14_3_1) (<= a14_3_1 415)))
(assert (and (<= 128 a14_3_2) (<= a14_3_2 415)))
(assert (and (<= 128 a14_3_3) (<= a14_3_3 415)))
(assert (and (<= 128 a14_3_4) (<= a14_3_4 415)))
(assert (and (<= 128 a14_3_5) (<= a14_3_5 415)))
(assert (and (<= 664 h1_i4) (<= h1_i4 817)))
(assert (and (<= 408 h1_i5) (<= h1_i5 653)))
(assert (or (= h1_i6 38) (= h1_i6 148) (= h1_i6 355) (= h1_i6 720) (= h1_i6 765)))
(assert (and (<= 253 h7_h8_a10_0) (<= h7_h8_a10_0 636)))
(assert (and (<= 253 h7_h8_a10_1) (<= h7_h8_a10_1 636)))
(assert (and (<= 253 h7_h8_a10_2) (<= h7_h8_a10_2 636)))
(assert (or (= h7_i12 15) (= h7_i12 159) (= h7_i12 163) (= h7_i12 973)))
(assert (or (= i13 57) (= i13 292) (= i13 469) (= i13 878) (= i13 879)))

; Formula constraint
(assert (and (not (= a14_1_2 (- a14_1_5 -62))) (or (=> (< (+ a14_2_1 a14_3_5) (* -13 a14_1_1)) (>= a14_0_3 (- h1_i4 (* -34 a14_0_5)))) (<= a14_0_4 4))))

(check-sat)
(get-model)