(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a12[0] -> a12_0
;   a12[1] -> a12_1
;   a5[0].a8[0] -> a5_0_a8_0
;   a5[0].a8[1] -> a5_0_a8_1
;   a5[0].a8[2] -> a5_0_a8_2
;   a5[0].a8[3] -> a5_0_a8_3
;   a5[0].a8[4] -> a5_0_a8_4
;   a5[0].a8[5] -> a5_0_a8_5
;   a5[0].i10 -> a5_0_i10
;   a5[0].i11 -> a5_0_i11
;   a5[0].i7 -> a5_0_i7
;   a5[1].a8[0] -> a5_1_a8_0
;   a5[1].a8[1] -> a5_1_a8_1
;   a5[1].a8[2] -> a5_1_a8_2
;   a5[1].a8[3] -> a5_1_a8_3
;   a5[1].a8[4] -> a5_1_a8_4
;   a5[1].a8[5] -> a5_1_a8_5
;   a5[1].i10 -> a5_1_i10
;   a5[1].i11 -> a5_1_i11
;   a5[1].i7 -> a5_1_i7
;   a5[2].a8[0] -> a5_2_a8_0
;   a5[2].a8[1] -> a5_2_a8_1
;   a5[2].a8[2] -> a5_2_a8_2
;   a5[2].a8[3] -> a5_2_a8_3
;   a5[2].a8[4] -> a5_2_a8_4
;   a5[2].a8[5] -> a5_2_a8_5
;   a5[2].i10 -> a5_2_i10
;   a5[2].i11 -> a5_2_i11
;   a5[2].i7 -> a5_2_i7
;   a5[3].a8[0] -> a5_3_a8_0
;   a5[3].a8[1] -> a5_3_a8_1
;   a5[3].a8[2] -> a5_3_a8_2
;   a5[3].a8[3] -> a5_3_a8_3
;   a5[3].a8[4] -> a5_3_a8_4
;   a5[3].a8[5] -> a5_3_a8_5
;   a5[3].i10 -> a5_3_i10
;   a5[3].i11 -> a5_3_i11
;   a5[3].i7 -> a5_3_i7
;   a5[4].a8[0] -> a5_4_a8_0
;   a5[4].a8[1] -> a5_4_a8_1
;   a5[4].a8[2] -> a5_4_a8_2
;   a5[4].a8[3] -> a5_4_a8_3
;   a5[4].a8[4] -> a5_4_a8_4
;   a5[4].a8[5] -> a5_4_a8_5
;   a5[4].i10 -> a5_4_i10
;   a5[4].i11 -> a5_4_i11
;   a5[4].i7 -> a5_4_i7
;   a5[5].a8[0] -> a5_5_a8_0
;   a5[5].a8[1] -> a5_5_a8_1
;   a5[5].a8[2] -> a5_5_a8_2
;   a5[5].a8[3] -> a5_5_a8_3
;   a5[5].a8[4] -> a5_5_a8_4
;   a5[5].a8[5] -> a5_5_a8_5
;   a5[5].i10 -> a5_5_i10
;   a5[5].i11 -> a5_5_i11
;   a5[5].i7 -> a5_5_i7
;   h3.i4 -> h3_i4
;   i1
;   i2

; Variable declarations
(declare-fun a12_0 () Int)
(declare-fun a12_1 () Int)
(declare-fun a5_0_a8_0 () Int)
(declare-fun a5_0_a8_1 () Int)
(declare-fun a5_0_a8_2 () Int)
(declare-fun a5_0_a8_3 () Int)
(declare-fun a5_0_a8_4 () Int)
(declare-fun a5_0_a8_5 () Int)
(declare-fun a5_0_i10 () Int)
(declare-fun a5_0_i11 () Int)
(declare-fun a5_0_i7 () Int)
(declare-fun a5_1_a8_0 () Int)
(declare-fun a5_1_a8_1 () Int)
(declare-fun a5_1_a8_2 () Int)
(declare-fun a5_1_a8_3 () Int)
(declare-fun a5_1_a8_4 () Int)
(declare-fun a5_1_a8_5 () Int)
(declare-fun a5_1_i10 () Int)
(declare-fun a5_1_i11 () Int)
(declare-fun a5_1_i7 () Int)
(declare-fun a5_2_a8_0 () Int)
(declare-fun a5_2_a8_1 () Int)
(declare-fun a5_2_a8_2 () Int)
(declare-fun a5_2_a8_3 () Int)
(declare-fun a5_2_a8_4 () Int)
(declare-fun a5_2_a8_5 () Int)
(declare-fun a5_2_i10 () Int)
(declare-fun a5_2_i11 () Int)
(declare-fun a5_2_i7 () Int)
(declare-fun a5_3_a8_0 () Int)
(declare-fun a5_3_a8_1 () Int)
(declare-fun a5_3_a8_2 () Int)
(declare-fun a5_3_a8_3 () Int)
(declare-fun a5_3_a8_4 () Int)
(declare-fun a5_3_a8_5 () Int)
(declare-fun a5_3_i10 () Int)
(declare-fun a5_3_i11 () Int)
(declare-fun a5_3_i7 () Int)
(declare-fun a5_4_a8_0 () Int)
(declare-fun a5_4_a8_1 () Int)
(declare-fun a5_4_a8_2 () Int)
(declare-fun a5_4_a8_3 () Int)
(declare-fun a5_4_a8_4 () Int)
(declare-fun a5_4_a8_5 () Int)
(declare-fun a5_4_i10 () Int)
(declare-fun a5_4_i11 () Int)
(declare-fun a5_4_i7 () Int)
(declare-fun a5_5_a8_0 () Int)
(declare-fun a5_5_a8_1 () Int)
(declare-fun a5_5_a8_2 () Int)
(declare-fun a5_5_a8_3 () Int)
(declare-fun a5_5_a8_4 () Int)
(declare-fun a5_5_a8_5 () Int)
(declare-fun a5_5_i10 () Int)
(declare-fun a5_5_i11 () Int)
(declare-fun a5_5_i7 () Int)
(declare-fun h3_i4 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= 10 a12_0) (<= a12_0 460)))
(assert (and (<= 10 a12_1) (<= a12_1 460)))
(assert (or (and (<= 25 a5_0_a8_0) (<= a5_0_a8_0 592)) (= a5_0_a8_0 664) (= a5_0_a8_0 900)))
(assert (or (and (<= 25 a5_0_a8_1) (<= a5_0_a8_1 592)) (= a5_0_a8_1 664) (= a5_0_a8_1 900)))
(assert (or (and (<= 25 a5_0_a8_2) (<= a5_0_a8_2 592)) (= a5_0_a8_2 664) (= a5_0_a8_2 900)))
(assert (or (and (<= 25 a5_0_a8_3) (<= a5_0_a8_3 592)) (= a5_0_a8_3 664) (= a5_0_a8_3 900)))
(assert (or (and (<= 25 a5_0_a8_4) (<= a5_0_a8_4 592)) (= a5_0_a8_4 664) (= a5_0_a8_4 900)))
(assert (or (and (<= 25 a5_0_a8_5) (<= a5_0_a8_5 592)) (= a5_0_a8_5 664) (= a5_0_a8_5 900)))
(assert (and (<= 454 a5_0_i10) (<= a5_0_i10 681)))
(assert (and (<= 91 a5_0_i11) (<= a5_0_i11 987)))
(assert (and (<= 817 a5_0_i7) (<= a5_0_i7 821)))
(assert (or (and (<= 25 a5_1_a8_0) (<= a5_1_a8_0 592)) (= a5_1_a8_0 664) (= a5_1_a8_0 900)))
(assert (or (and (<= 25 a5_1_a8_1) (<= a5_1_a8_1 592)) (= a5_1_a8_1 664) (= a5_1_a8_1 900)))
(assert (or (and (<= 25 a5_1_a8_2) (<= a5_1_a8_2 592)) (= a5_1_a8_2 664) (= a5_1_a8_2 900)))
(assert (or (and (<= 25 a5_1_a8_3) (<= a5_1_a8_3 592)) (= a5_1_a8_3 664) (= a5_1_a8_3 900)))
(assert (or (and (<= 25 a5_1_a8_4) (<= a5_1_a8_4 592)) (= a5_1_a8_4 664) (= a5_1_a8_4 900)))
(assert (or (and (<= 25 a5_1_a8_5) (<= a5_1_a8_5 592)) (= a5_1_a8_5 664) (= a5_1_a8_5 900)))
(assert (and (<= 454 a5_1_i10) (<= a5_1_i10 681)))
(assert (and (<= 91 a5_1_i11) (<= a5_1_i11 987)))
(assert (and (<= 817 a5_1_i7) (<= a5_1_i7 821)))
(assert (or (and (<= 25 a5_2_a8_0) (<= a5_2_a8_0 592)) (= a5_2_a8_0 664) (= a5_2_a8_0 900)))
(assert (or (and (<= 25 a5_2_a8_1) (<= a5_2_a8_1 592)) (= a5_2_a8_1 664) (= a5_2_a8_1 900)))
(assert (or (and (<= 25 a5_2_a8_2) (<= a5_2_a8_2 592)) (= a5_2_a8_2 664) (= a5_2_a8_2 900)))
(assert (or (and (<= 25 a5_2_a8_3) (<= a5_2_a8_3 592)) (= a5_2_a8_3 664) (= a5_2_a8_3 900)))
(assert (or (and (<= 25 a5_2_a8_4) (<= a5_2_a8_4 592)) (= a5_2_a8_4 664) (= a5_2_a8_4 900)))
(assert (or (and (<= 25 a5_2_a8_5) (<= a5_2_a8_5 592)) (= a5_2_a8_5 664) (= a5_2_a8_5 900)))
(assert (and (<= 454 a5_2_i10) (<= a5_2_i10 681)))
(assert (and (<= 91 a5_2_i11) (<= a5_2_i11 987)))
(assert (and (<= 817 a5_2_i7) (<= a5_2_i7 821)))
(assert (or (and (<= 25 a5_3_a8_0) (<= a5_3_a8_0 592)) (= a5_3_a8_0 664) (= a5_3_a8_0 900)))
(assert (or (and (<= 25 a5_3_a8_1) (<= a5_3_a8_1 592)) (= a5_3_a8_1 664) (= a5_3_a8_1 900)))
(assert (or (and (<= 25 a5_3_a8_2) (<= a5_3_a8_2 592)) (= a5_3_a8_2 664) (= a5_3_a8_2 900)))
(assert (or (and (<= 25 a5_3_a8_3) (<= a5_3_a8_3 592)) (= a5_3_a8_3 664) (= a5_3_a8_3 900)))
(assert (or (and (<= 25 a5_3_a8_4) (<= a5_3_a8_4 592)) (= a5_3_a8_4 664) (= a5_3_a8_4 900)))
(assert (or (and (<= 25 a5_3_a8_5) (<= a5_3_a8_5 592)) (= a5_3_a8_5 664) (= a5_3_a8_5 900)))
(assert (and (<= 454 a5_3_i10) (<= a5_3_i10 681)))
(assert (and (<= 91 a5_3_i11) (<= a5_3_i11 987)))
(assert (and (<= 817 a5_3_i7) (<= a5_3_i7 821)))
(assert (or (and (<= 25 a5_4_a8_0) (<= a5_4_a8_0 592)) (= a5_4_a8_0 664) (= a5_4_a8_0 900)))
(assert (or (and (<= 25 a5_4_a8_1) (<= a5_4_a8_1 592)) (= a5_4_a8_1 664) (= a5_4_a8_1 900)))
(assert (or (and (<= 25 a5_4_a8_2) (<= a5_4_a8_2 592)) (= a5_4_a8_2 664) (= a5_4_a8_2 900)))
(assert (or (and (<= 25 a5_4_a8_3) (<= a5_4_a8_3 592)) (= a5_4_a8_3 664) (= a5_4_a8_3 900)))
(assert (or (and (<= 25 a5_4_a8_4) (<= a5_4_a8_4 592)) (= a5_4_a8_4 664) (= a5_4_a8_4 900)))
(assert (or (and (<= 25 a5_4_a8_5) (<= a5_4_a8_5 592)) (= a5_4_a8_5 664) (= a5_4_a8_5 900)))
(assert (and (<= 454 a5_4_i10) (<= a5_4_i10 681)))
(assert (and (<= 91 a5_4_i11) (<= a5_4_i11 987)))
(assert (and (<= 817 a5_4_i7) (<= a5_4_i7 821)))
(assert (or (and (<= 25 a5_5_a8_0) (<= a5_5_a8_0 592)) (= a5_5_a8_0 664) (= a5_5_a8_0 900)))
(assert (or (and (<= 25 a5_5_a8_1) (<= a5_5_a8_1 592)) (= a5_5_a8_1 664) (= a5_5_a8_1 900)))
(assert (or (and (<= 25 a5_5_a8_2) (<= a5_5_a8_2 592)) (= a5_5_a8_2 664) (= a5_5_a8_2 900)))
(assert (or (and (<= 25 a5_5_a8_3) (<= a5_5_a8_3 592)) (= a5_5_a8_3 664) (= a5_5_a8_3 900)))
(assert (or (and (<= 25 a5_5_a8_4) (<= a5_5_a8_4 592)) (= a5_5_a8_4 664) (= a5_5_a8_4 900)))
(assert (or (and (<= 25 a5_5_a8_5) (<= a5_5_a8_5 592)) (= a5_5_a8_5 664) (= a5_5_a8_5 900)))
(assert (and (<= 454 a5_5_i10) (<= a5_5_i10 681)))
(assert (and (<= 91 a5_5_i11) (<= a5_5_i11 987)))
(assert (and (<= 817 a5_5_i7) (<= a5_5_i7 821)))
(assert (and (<= 370 h3_i4) (<= h3_i4 472)))
(assert (or (= i1 165) (= i1 482) (= i1 540) (= i1 818) (= i1 947)))
(assert (and (<= 30 i2) (<= i2 987)))

; Formula constraint
(assert (not (=> (and (<= (* 20 a12_0) (- (* -58 a5_4_i10) (* -37 a5_3_a8_1))) (< a5_4_a8_0 a5_3_a8_4)) (and (>= a12_0 -44) (> (- -77 -15) a5_0_i10)))))

(check-sat)
(get-model)