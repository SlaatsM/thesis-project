(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a10[0][0] -> a10_0_0
;   a10[0][1] -> a10_0_1
;   a10[0][2] -> a10_0_2
;   a10[0][3] -> a10_0_3
;   a10[0][4] -> a10_0_4
;   a10[0][5] -> a10_0_5
;   a10[1][0] -> a10_1_0
;   a10[1][1] -> a10_1_1
;   a10[1][2] -> a10_1_2
;   a10[1][3] -> a10_1_3
;   a10[1][4] -> a10_1_4
;   a10[1][5] -> a10_1_5
;   a10[2][0] -> a10_2_0
;   a10[2][1] -> a10_2_1
;   a10[2][2] -> a10_2_2
;   a10[2][3] -> a10_2_3
;   a10[2][4] -> a10_2_4
;   a10[2][5] -> a10_2_5
;   a10[3][0] -> a10_3_0
;   a10[3][1] -> a10_3_1
;   a10[3][2] -> a10_3_2
;   a10[3][3] -> a10_3_3
;   a10[3][4] -> a10_3_4
;   a10[3][5] -> a10_3_5
;   a10[4][0] -> a10_4_0
;   a10[4][1] -> a10_4_1
;   a10[4][2] -> a10_4_2
;   a10[4][3] -> a10_4_3
;   a10[4][4] -> a10_4_4
;   a10[4][5] -> a10_4_5
;   a10[5][0] -> a10_5_0
;   a10[5][1] -> a10_5_1
;   a10[5][2] -> a10_5_2
;   a10[5][3] -> a10_5_3
;   a10[5][4] -> a10_5_4
;   a10[5][5] -> a10_5_5
;   h1.h3.a4[0] -> h1_h3_a4_0
;   h1.h3.a4[1] -> h1_h3_a4_1
;   h1.h3.a4[2] -> h1_h3_a4_2
;   h1.h3.a4[3] -> h1_h3_a4_3
;   h1.h6.a7[0] -> h1_h6_a7_0
;   h1.h6.a7[1] -> h1_h6_a7_1
;   h1.h6.a7[2] -> h1_h6_a7_2
;   h1.h6.a7[3] -> h1_h6_a7_3
;   h1.h6.a7[4] -> h1_h6_a7_4
;   h1.i2 -> h1_i2
;   h1.i9 -> h1_i9

; Variable declarations
(declare-fun a10_0_0 () Int)
(declare-fun a10_0_1 () Int)
(declare-fun a10_0_2 () Int)
(declare-fun a10_0_3 () Int)
(declare-fun a10_0_4 () Int)
(declare-fun a10_0_5 () Int)
(declare-fun a10_1_0 () Int)
(declare-fun a10_1_1 () Int)
(declare-fun a10_1_2 () Int)
(declare-fun a10_1_3 () Int)
(declare-fun a10_1_4 () Int)
(declare-fun a10_1_5 () Int)
(declare-fun a10_2_0 () Int)
(declare-fun a10_2_1 () Int)
(declare-fun a10_2_2 () Int)
(declare-fun a10_2_3 () Int)
(declare-fun a10_2_4 () Int)
(declare-fun a10_2_5 () Int)
(declare-fun a10_3_0 () Int)
(declare-fun a10_3_1 () Int)
(declare-fun a10_3_2 () Int)
(declare-fun a10_3_3 () Int)
(declare-fun a10_3_4 () Int)
(declare-fun a10_3_5 () Int)
(declare-fun a10_4_0 () Int)
(declare-fun a10_4_1 () Int)
(declare-fun a10_4_2 () Int)
(declare-fun a10_4_3 () Int)
(declare-fun a10_4_4 () Int)
(declare-fun a10_4_5 () Int)
(declare-fun a10_5_0 () Int)
(declare-fun a10_5_1 () Int)
(declare-fun a10_5_2 () Int)
(declare-fun a10_5_3 () Int)
(declare-fun a10_5_4 () Int)
(declare-fun a10_5_5 () Int)
(declare-fun h1_h3_a4_0 () Int)
(declare-fun h1_h3_a4_1 () Int)
(declare-fun h1_h3_a4_2 () Int)
(declare-fun h1_h3_a4_3 () Int)
(declare-fun h1_h6_a7_0 () Int)
(declare-fun h1_h6_a7_1 () Int)
(declare-fun h1_h6_a7_2 () Int)
(declare-fun h1_h6_a7_3 () Int)
(declare-fun h1_h6_a7_4 () Int)
(declare-fun h1_i2 () Int)
(declare-fun h1_i9 () Int)

; Domain constraints
(assert (and (<= 72 a10_0_0) (<= a10_0_0 107)))
(assert (and (<= 72 a10_0_1) (<= a10_0_1 107)))
(assert (and (<= 72 a10_0_2) (<= a10_0_2 107)))
(assert (and (<= 72 a10_0_3) (<= a10_0_3 107)))
(assert (and (<= 72 a10_0_4) (<= a10_0_4 107)))
(assert (and (<= 72 a10_0_5) (<= a10_0_5 107)))
(assert (and (<= 72 a10_1_0) (<= a10_1_0 107)))
(assert (and (<= 72 a10_1_1) (<= a10_1_1 107)))
(assert (and (<= 72 a10_1_2) (<= a10_1_2 107)))
(assert (and (<= 72 a10_1_3) (<= a10_1_3 107)))
(assert (and (<= 72 a10_1_4) (<= a10_1_4 107)))
(assert (and (<= 72 a10_1_5) (<= a10_1_5 107)))
(assert (and (<= 72 a10_2_0) (<= a10_2_0 107)))
(assert (and (<= 72 a10_2_1) (<= a10_2_1 107)))
(assert (and (<= 72 a10_2_2) (<= a10_2_2 107)))
(assert (and (<= 72 a10_2_3) (<= a10_2_3 107)))
(assert (and (<= 72 a10_2_4) (<= a10_2_4 107)))
(assert (and (<= 72 a10_2_5) (<= a10_2_5 107)))
(assert (and (<= 72 a10_3_0) (<= a10_3_0 107)))
(assert (and (<= 72 a10_3_1) (<= a10_3_1 107)))
(assert (and (<= 72 a10_3_2) (<= a10_3_2 107)))
(assert (and (<= 72 a10_3_3) (<= a10_3_3 107)))
(assert (and (<= 72 a10_3_4) (<= a10_3_4 107)))
(assert (and (<= 72 a10_3_5) (<= a10_3_5 107)))
(assert (and (<= 72 a10_4_0) (<= a10_4_0 107)))
(assert (and (<= 72 a10_4_1) (<= a10_4_1 107)))
(assert (and (<= 72 a10_4_2) (<= a10_4_2 107)))
(assert (and (<= 72 a10_4_3) (<= a10_4_3 107)))
(assert (and (<= 72 a10_4_4) (<= a10_4_4 107)))
(assert (and (<= 72 a10_4_5) (<= a10_4_5 107)))
(assert (and (<= 72 a10_5_0) (<= a10_5_0 107)))
(assert (and (<= 72 a10_5_1) (<= a10_5_1 107)))
(assert (and (<= 72 a10_5_2) (<= a10_5_2 107)))
(assert (and (<= 72 a10_5_3) (<= a10_5_3 107)))
(assert (and (<= 72 a10_5_4) (<= a10_5_4 107)))
(assert (and (<= 72 a10_5_5) (<= a10_5_5 107)))
(assert (and (<= 120 h1_h3_a4_0) (<= h1_h3_a4_0 984)))
(assert (and (<= 120 h1_h3_a4_1) (<= h1_h3_a4_1 984)))
(assert (and (<= 120 h1_h3_a4_2) (<= h1_h3_a4_2 984)))
(assert (and (<= 120 h1_h3_a4_3) (<= h1_h3_a4_3 984)))
(assert (or (= h1_h6_a7_0 11) (= h1_h6_a7_0 202) (= h1_h6_a7_0 485) (= h1_h6_a7_0 872)))
(assert (or (= h1_h6_a7_1 11) (= h1_h6_a7_1 202) (= h1_h6_a7_1 485) (= h1_h6_a7_1 872)))
(assert (or (= h1_h6_a7_2 11) (= h1_h6_a7_2 202) (= h1_h6_a7_2 485) (= h1_h6_a7_2 872)))
(assert (or (= h1_h6_a7_3 11) (= h1_h6_a7_3 202) (= h1_h6_a7_3 485) (= h1_h6_a7_3 872)))
(assert (or (= h1_h6_a7_4 11) (= h1_h6_a7_4 202) (= h1_h6_a7_4 485) (= h1_h6_a7_4 872)))
(assert (and (<= 559 h1_i2) (<= h1_i2 568)))
(assert (and (<= 689 h1_i9) (<= h1_i9 986)))

; Formula constraint
(assert (and (not (and (>= 6 a10_4_1) (>= 82 -61))) (or (or (>= -6 -55) (not (= 17 a10_3_5))) (and (>= h1_h3_a4_0 (- (+ h1_h3_a4_1 a10_0_0) (* 9 h1_h6_a7_0))) (> a10_0_0 h1_h6_a7_3)))))

(check-sat)
(get-model)