(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h11.a15[0][0] -> h11_a15_0_0
;   h11.a15[0][1] -> h11_a15_0_1
;   h11.a15[0][2] -> h11_a15_0_2
;   h11.a15[1][0] -> h11_a15_1_0
;   h11.a15[1][1] -> h11_a15_1_1
;   h11.a15[1][2] -> h11_a15_1_2
;   h11.a15[2][0] -> h11_a15_2_0
;   h11.a15[2][1] -> h11_a15_2_1
;   h11.a15[2][2] -> h11_a15_2_2
;   h11.a15[3][0] -> h11_a15_3_0
;   h11.a15[3][1] -> h11_a15_3_1
;   h11.a15[3][2] -> h11_a15_3_2
;   h11.a15[4][0] -> h11_a15_4_0
;   h11.a15[4][1] -> h11_a15_4_1
;   h11.a15[4][2] -> h11_a15_4_2
;   h11.a15[5][0] -> h11_a15_5_0
;   h11.a15[5][1] -> h11_a15_5_1
;   h11.a15[5][2] -> h11_a15_5_2
;   h11.h12.i14 -> h11_h12_i14
;   h11.i18 -> h11_i18
;   h3.a4[0][0] -> h3_a4_0_0
;   h3.a4[0][1] -> h3_a4_0_1
;   h3.a4[1][0] -> h3_a4_1_0
;   h3.a4[1][1] -> h3_a4_1_1
;   h3.a4[2][0] -> h3_a4_2_0
;   h3.a4[2][1] -> h3_a4_2_1
;   h3.a9[0] -> h3_a9_0
;   h3.i7 -> h3_i7
;   h3.i8 -> h3_i8
;   i1
;   i2

; Variable declarations
(declare-fun h11_a15_0_0 () Int)
(declare-fun h11_a15_0_1 () Int)
(declare-fun h11_a15_0_2 () Int)
(declare-fun h11_a15_1_0 () Int)
(declare-fun h11_a15_1_1 () Int)
(declare-fun h11_a15_1_2 () Int)
(declare-fun h11_a15_2_0 () Int)
(declare-fun h11_a15_2_1 () Int)
(declare-fun h11_a15_2_2 () Int)
(declare-fun h11_a15_3_0 () Int)
(declare-fun h11_a15_3_1 () Int)
(declare-fun h11_a15_3_2 () Int)
(declare-fun h11_a15_4_0 () Int)
(declare-fun h11_a15_4_1 () Int)
(declare-fun h11_a15_4_2 () Int)
(declare-fun h11_a15_5_0 () Int)
(declare-fun h11_a15_5_1 () Int)
(declare-fun h11_a15_5_2 () Int)
(declare-fun h11_h12_i14 () Int)
(declare-fun h11_i18 () Int)
(declare-fun h3_a4_0_0 () Int)
(declare-fun h3_a4_0_1 () Int)
(declare-fun h3_a4_1_0 () Int)
(declare-fun h3_a4_1_1 () Int)
(declare-fun h3_a4_2_0 () Int)
(declare-fun h3_a4_2_1 () Int)
(declare-fun h3_a9_0 () Int)
(declare-fun h3_i7 () Int)
(declare-fun h3_i8 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= 441 h11_a15_0_0) (<= h11_a15_0_0 977)))
(assert (and (<= 441 h11_a15_0_1) (<= h11_a15_0_1 977)))
(assert (and (<= 441 h11_a15_0_2) (<= h11_a15_0_2 977)))
(assert (and (<= 441 h11_a15_1_0) (<= h11_a15_1_0 977)))
(assert (and (<= 441 h11_a15_1_1) (<= h11_a15_1_1 977)))
(assert (and (<= 441 h11_a15_1_2) (<= h11_a15_1_2 977)))
(assert (and (<= 441 h11_a15_2_0) (<= h11_a15_2_0 977)))
(assert (and (<= 441 h11_a15_2_1) (<= h11_a15_2_1 977)))
(assert (and (<= 441 h11_a15_2_2) (<= h11_a15_2_2 977)))
(assert (and (<= 441 h11_a15_3_0) (<= h11_a15_3_0 977)))
(assert (and (<= 441 h11_a15_3_1) (<= h11_a15_3_1 977)))
(assert (and (<= 441 h11_a15_3_2) (<= h11_a15_3_2 977)))
(assert (and (<= 441 h11_a15_4_0) (<= h11_a15_4_0 977)))
(assert (and (<= 441 h11_a15_4_1) (<= h11_a15_4_1 977)))
(assert (and (<= 441 h11_a15_4_2) (<= h11_a15_4_2 977)))
(assert (and (<= 441 h11_a15_5_0) (<= h11_a15_5_0 977)))
(assert (and (<= 441 h11_a15_5_1) (<= h11_a15_5_1 977)))
(assert (and (<= 441 h11_a15_5_2) (<= h11_a15_5_2 977)))
(assert (and (<= 506 h11_h12_i14) (<= h11_h12_i14 985)))
(assert (or (and (<= 135 h11_i18) (<= h11_i18 243)) (= h11_i18 680)))
(assert (and (<= 248 h3_a4_0_0) (<= h3_a4_0_0 620)))
(assert (and (<= 248 h3_a4_0_1) (<= h3_a4_0_1 620)))
(assert (and (<= 248 h3_a4_1_0) (<= h3_a4_1_0 620)))
(assert (and (<= 248 h3_a4_1_1) (<= h3_a4_1_1 620)))
(assert (and (<= 248 h3_a4_2_0) (<= h3_a4_2_0 620)))
(assert (and (<= 248 h3_a4_2_1) (<= h3_a4_2_1 620)))
(assert (or (= h3_a9_0 38) (= h3_a9_0 70) (= h3_a9_0 244) (= h3_a9_0 820)))
(assert (and (<= 503 h3_i7) (<= h3_i7 830)))
(assert (and (<= 467 h3_i8) (<= h3_i8 935)))
(assert (or (= i1 626) (= i1 973)))
(assert (or (= i2 749) (= i2 862)))

; Formula constraint
(assert (and (=> (or (<= h11_a15_1_1 (* -18 h11_a15_1_2)) (>= h3_a4_0_0 h11_a15_2_2)) (and (< h3_a4_2_1 h3_a4_0_1) (> h3_a9_0 (- h11_a15_3_2 18)))) (=> (and (> 97 (+ (- (* 5 h3_a4_1_1) (* -82 h11_a15_5_0)) (- (* -12 h11_a15_0_0) h11_a15_4_0))) (> h3_a4_1_1 i2)) (and (>= h11_a15_3_2 -5) (< (+ h11_a15_4_2 86) -61)))))

(check-sat)
(get-model)