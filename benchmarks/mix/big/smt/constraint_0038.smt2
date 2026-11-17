(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a3[0] -> a3_0
;   a3[1] -> a3_1
;   a5[0] -> a5_0
;   a7[0].a9[0] -> a7_0_a9_0
;   a7[0].a9[1] -> a7_0_a9_1
;   a7[0].a9[2] -> a7_0_a9_2
;   a7[0].a9[3] -> a7_0_a9_3
;   a7[0].a9[4] -> a7_0_a9_4
;   a7[0].a9[5] -> a7_0_a9_5
;   a7[0].i11 -> a7_0_i11
;   a7[0].i12 -> a7_0_i12
;   a7[1].a9[0] -> a7_1_a9_0
;   a7[1].a9[1] -> a7_1_a9_1
;   a7[1].a9[2] -> a7_1_a9_2
;   a7[1].a9[3] -> a7_1_a9_3
;   a7[1].a9[4] -> a7_1_a9_4
;   a7[1].a9[5] -> a7_1_a9_5
;   a7[1].i11 -> a7_1_i11
;   a7[1].i12 -> a7_1_i12
;   a7[2].a9[0] -> a7_2_a9_0
;   a7[2].a9[1] -> a7_2_a9_1
;   a7[2].a9[2] -> a7_2_a9_2
;   a7[2].a9[3] -> a7_2_a9_3
;   a7[2].a9[4] -> a7_2_a9_4
;   a7[2].a9[5] -> a7_2_a9_5
;   a7[2].i11 -> a7_2_i11
;   a7[2].i12 -> a7_2_i12
;   a7[3].a9[0] -> a7_3_a9_0
;   a7[3].a9[1] -> a7_3_a9_1
;   a7[3].a9[2] -> a7_3_a9_2
;   a7[3].a9[3] -> a7_3_a9_3
;   a7[3].a9[4] -> a7_3_a9_4
;   a7[3].a9[5] -> a7_3_a9_5
;   a7[3].i11 -> a7_3_i11
;   a7[3].i12 -> a7_3_i12
;   a7[4].a9[0] -> a7_4_a9_0
;   a7[4].a9[1] -> a7_4_a9_1
;   a7[4].a9[2] -> a7_4_a9_2
;   a7[4].a9[3] -> a7_4_a9_3
;   a7[4].a9[4] -> a7_4_a9_4
;   a7[4].a9[5] -> a7_4_a9_5
;   a7[4].i11 -> a7_4_i11
;   a7[4].i12 -> a7_4_i12
;   i1
;   i2

; Variable declarations
(declare-fun a3_0 () Int)
(declare-fun a3_1 () Int)
(declare-fun a5_0 () Int)
(declare-fun a7_0_a9_0 () Int)
(declare-fun a7_0_a9_1 () Int)
(declare-fun a7_0_a9_2 () Int)
(declare-fun a7_0_a9_3 () Int)
(declare-fun a7_0_a9_4 () Int)
(declare-fun a7_0_a9_5 () Int)
(declare-fun a7_0_i11 () Int)
(declare-fun a7_0_i12 () Int)
(declare-fun a7_1_a9_0 () Int)
(declare-fun a7_1_a9_1 () Int)
(declare-fun a7_1_a9_2 () Int)
(declare-fun a7_1_a9_3 () Int)
(declare-fun a7_1_a9_4 () Int)
(declare-fun a7_1_a9_5 () Int)
(declare-fun a7_1_i11 () Int)
(declare-fun a7_1_i12 () Int)
(declare-fun a7_2_a9_0 () Int)
(declare-fun a7_2_a9_1 () Int)
(declare-fun a7_2_a9_2 () Int)
(declare-fun a7_2_a9_3 () Int)
(declare-fun a7_2_a9_4 () Int)
(declare-fun a7_2_a9_5 () Int)
(declare-fun a7_2_i11 () Int)
(declare-fun a7_2_i12 () Int)
(declare-fun a7_3_a9_0 () Int)
(declare-fun a7_3_a9_1 () Int)
(declare-fun a7_3_a9_2 () Int)
(declare-fun a7_3_a9_3 () Int)
(declare-fun a7_3_a9_4 () Int)
(declare-fun a7_3_a9_5 () Int)
(declare-fun a7_3_i11 () Int)
(declare-fun a7_3_i12 () Int)
(declare-fun a7_4_a9_0 () Int)
(declare-fun a7_4_a9_1 () Int)
(declare-fun a7_4_a9_2 () Int)
(declare-fun a7_4_a9_3 () Int)
(declare-fun a7_4_a9_4 () Int)
(declare-fun a7_4_a9_5 () Int)
(declare-fun a7_4_i11 () Int)
(declare-fun a7_4_i12 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= -989 a3_0) (<= a3_0 -723)))
(assert (and (<= -989 a3_1) (<= a3_1 -723)))
(assert (or (= a5_0 -267) (= a5_0 138) (= a5_0 411) (and (<= 583 a5_0) (<= a5_0 765))))
(assert (and (<= -562 a7_0_a9_0) (<= a7_0_a9_0 506)))
(assert (and (<= -562 a7_0_a9_1) (<= a7_0_a9_1 506)))
(assert (and (<= -562 a7_0_a9_2) (<= a7_0_a9_2 506)))
(assert (and (<= -562 a7_0_a9_3) (<= a7_0_a9_3 506)))
(assert (and (<= -562 a7_0_a9_4) (<= a7_0_a9_4 506)))
(assert (and (<= -562 a7_0_a9_5) (<= a7_0_a9_5 506)))
(assert (and (<= -595 a7_0_i11) (<= a7_0_i11 854)))
(assert (and (<= 226 a7_0_i12) (<= a7_0_i12 787)))
(assert (and (<= -562 a7_1_a9_0) (<= a7_1_a9_0 506)))
(assert (and (<= -562 a7_1_a9_1) (<= a7_1_a9_1 506)))
(assert (and (<= -562 a7_1_a9_2) (<= a7_1_a9_2 506)))
(assert (and (<= -562 a7_1_a9_3) (<= a7_1_a9_3 506)))
(assert (and (<= -562 a7_1_a9_4) (<= a7_1_a9_4 506)))
(assert (and (<= -562 a7_1_a9_5) (<= a7_1_a9_5 506)))
(assert (and (<= -595 a7_1_i11) (<= a7_1_i11 854)))
(assert (and (<= 226 a7_1_i12) (<= a7_1_i12 787)))
(assert (and (<= -562 a7_2_a9_0) (<= a7_2_a9_0 506)))
(assert (and (<= -562 a7_2_a9_1) (<= a7_2_a9_1 506)))
(assert (and (<= -562 a7_2_a9_2) (<= a7_2_a9_2 506)))
(assert (and (<= -562 a7_2_a9_3) (<= a7_2_a9_3 506)))
(assert (and (<= -562 a7_2_a9_4) (<= a7_2_a9_4 506)))
(assert (and (<= -562 a7_2_a9_5) (<= a7_2_a9_5 506)))
(assert (and (<= -595 a7_2_i11) (<= a7_2_i11 854)))
(assert (and (<= 226 a7_2_i12) (<= a7_2_i12 787)))
(assert (and (<= -562 a7_3_a9_0) (<= a7_3_a9_0 506)))
(assert (and (<= -562 a7_3_a9_1) (<= a7_3_a9_1 506)))
(assert (and (<= -562 a7_3_a9_2) (<= a7_3_a9_2 506)))
(assert (and (<= -562 a7_3_a9_3) (<= a7_3_a9_3 506)))
(assert (and (<= -562 a7_3_a9_4) (<= a7_3_a9_4 506)))
(assert (and (<= -562 a7_3_a9_5) (<= a7_3_a9_5 506)))
(assert (and (<= -595 a7_3_i11) (<= a7_3_i11 854)))
(assert (and (<= 226 a7_3_i12) (<= a7_3_i12 787)))
(assert (and (<= -562 a7_4_a9_0) (<= a7_4_a9_0 506)))
(assert (and (<= -562 a7_4_a9_1) (<= a7_4_a9_1 506)))
(assert (and (<= -562 a7_4_a9_2) (<= a7_4_a9_2 506)))
(assert (and (<= -562 a7_4_a9_3) (<= a7_4_a9_3 506)))
(assert (and (<= -562 a7_4_a9_4) (<= a7_4_a9_4 506)))
(assert (and (<= -562 a7_4_a9_5) (<= a7_4_a9_5 506)))
(assert (and (<= -595 a7_4_i11) (<= a7_4_i11 854)))
(assert (and (<= 226 a7_4_i12) (<= a7_4_i12 787)))
(assert (and (<= -417 i1) (<= i1 265)))
(assert (and (<= -80 i2) (<= i2 728)))

; Formula constraint
(assert (and (and (and (<= -94 a7_2_a9_2) (not (= (* -77 a7_3_a9_3) a7_1_a9_4))) (=> (>= (- (+ (* 2 i1) 28) (- -19 a7_1_a9_0)) (* -72 a7_0_a9_4)) (< a7_4_a9_4 (* 0 a7_2_a9_0)))) (and (=> (<= a7_1_a9_3 (* -7 a7_2_a9_5)) (>= 71 a7_3_a9_4)) (not (< a7_2_i11 20)))))

(check-sat)
(get-model)