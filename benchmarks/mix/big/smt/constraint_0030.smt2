(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a5[0] -> a5_0
;   a5[1] -> a5_1
;   a5[2] -> a5_2
;   a5[3] -> a5_3
;   a7[0] -> a7_0
;   a7[1] -> a7_1
;   h1.h2.i3 -> h1_h2_i3
;   h1.i4 -> h1_i4
;   h13.i14 -> h13_i14
;   h13.i15 -> h13_i15
;   h13.i16 -> h13_i16
;   h9.a10[0][0] -> h9_a10_0_0
;   h9.a10[0][1] -> h9_a10_0_1
;   h9.a10[0][2] -> h9_a10_0_2
;   h9.a10[1][0] -> h9_a10_1_0
;   h9.a10[1][1] -> h9_a10_1_1
;   h9.a10[1][2] -> h9_a10_1_2
;   h9.a10[2][0] -> h9_a10_2_0
;   h9.a10[2][1] -> h9_a10_2_1
;   h9.a10[2][2] -> h9_a10_2_2

; Variable declarations
(declare-fun a5_0 () Int)
(declare-fun a5_1 () Int)
(declare-fun a5_2 () Int)
(declare-fun a5_3 () Int)
(declare-fun a7_0 () Int)
(declare-fun a7_1 () Int)
(declare-fun h1_h2_i3 () Int)
(declare-fun h1_i4 () Int)
(declare-fun h13_i14 () Int)
(declare-fun h13_i15 () Int)
(declare-fun h13_i16 () Int)
(declare-fun h9_a10_0_0 () Int)
(declare-fun h9_a10_0_1 () Int)
(declare-fun h9_a10_0_2 () Int)
(declare-fun h9_a10_1_0 () Int)
(declare-fun h9_a10_1_1 () Int)
(declare-fun h9_a10_1_2 () Int)
(declare-fun h9_a10_2_0 () Int)
(declare-fun h9_a10_2_1 () Int)
(declare-fun h9_a10_2_2 () Int)

; Domain constraints
(assert (and (<= -465 a5_0) (<= a5_0 80)))
(assert (and (<= -465 a5_1) (<= a5_1 80)))
(assert (and (<= -465 a5_2) (<= a5_2 80)))
(assert (and (<= -465 a5_3) (<= a5_3 80)))
(assert (and (<= -649 a7_0) (<= a7_0 130)))
(assert (and (<= -649 a7_1) (<= a7_1 130)))
(assert (and (<= -733 h1_h2_i3) (<= h1_h2_i3 989)))
(assert (and (<= -379 h1_i4) (<= h1_i4 277)))
(assert (and (<= -962 h13_i14) (<= h13_i14 -945)))
(assert (or (and (<= -872 h13_i15) (<= h13_i15 537)) (= h13_i15 929)))
(assert (or (= h13_i16 -734) (= h13_i16 -247) (= h13_i16 459) (= h13_i16 507) (= h13_i16 550)))
(assert (and (<= -970 h9_a10_0_0) (<= h9_a10_0_0 537)))
(assert (and (<= -970 h9_a10_0_1) (<= h9_a10_0_1 537)))
(assert (and (<= -970 h9_a10_0_2) (<= h9_a10_0_2 537)))
(assert (and (<= -970 h9_a10_1_0) (<= h9_a10_1_0 537)))
(assert (and (<= -970 h9_a10_1_1) (<= h9_a10_1_1 537)))
(assert (and (<= -970 h9_a10_1_2) (<= h9_a10_1_2 537)))
(assert (and (<= -970 h9_a10_2_0) (<= h9_a10_2_0 537)))
(assert (and (<= -970 h9_a10_2_1) (<= h9_a10_2_1 537)))
(assert (and (<= -970 h9_a10_2_2) (<= h9_a10_2_2 537)))

; Formula constraint
(assert (and (and (or (not (= -48 (* -1 h1_i4))) (<= (* 91 h9_a10_2_0) -1)) (and (> (- (+ a5_3 78) a5_2) (* 78 h1_i4)) (> a5_2 (* -57 h9_a10_0_0)))) (not (and (> h9_a10_1_1 h9_a10_0_1) (>= -89 (* -26 h9_a10_2_0))))))

(check-sat)
(get-model)