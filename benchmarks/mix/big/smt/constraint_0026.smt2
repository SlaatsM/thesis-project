(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a9[0].a11[0] -> a9_0_a11_0
;   a9[0].a11[1] -> a9_0_a11_1
;   a9[0].a11[2] -> a9_0_a11_2
;   a9[0].a11[3] -> a9_0_a11_3
;   a9[1].a11[0] -> a9_1_a11_0
;   a9[1].a11[1] -> a9_1_a11_1
;   a9[1].a11[2] -> a9_1_a11_2
;   a9[1].a11[3] -> a9_1_a11_3
;   a9[2].a11[0] -> a9_2_a11_0
;   a9[2].a11[1] -> a9_2_a11_1
;   a9[2].a11[2] -> a9_2_a11_2
;   a9[2].a11[3] -> a9_2_a11_3
;   a9[3].a11[0] -> a9_3_a11_0
;   a9[3].a11[1] -> a9_3_a11_1
;   a9[3].a11[2] -> a9_3_a11_2
;   a9[3].a11[3] -> a9_3_a11_3
;   a9[4].a11[0] -> a9_4_a11_0
;   a9[4].a11[1] -> a9_4_a11_1
;   a9[4].a11[2] -> a9_4_a11_2
;   a9[4].a11[3] -> a9_4_a11_3
;   h2.h3.a4[0] -> h2_h3_a4_0
;   h2.h3.i7 -> h2_h3_i7
;   h2.i8 -> h2_i8
;   i1

; Variable declarations
(declare-fun a9_0_a11_0 () Int)
(declare-fun a9_0_a11_1 () Int)
(declare-fun a9_0_a11_2 () Int)
(declare-fun a9_0_a11_3 () Int)
(declare-fun a9_1_a11_0 () Int)
(declare-fun a9_1_a11_1 () Int)
(declare-fun a9_1_a11_2 () Int)
(declare-fun a9_1_a11_3 () Int)
(declare-fun a9_2_a11_0 () Int)
(declare-fun a9_2_a11_1 () Int)
(declare-fun a9_2_a11_2 () Int)
(declare-fun a9_2_a11_3 () Int)
(declare-fun a9_3_a11_0 () Int)
(declare-fun a9_3_a11_1 () Int)
(declare-fun a9_3_a11_2 () Int)
(declare-fun a9_3_a11_3 () Int)
(declare-fun a9_4_a11_0 () Int)
(declare-fun a9_4_a11_1 () Int)
(declare-fun a9_4_a11_2 () Int)
(declare-fun a9_4_a11_3 () Int)
(declare-fun h2_h3_a4_0 () Int)
(declare-fun h2_h3_i7 () Int)
(declare-fun h2_i8 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= -132 a9_0_a11_0) (<= a9_0_a11_0 649)))
(assert (and (<= -132 a9_0_a11_1) (<= a9_0_a11_1 649)))
(assert (and (<= -132 a9_0_a11_2) (<= a9_0_a11_2 649)))
(assert (and (<= -132 a9_0_a11_3) (<= a9_0_a11_3 649)))
(assert (and (<= -132 a9_1_a11_0) (<= a9_1_a11_0 649)))
(assert (and (<= -132 a9_1_a11_1) (<= a9_1_a11_1 649)))
(assert (and (<= -132 a9_1_a11_2) (<= a9_1_a11_2 649)))
(assert (and (<= -132 a9_1_a11_3) (<= a9_1_a11_3 649)))
(assert (and (<= -132 a9_2_a11_0) (<= a9_2_a11_0 649)))
(assert (and (<= -132 a9_2_a11_1) (<= a9_2_a11_1 649)))
(assert (and (<= -132 a9_2_a11_2) (<= a9_2_a11_2 649)))
(assert (and (<= -132 a9_2_a11_3) (<= a9_2_a11_3 649)))
(assert (and (<= -132 a9_3_a11_0) (<= a9_3_a11_0 649)))
(assert (and (<= -132 a9_3_a11_1) (<= a9_3_a11_1 649)))
(assert (and (<= -132 a9_3_a11_2) (<= a9_3_a11_2 649)))
(assert (and (<= -132 a9_3_a11_3) (<= a9_3_a11_3 649)))
(assert (and (<= -132 a9_4_a11_0) (<= a9_4_a11_0 649)))
(assert (and (<= -132 a9_4_a11_1) (<= a9_4_a11_1 649)))
(assert (and (<= -132 a9_4_a11_2) (<= a9_4_a11_2 649)))
(assert (and (<= -132 a9_4_a11_3) (<= a9_4_a11_3 649)))
(assert (or (= h2_h3_a4_0 -50) (= h2_h3_a4_0 335)))
(assert (or (= h2_h3_i7 -630) (= h2_h3_i7 -539) (= h2_h3_i7 -146) (= h2_h3_i7 176)))
(assert (and (<= 355 h2_i8) (<= h2_i8 572)))
(assert (and (<= -174 i1) (<= i1 118)))

; Formula constraint
(assert (> (- (- a9_4_a11_2 -61) (* 86 a9_2_a11_3)) a9_4_a11_1))

(check-sat)
(get-model)