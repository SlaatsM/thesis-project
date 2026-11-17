(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a6[0] -> a6_0
;   a6[1] -> a6_1
;   a6[2] -> a6_2
;   a6[3] -> a6_3
;   a6[4] -> a6_4
;   h8.h10.a11[0] -> h8_h10_a11_0
;   h8.h10.a11[1] -> h8_h10_a11_1
;   h8.h13.a14[0] -> h8_h13_a14_0
;   h8.h13.a14[1] -> h8_h13_a14_1
;   h8.h13.a14[2] -> h8_h13_a14_2
;   h8.h13.i16 -> h8_h13_i16
;   h8.h13.i17 -> h8_h13_i17
;   h8.h13.i18 -> h8_h13_i18
;   h8.i19 -> h8_i19
;   h8.i9 -> h8_i9
;   i1
;   i2

; Variable declarations
(declare-fun a6_0 () Int)
(declare-fun a6_1 () Int)
(declare-fun a6_2 () Int)
(declare-fun a6_3 () Int)
(declare-fun a6_4 () Int)
(declare-fun h8_h10_a11_0 () Int)
(declare-fun h8_h10_a11_1 () Int)
(declare-fun h8_h13_a14_0 () Int)
(declare-fun h8_h13_a14_1 () Int)
(declare-fun h8_h13_a14_2 () Int)
(declare-fun h8_h13_i16 () Int)
(declare-fun h8_h13_i17 () Int)
(declare-fun h8_h13_i18 () Int)
(declare-fun h8_i19 () Int)
(declare-fun h8_i9 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= 17 a6_0) (<= a6_0 295)))
(assert (and (<= 17 a6_1) (<= a6_1 295)))
(assert (and (<= 17 a6_2) (<= a6_2 295)))
(assert (and (<= 17 a6_3) (<= a6_3 295)))
(assert (and (<= 17 a6_4) (<= a6_4 295)))
(assert (and (<= 123 h8_h10_a11_0) (<= h8_h10_a11_0 976)))
(assert (and (<= 123 h8_h10_a11_1) (<= h8_h10_a11_1 976)))
(assert (and (<= 393 h8_h13_a14_0) (<= h8_h13_a14_0 744)))
(assert (and (<= 393 h8_h13_a14_1) (<= h8_h13_a14_1 744)))
(assert (and (<= 393 h8_h13_a14_2) (<= h8_h13_a14_2 744)))
(assert (and (<= 448 h8_h13_i16) (<= h8_h13_i16 936)))
(assert (and (<= 34 h8_h13_i17) (<= h8_h13_i17 838)))
(assert (or (= h8_h13_i18 422) (= h8_h13_i18 486) (= h8_h13_i18 788) (= h8_h13_i18 813) (= h8_h13_i18 958)))
(assert (or (= h8_i19 283) (= h8_i19 549)))
(assert (and (<= 207 h8_i9) (<= h8_i9 595)))
(assert (or (= i1 256) (= i1 545) (= i1 636) (= i1 816)))
(assert (or (= i2 335) (and (<= 386 i2) (<= i2 885))))

; Formula constraint
(assert (<= (+ h8_h13_a14_0 (- h8_i9 (* -89 h8_h10_a11_1))) (- (+ -49 h8_h10_a11_0) (* -73 h8_h13_i17))))

(check-sat)
(get-model)