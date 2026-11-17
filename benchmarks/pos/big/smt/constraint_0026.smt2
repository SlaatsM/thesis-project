(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h2.h3.a5[0] -> h2_h3_a5_0
;   h2.h3.a5[1] -> h2_h3_a5_1
;   h2.h3.a5[2] -> h2_h3_a5_2
;   h2.h3.i4 -> h2_h3_i4
;   h2.i7 -> h2_i7
;   i1

; Variable declarations
(declare-fun h2_h3_a5_0 () Int)
(declare-fun h2_h3_a5_1 () Int)
(declare-fun h2_h3_a5_2 () Int)
(declare-fun h2_h3_i4 () Int)
(declare-fun h2_i7 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (or (and (<= 220 h2_h3_a5_0) (<= h2_h3_a5_0 873)) (= h2_h3_a5_0 904)))
(assert (or (and (<= 220 h2_h3_a5_1) (<= h2_h3_a5_1 873)) (= h2_h3_a5_1 904)))
(assert (or (and (<= 220 h2_h3_a5_2) (<= h2_h3_a5_2 873)) (= h2_h3_a5_2 904)))
(assert (and (<= 676 h2_h3_i4) (<= h2_h3_i4 735)))
(assert (or (= h2_i7 340) (= h2_i7 496)))
(assert (and (<= 257 i1) (<= i1 394)))

; Formula constraint
(assert (< h2_h3_a5_0 i1))

(check-sat)
(get-model)