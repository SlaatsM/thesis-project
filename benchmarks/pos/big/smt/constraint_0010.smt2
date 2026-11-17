(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.a2[0] -> h1_a2_0
;   h1.a2[1] -> h1_a2_1
;   h1.a2[2] -> h1_a2_2
;   h1.h4.a6[0] -> h1_h4_a6_0
;   h1.h4.a6[1] -> h1_h4_a6_1
;   h1.h4.a6[2] -> h1_h4_a6_2
;   h1.h4.a6[3] -> h1_h4_a6_3
;   h1.h4.i9 -> h1_h4_i9
;   i10

; Variable declarations
(declare-fun h1_a2_0 () Int)
(declare-fun h1_a2_1 () Int)
(declare-fun h1_a2_2 () Int)
(declare-fun h1_h4_a6_0 () Int)
(declare-fun h1_h4_a6_1 () Int)
(declare-fun h1_h4_a6_2 () Int)
(declare-fun h1_h4_a6_3 () Int)
(declare-fun h1_h4_i9 () Int)
(declare-fun i10 () Int)

; Domain constraints
(assert (or (= h1_a2_0 347) (= h1_a2_0 638) (and (<= 867 h1_a2_0) (<= h1_a2_0 895))))
(assert (or (= h1_a2_1 347) (= h1_a2_1 638) (and (<= 867 h1_a2_1) (<= h1_a2_1 895))))
(assert (or (= h1_a2_2 347) (= h1_a2_2 638) (and (<= 867 h1_a2_2) (<= h1_a2_2 895))))
(assert (and (<= 24 h1_h4_a6_0) (<= h1_h4_a6_0 838)))
(assert (and (<= 24 h1_h4_a6_1) (<= h1_h4_a6_1 838)))
(assert (and (<= 24 h1_h4_a6_2) (<= h1_h4_a6_2 838)))
(assert (and (<= 24 h1_h4_a6_3) (<= h1_h4_a6_3 838)))
(assert (and (<= 412 h1_h4_i9) (<= h1_h4_i9 706)))
(assert (or (= i10 304) (= i10 729) (= i10 868) (= i10 986)))

; Formula constraint
(assert (not (< h1_h4_a6_3 h1_a2_1)))

(check-sat)
(get-model)