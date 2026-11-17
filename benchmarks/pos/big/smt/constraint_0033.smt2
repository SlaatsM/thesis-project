(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a11[0][0] -> a11_0_0
;   a11[0][1] -> a11_0_1
;   a11[0][2] -> a11_0_2
;   a11[0][3] -> a11_0_3
;   a11[1][0] -> a11_1_0
;   a11[1][1] -> a11_1_1
;   a11[1][2] -> a11_1_2
;   a11[1][3] -> a11_1_3
;   a11[2][0] -> a11_2_0
;   a11[2][1] -> a11_2_1
;   a11[2][2] -> a11_2_2
;   a11[2][3] -> a11_2_3
;   a11[3][0] -> a11_3_0
;   a11[3][1] -> a11_3_1
;   a11[3][2] -> a11_3_2
;   a11[3][3] -> a11_3_3
;   h2.h3.a6[0] -> h2_h3_a6_0
;   h2.h3.a6[1] -> h2_h3_a6_1
;   h2.h3.a6[2] -> h2_h3_a6_2
;   h2.h3.a6[3] -> h2_h3_a6_3
;   h2.h3.a6[4] -> h2_h3_a6_4
;   h2.h3.a6[5] -> h2_h3_a6_5
;   h2.h3.a8[0] -> h2_h3_a8_0
;   h2.h3.i4 -> h2_h3_i4
;   h2.h3.i5 -> h2_h3_i5
;   i1
;   i10

; Variable declarations
(declare-fun a11_0_0 () Int)
(declare-fun a11_0_1 () Int)
(declare-fun a11_0_2 () Int)
(declare-fun a11_0_3 () Int)
(declare-fun a11_1_0 () Int)
(declare-fun a11_1_1 () Int)
(declare-fun a11_1_2 () Int)
(declare-fun a11_1_3 () Int)
(declare-fun a11_2_0 () Int)
(declare-fun a11_2_1 () Int)
(declare-fun a11_2_2 () Int)
(declare-fun a11_2_3 () Int)
(declare-fun a11_3_0 () Int)
(declare-fun a11_3_1 () Int)
(declare-fun a11_3_2 () Int)
(declare-fun a11_3_3 () Int)
(declare-fun h2_h3_a6_0 () Int)
(declare-fun h2_h3_a6_1 () Int)
(declare-fun h2_h3_a6_2 () Int)
(declare-fun h2_h3_a6_3 () Int)
(declare-fun h2_h3_a6_4 () Int)
(declare-fun h2_h3_a6_5 () Int)
(declare-fun h2_h3_a8_0 () Int)
(declare-fun h2_h3_i4 () Int)
(declare-fun h2_h3_i5 () Int)
(declare-fun i1 () Int)
(declare-fun i10 () Int)

; Domain constraints
(assert (or (= a11_0_0 134) (= a11_0_0 852)))
(assert (or (= a11_0_1 134) (= a11_0_1 852)))
(assert (or (= a11_0_2 134) (= a11_0_2 852)))
(assert (or (= a11_0_3 134) (= a11_0_3 852)))
(assert (or (= a11_1_0 134) (= a11_1_0 852)))
(assert (or (= a11_1_1 134) (= a11_1_1 852)))
(assert (or (= a11_1_2 134) (= a11_1_2 852)))
(assert (or (= a11_1_3 134) (= a11_1_3 852)))
(assert (or (= a11_2_0 134) (= a11_2_0 852)))
(assert (or (= a11_2_1 134) (= a11_2_1 852)))
(assert (or (= a11_2_2 134) (= a11_2_2 852)))
(assert (or (= a11_2_3 134) (= a11_2_3 852)))
(assert (or (= a11_3_0 134) (= a11_3_0 852)))
(assert (or (= a11_3_1 134) (= a11_3_1 852)))
(assert (or (= a11_3_2 134) (= a11_3_2 852)))
(assert (or (= a11_3_3 134) (= a11_3_3 852)))
(assert (or (= h2_h3_a6_0 345) (= h2_h3_a6_0 527) (= h2_h3_a6_0 627) (= h2_h3_a6_0 669)))
(assert (or (= h2_h3_a6_1 345) (= h2_h3_a6_1 527) (= h2_h3_a6_1 627) (= h2_h3_a6_1 669)))
(assert (or (= h2_h3_a6_2 345) (= h2_h3_a6_2 527) (= h2_h3_a6_2 627) (= h2_h3_a6_2 669)))
(assert (or (= h2_h3_a6_3 345) (= h2_h3_a6_3 527) (= h2_h3_a6_3 627) (= h2_h3_a6_3 669)))
(assert (or (= h2_h3_a6_4 345) (= h2_h3_a6_4 527) (= h2_h3_a6_4 627) (= h2_h3_a6_4 669)))
(assert (or (= h2_h3_a6_5 345) (= h2_h3_a6_5 527) (= h2_h3_a6_5 627) (= h2_h3_a6_5 669)))
(assert (or (= h2_h3_a8_0 91) (= h2_h3_a8_0 661) (= h2_h3_a8_0 705) (and (<= 855 h2_h3_a8_0) (<= h2_h3_a8_0 879))))
(assert (and (<= 527 h2_h3_i4) (<= h2_h3_i4 836)))
(assert (and (<= 43 h2_h3_i5) (<= h2_h3_i5 389)))
(assert (or (and (<= 82 i1) (<= i1 873)) (= i1 991)))
(assert (and (<= 798 i10) (<= i10 929)))

; Formula constraint
(assert (not (= a11_1_2 a11_1_3)))

(check-sat)
(get-model)