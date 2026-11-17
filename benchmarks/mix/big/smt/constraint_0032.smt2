(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a9[0].a12[0] -> a9_0_a12_0
;   a9[0].a12[1] -> a9_0_a12_1
;   a9[0].a12[2] -> a9_0_a12_2
;   a9[0].i14 -> a9_0_i14
;   a9[1].a12[0] -> a9_1_a12_0
;   a9[1].a12[1] -> a9_1_a12_1
;   a9[1].a12[2] -> a9_1_a12_2
;   a9[1].i14 -> a9_1_i14
;   a9[2].a12[0] -> a9_2_a12_0
;   a9[2].a12[1] -> a9_2_a12_1
;   a9[2].a12[2] -> a9_2_a12_2
;   a9[2].i14 -> a9_2_i14
;   a9[3].a12[0] -> a9_3_a12_0
;   a9[3].a12[1] -> a9_3_a12_1
;   a9[3].a12[2] -> a9_3_a12_2
;   a9[3].i14 -> a9_3_i14
;   a9[4].a12[0] -> a9_4_a12_0
;   a9[4].a12[1] -> a9_4_a12_1
;   a9[4].a12[2] -> a9_4_a12_2
;   a9[4].i14 -> a9_4_i14
;   h1.i2 -> h1_i2
;   h4.i5 -> h4_i5
;   h4.i6 -> h4_i6
;   h4.i7 -> h4_i7
;   h4.i8 -> h4_i8
;   i3

; Variable declarations
(declare-fun a9_0_a12_0 () Int)
(declare-fun a9_0_a12_1 () Int)
(declare-fun a9_0_a12_2 () Int)
(declare-fun a9_0_i14 () Int)
(declare-fun a9_1_a12_0 () Int)
(declare-fun a9_1_a12_1 () Int)
(declare-fun a9_1_a12_2 () Int)
(declare-fun a9_1_i14 () Int)
(declare-fun a9_2_a12_0 () Int)
(declare-fun a9_2_a12_1 () Int)
(declare-fun a9_2_a12_2 () Int)
(declare-fun a9_2_i14 () Int)
(declare-fun a9_3_a12_0 () Int)
(declare-fun a9_3_a12_1 () Int)
(declare-fun a9_3_a12_2 () Int)
(declare-fun a9_3_i14 () Int)
(declare-fun a9_4_a12_0 () Int)
(declare-fun a9_4_a12_1 () Int)
(declare-fun a9_4_a12_2 () Int)
(declare-fun a9_4_i14 () Int)
(declare-fun h1_i2 () Int)
(declare-fun h4_i5 () Int)
(declare-fun h4_i6 () Int)
(declare-fun h4_i7 () Int)
(declare-fun h4_i8 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (and (<= -68 a9_0_a12_0) (<= a9_0_a12_0 48)))
(assert (and (<= -68 a9_0_a12_1) (<= a9_0_a12_1 48)))
(assert (and (<= -68 a9_0_a12_2) (<= a9_0_a12_2 48)))
(assert (and (<= -645 a9_0_i14) (<= a9_0_i14 -309)))
(assert (and (<= -68 a9_1_a12_0) (<= a9_1_a12_0 48)))
(assert (and (<= -68 a9_1_a12_1) (<= a9_1_a12_1 48)))
(assert (and (<= -68 a9_1_a12_2) (<= a9_1_a12_2 48)))
(assert (and (<= -645 a9_1_i14) (<= a9_1_i14 -309)))
(assert (and (<= -68 a9_2_a12_0) (<= a9_2_a12_0 48)))
(assert (and (<= -68 a9_2_a12_1) (<= a9_2_a12_1 48)))
(assert (and (<= -68 a9_2_a12_2) (<= a9_2_a12_2 48)))
(assert (and (<= -645 a9_2_i14) (<= a9_2_i14 -309)))
(assert (and (<= -68 a9_3_a12_0) (<= a9_3_a12_0 48)))
(assert (and (<= -68 a9_3_a12_1) (<= a9_3_a12_1 48)))
(assert (and (<= -68 a9_3_a12_2) (<= a9_3_a12_2 48)))
(assert (and (<= -645 a9_3_i14) (<= a9_3_i14 -309)))
(assert (and (<= -68 a9_4_a12_0) (<= a9_4_a12_0 48)))
(assert (and (<= -68 a9_4_a12_1) (<= a9_4_a12_1 48)))
(assert (and (<= -68 a9_4_a12_2) (<= a9_4_a12_2 48)))
(assert (and (<= -645 a9_4_i14) (<= a9_4_i14 -309)))
(assert (and (<= -898 h1_i2) (<= h1_i2 491)))
(assert (and (<= -132 h4_i5) (<= h4_i5 -119)))
(assert (and (<= -416 h4_i6) (<= h4_i6 971)))
(assert (or (= h4_i7 -755) (and (<= -622 h4_i7) (<= h4_i7 336)) (and (<= 413 h4_i7) (<= h4_i7 458))))
(assert (and (<= -926 h4_i8) (<= h4_i8 -913)))
(assert (and (<= -781 i3) (<= i3 -541)))

; Formula constraint
(assert (=> (not (and (> (- a9_3_a12_2 -43) a9_2_a12_1) (> a9_4_i14 (+ 69 a9_1_a12_1)))) (=> (not (= 82 57)) (=> (> 92 a9_1_a12_2) (> h1_i2 31)))))

(check-sat)
(get-model)