(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1
;   a1[2] -> a1_2
;   a1[3] -> a1_3
;   h3.a4[0] -> h3_a4_0
;   h3.i6 -> h3_i6
;   h3.i7 -> h3_i7
;   h9.a13[0] -> h9_a13_0
;   h9.i12 -> h9_i12
;   h9.i15 -> h9_i15
;   i16
;   i8

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)
(declare-fun a1_2 () Int)
(declare-fun a1_3 () Int)
(declare-fun h3_a4_0 () Int)
(declare-fun h3_i6 () Int)
(declare-fun h3_i7 () Int)
(declare-fun h9_a13_0 () Int)
(declare-fun h9_i12 () Int)
(declare-fun h9_i15 () Int)
(declare-fun i16 () Int)
(declare-fun i8 () Int)

; Domain constraints
(assert (and (<= -88 a1_0) (<= a1_0 760)))
(assert (and (<= -88 a1_1) (<= a1_1 760)))
(assert (and (<= -88 a1_2) (<= a1_2 760)))
(assert (and (<= -88 a1_3) (<= a1_3 760)))
(assert (or (= h3_a4_0 -560) (= h3_a4_0 713)))
(assert (or (and (<= -618 h3_i6) (<= h3_i6 -471)) (= h3_i6 136)))
(assert (or (and (<= -182 h3_i7) (<= h3_i7 78)) (= h3_i7 702)))
(assert (or (= h9_a13_0 -187) (= h9_a13_0 462)))
(assert (and (<= 563 h9_i12) (<= h9_i12 910)))
(assert (or (= h9_i15 -973) (and (<= -719 h9_i15) (<= h9_i15 -464)) (= h9_i15 -247) (= h9_i15 810)))
(assert (and (<= 501 i16) (<= i16 594)))
(assert (and (<= -359 i8) (<= i8 263)))

; Formula constraint
(assert (or (and (=> (< (* -27 h3_i7) h9_i12) (<= h3_i6 (+ -78 -15))) (< 97 63)) (or (or (>= -30 (- h9_i15 h3_i7)) (<= i16 (* 76 h3_a4_0))) (and (not (= a1_2 49)) (> (* -67 i16) h9_i12)))))

(check-sat)
(get-model)