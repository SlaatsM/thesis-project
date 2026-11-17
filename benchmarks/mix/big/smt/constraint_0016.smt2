(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a10[0].a12[0] -> a10_0_a12_0
;   a10[0].a12[1] -> a10_0_a12_1
;   a10[0].a12[2] -> a10_0_a12_2
;   a10[0].a12[3] -> a10_0_a12_3
;   a10[1].a12[0] -> a10_1_a12_0
;   a10[1].a12[1] -> a10_1_a12_1
;   a10[1].a12[2] -> a10_1_a12_2
;   a10[1].a12[3] -> a10_1_a12_3
;   a10[2].a12[0] -> a10_2_a12_0
;   a10[2].a12[1] -> a10_2_a12_1
;   a10[2].a12[2] -> a10_2_a12_2
;   a10[2].a12[3] -> a10_2_a12_3
;   a10[3].a12[0] -> a10_3_a12_0
;   a10[3].a12[1] -> a10_3_a12_1
;   a10[3].a12[2] -> a10_3_a12_2
;   a10[3].a12[3] -> a10_3_a12_3
;   a10[4].a12[0] -> a10_4_a12_0
;   a10[4].a12[1] -> a10_4_a12_1
;   a10[4].a12[2] -> a10_4_a12_2
;   a10[4].a12[3] -> a10_4_a12_3
;   h1.a6[0] -> h1_a6_0
;   h1.a6[1] -> h1_a6_1
;   h1.a6[2] -> h1_a6_2
;   h1.a6[3] -> h1_a6_3
;   h1.a6[4] -> h1_a6_4
;   h1.a6[5] -> h1_a6_5
;   h1.h2.i4 -> h1_h2_i4
;   h1.i5 -> h1_i5
;   i8
;   i9

; Variable declarations
(declare-fun a10_0_a12_0 () Int)
(declare-fun a10_0_a12_1 () Int)
(declare-fun a10_0_a12_2 () Int)
(declare-fun a10_0_a12_3 () Int)
(declare-fun a10_1_a12_0 () Int)
(declare-fun a10_1_a12_1 () Int)
(declare-fun a10_1_a12_2 () Int)
(declare-fun a10_1_a12_3 () Int)
(declare-fun a10_2_a12_0 () Int)
(declare-fun a10_2_a12_1 () Int)
(declare-fun a10_2_a12_2 () Int)
(declare-fun a10_2_a12_3 () Int)
(declare-fun a10_3_a12_0 () Int)
(declare-fun a10_3_a12_1 () Int)
(declare-fun a10_3_a12_2 () Int)
(declare-fun a10_3_a12_3 () Int)
(declare-fun a10_4_a12_0 () Int)
(declare-fun a10_4_a12_1 () Int)
(declare-fun a10_4_a12_2 () Int)
(declare-fun a10_4_a12_3 () Int)
(declare-fun h1_a6_0 () Int)
(declare-fun h1_a6_1 () Int)
(declare-fun h1_a6_2 () Int)
(declare-fun h1_a6_3 () Int)
(declare-fun h1_a6_4 () Int)
(declare-fun h1_a6_5 () Int)
(declare-fun h1_h2_i4 () Int)
(declare-fun h1_i5 () Int)
(declare-fun i8 () Int)
(declare-fun i9 () Int)

; Domain constraints
(assert (or (= a10_0_a12_0 -645) (and (<= -492 a10_0_a12_0) (<= a10_0_a12_0 -316)) (and (<= 916 a10_0_a12_0) (<= a10_0_a12_0 928))))
(assert (or (= a10_0_a12_1 -645) (and (<= -492 a10_0_a12_1) (<= a10_0_a12_1 -316)) (and (<= 916 a10_0_a12_1) (<= a10_0_a12_1 928))))
(assert (or (= a10_0_a12_2 -645) (and (<= -492 a10_0_a12_2) (<= a10_0_a12_2 -316)) (and (<= 916 a10_0_a12_2) (<= a10_0_a12_2 928))))
(assert (or (= a10_0_a12_3 -645) (and (<= -492 a10_0_a12_3) (<= a10_0_a12_3 -316)) (and (<= 916 a10_0_a12_3) (<= a10_0_a12_3 928))))
(assert (or (= a10_1_a12_0 -645) (and (<= -492 a10_1_a12_0) (<= a10_1_a12_0 -316)) (and (<= 916 a10_1_a12_0) (<= a10_1_a12_0 928))))
(assert (or (= a10_1_a12_1 -645) (and (<= -492 a10_1_a12_1) (<= a10_1_a12_1 -316)) (and (<= 916 a10_1_a12_1) (<= a10_1_a12_1 928))))
(assert (or (= a10_1_a12_2 -645) (and (<= -492 a10_1_a12_2) (<= a10_1_a12_2 -316)) (and (<= 916 a10_1_a12_2) (<= a10_1_a12_2 928))))
(assert (or (= a10_1_a12_3 -645) (and (<= -492 a10_1_a12_3) (<= a10_1_a12_3 -316)) (and (<= 916 a10_1_a12_3) (<= a10_1_a12_3 928))))
(assert (or (= a10_2_a12_0 -645) (and (<= -492 a10_2_a12_0) (<= a10_2_a12_0 -316)) (and (<= 916 a10_2_a12_0) (<= a10_2_a12_0 928))))
(assert (or (= a10_2_a12_1 -645) (and (<= -492 a10_2_a12_1) (<= a10_2_a12_1 -316)) (and (<= 916 a10_2_a12_1) (<= a10_2_a12_1 928))))
(assert (or (= a10_2_a12_2 -645) (and (<= -492 a10_2_a12_2) (<= a10_2_a12_2 -316)) (and (<= 916 a10_2_a12_2) (<= a10_2_a12_2 928))))
(assert (or (= a10_2_a12_3 -645) (and (<= -492 a10_2_a12_3) (<= a10_2_a12_3 -316)) (and (<= 916 a10_2_a12_3) (<= a10_2_a12_3 928))))
(assert (or (= a10_3_a12_0 -645) (and (<= -492 a10_3_a12_0) (<= a10_3_a12_0 -316)) (and (<= 916 a10_3_a12_0) (<= a10_3_a12_0 928))))
(assert (or (= a10_3_a12_1 -645) (and (<= -492 a10_3_a12_1) (<= a10_3_a12_1 -316)) (and (<= 916 a10_3_a12_1) (<= a10_3_a12_1 928))))
(assert (or (= a10_3_a12_2 -645) (and (<= -492 a10_3_a12_2) (<= a10_3_a12_2 -316)) (and (<= 916 a10_3_a12_2) (<= a10_3_a12_2 928))))
(assert (or (= a10_3_a12_3 -645) (and (<= -492 a10_3_a12_3) (<= a10_3_a12_3 -316)) (and (<= 916 a10_3_a12_3) (<= a10_3_a12_3 928))))
(assert (or (= a10_4_a12_0 -645) (and (<= -492 a10_4_a12_0) (<= a10_4_a12_0 -316)) (and (<= 916 a10_4_a12_0) (<= a10_4_a12_0 928))))
(assert (or (= a10_4_a12_1 -645) (and (<= -492 a10_4_a12_1) (<= a10_4_a12_1 -316)) (and (<= 916 a10_4_a12_1) (<= a10_4_a12_1 928))))
(assert (or (= a10_4_a12_2 -645) (and (<= -492 a10_4_a12_2) (<= a10_4_a12_2 -316)) (and (<= 916 a10_4_a12_2) (<= a10_4_a12_2 928))))
(assert (or (= a10_4_a12_3 -645) (and (<= -492 a10_4_a12_3) (<= a10_4_a12_3 -316)) (and (<= 916 a10_4_a12_3) (<= a10_4_a12_3 928))))
(assert (and (<= 597 h1_a6_0) (<= h1_a6_0 799)))
(assert (and (<= 597 h1_a6_1) (<= h1_a6_1 799)))
(assert (and (<= 597 h1_a6_2) (<= h1_a6_2 799)))
(assert (and (<= 597 h1_a6_3) (<= h1_a6_3 799)))
(assert (and (<= 597 h1_a6_4) (<= h1_a6_4 799)))
(assert (and (<= 597 h1_a6_5) (<= h1_a6_5 799)))
(assert (and (<= 865 h1_h2_i4) (<= h1_h2_i4 949)))
(assert (or (= h1_i5 91) (= h1_i5 877)))
(assert (or (= i8 -606) (and (<= -265 i8) (<= i8 985))))
(assert (and (<= -795 i9) (<= i9 56)))

; Formula constraint
(assert (and (<= h1_a6_4 a10_0_a12_0) (and (<= h1_i5 (* -85 a10_1_a12_1)) (or (> a10_2_a12_3 (+ h1_a6_3 (+ -92 -45))) (>= i8 h1_a6_0)))))

(check-sat)
(get-model)