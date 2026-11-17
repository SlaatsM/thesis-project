(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a3[0].i5 -> a3_0_i5
;   a3[0].i6 -> a3_0_i6
;   a3[1].i5 -> a3_1_i5
;   a3[1].i6 -> a3_1_i6
;   a3[2].i5 -> a3_2_i5
;   a3[2].i6 -> a3_2_i6
;   a3[3].i5 -> a3_3_i5
;   a3[3].i6 -> a3_3_i6
;   a3[4].i5 -> a3_4_i5
;   a3[4].i6 -> a3_4_i6
;   a3[5].i5 -> a3_5_i5
;   a3[5].i6 -> a3_5_i6
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun a3_0_i5 () Int)
(declare-fun a3_0_i6 () Int)
(declare-fun a3_1_i5 () Int)
(declare-fun a3_1_i6 () Int)
(declare-fun a3_2_i5 () Int)
(declare-fun a3_2_i6 () Int)
(declare-fun a3_3_i5 () Int)
(declare-fun a3_3_i6 () Int)
(declare-fun a3_4_i5 () Int)
(declare-fun a3_4_i6 () Int)
(declare-fun a3_5_i5 () Int)
(declare-fun a3_5_i6 () Int)
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (or (= a3_0_i5 -793) (and (<= -704 a3_0_i5) (<= a3_0_i5 -262)) (= a3_0_i5 313)))
(assert (or (= a3_0_i6 -24) (= a3_0_i6 21) (= a3_0_i6 217) (= a3_0_i6 242)))
(assert (or (= a3_1_i5 -793) (and (<= -704 a3_1_i5) (<= a3_1_i5 -262)) (= a3_1_i5 313)))
(assert (or (= a3_1_i6 -24) (= a3_1_i6 21) (= a3_1_i6 217) (= a3_1_i6 242)))
(assert (or (= a3_2_i5 -793) (and (<= -704 a3_2_i5) (<= a3_2_i5 -262)) (= a3_2_i5 313)))
(assert (or (= a3_2_i6 -24) (= a3_2_i6 21) (= a3_2_i6 217) (= a3_2_i6 242)))
(assert (or (= a3_3_i5 -793) (and (<= -704 a3_3_i5) (<= a3_3_i5 -262)) (= a3_3_i5 313)))
(assert (or (= a3_3_i6 -24) (= a3_3_i6 21) (= a3_3_i6 217) (= a3_3_i6 242)))
(assert (or (= a3_4_i5 -793) (and (<= -704 a3_4_i5) (<= a3_4_i5 -262)) (= a3_4_i5 313)))
(assert (or (= a3_4_i6 -24) (= a3_4_i6 21) (= a3_4_i6 217) (= a3_4_i6 242)))
(assert (or (= a3_5_i5 -793) (and (<= -704 a3_5_i5) (<= a3_5_i5 -262)) (= a3_5_i5 313)))
(assert (or (= a3_5_i6 -24) (= a3_5_i6 21) (= a3_5_i6 217) (= a3_5_i6 242)))
(assert (and (<= -37 h1_i2) (<= h1_i2 757)))

; Formula constraint
(assert (=> (and (=> (>= -44 a3_2_i6) (= h1_i2 a3_1_i5)) (or (< (- 91 -80) 34) (< 23 a3_5_i6))) (and (and (> (* -58 a3_3_i5) 25) (= a3_1_i6 66)) (=> (< (+ 13 -48) -24) (not (= -57 a3_1_i5))))))

(check-sat)
(get-model)