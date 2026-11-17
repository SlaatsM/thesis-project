(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a7[0].a9[0] -> a7_0_a9_0
;   a7[0].a9[1] -> a7_0_a9_1
;   a7[0].a9[2] -> a7_0_a9_2
;   a7[0].a9[3] -> a7_0_a9_3
;   a7[0].a9[4] -> a7_0_a9_4
;   a7[0].a9[5] -> a7_0_a9_5
;   a7[0].i11 -> a7_0_i11
;   a7[1].a9[0] -> a7_1_a9_0
;   a7[1].a9[1] -> a7_1_a9_1
;   a7[1].a9[2] -> a7_1_a9_2
;   a7[1].a9[3] -> a7_1_a9_3
;   a7[1].a9[4] -> a7_1_a9_4
;   a7[1].a9[5] -> a7_1_a9_5
;   a7[1].i11 -> a7_1_i11
;   a7[2].a9[0] -> a7_2_a9_0
;   a7[2].a9[1] -> a7_2_a9_1
;   a7[2].a9[2] -> a7_2_a9_2
;   a7[2].a9[3] -> a7_2_a9_3
;   a7[2].a9[4] -> a7_2_a9_4
;   a7[2].a9[5] -> a7_2_a9_5
;   a7[2].i11 -> a7_2_i11
;   a7[3].a9[0] -> a7_3_a9_0
;   a7[3].a9[1] -> a7_3_a9_1
;   a7[3].a9[2] -> a7_3_a9_2
;   a7[3].a9[3] -> a7_3_a9_3
;   a7[3].a9[4] -> a7_3_a9_4
;   a7[3].a9[5] -> a7_3_a9_5
;   a7[3].i11 -> a7_3_i11
;   h3.a4[0] -> h3_a4_0
;   h3.a4[1] -> h3_a4_1
;   i1
;   i2
;   i6

; Variable declarations
(declare-fun a7_0_a9_0 () Int)
(declare-fun a7_0_a9_1 () Int)
(declare-fun a7_0_a9_2 () Int)
(declare-fun a7_0_a9_3 () Int)
(declare-fun a7_0_a9_4 () Int)
(declare-fun a7_0_a9_5 () Int)
(declare-fun a7_0_i11 () Int)
(declare-fun a7_1_a9_0 () Int)
(declare-fun a7_1_a9_1 () Int)
(declare-fun a7_1_a9_2 () Int)
(declare-fun a7_1_a9_3 () Int)
(declare-fun a7_1_a9_4 () Int)
(declare-fun a7_1_a9_5 () Int)
(declare-fun a7_1_i11 () Int)
(declare-fun a7_2_a9_0 () Int)
(declare-fun a7_2_a9_1 () Int)
(declare-fun a7_2_a9_2 () Int)
(declare-fun a7_2_a9_3 () Int)
(declare-fun a7_2_a9_4 () Int)
(declare-fun a7_2_a9_5 () Int)
(declare-fun a7_2_i11 () Int)
(declare-fun a7_3_a9_0 () Int)
(declare-fun a7_3_a9_1 () Int)
(declare-fun a7_3_a9_2 () Int)
(declare-fun a7_3_a9_3 () Int)
(declare-fun a7_3_a9_4 () Int)
(declare-fun a7_3_a9_5 () Int)
(declare-fun a7_3_i11 () Int)
(declare-fun h3_a4_0 () Int)
(declare-fun h3_a4_1 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i6 () Int)

; Domain constraints
(assert (or (= a7_0_a9_0 -576) (and (<= -562 a7_0_a9_0) (<= a7_0_a9_0 403))))
(assert (or (= a7_0_a9_1 -576) (and (<= -562 a7_0_a9_1) (<= a7_0_a9_1 403))))
(assert (or (= a7_0_a9_2 -576) (and (<= -562 a7_0_a9_2) (<= a7_0_a9_2 403))))
(assert (or (= a7_0_a9_3 -576) (and (<= -562 a7_0_a9_3) (<= a7_0_a9_3 403))))
(assert (or (= a7_0_a9_4 -576) (and (<= -562 a7_0_a9_4) (<= a7_0_a9_4 403))))
(assert (or (= a7_0_a9_5 -576) (and (<= -562 a7_0_a9_5) (<= a7_0_a9_5 403))))
(assert (and (<= -579 a7_0_i11) (<= a7_0_i11 737)))
(assert (or (= a7_1_a9_0 -576) (and (<= -562 a7_1_a9_0) (<= a7_1_a9_0 403))))
(assert (or (= a7_1_a9_1 -576) (and (<= -562 a7_1_a9_1) (<= a7_1_a9_1 403))))
(assert (or (= a7_1_a9_2 -576) (and (<= -562 a7_1_a9_2) (<= a7_1_a9_2 403))))
(assert (or (= a7_1_a9_3 -576) (and (<= -562 a7_1_a9_3) (<= a7_1_a9_3 403))))
(assert (or (= a7_1_a9_4 -576) (and (<= -562 a7_1_a9_4) (<= a7_1_a9_4 403))))
(assert (or (= a7_1_a9_5 -576) (and (<= -562 a7_1_a9_5) (<= a7_1_a9_5 403))))
(assert (and (<= -579 a7_1_i11) (<= a7_1_i11 737)))
(assert (or (= a7_2_a9_0 -576) (and (<= -562 a7_2_a9_0) (<= a7_2_a9_0 403))))
(assert (or (= a7_2_a9_1 -576) (and (<= -562 a7_2_a9_1) (<= a7_2_a9_1 403))))
(assert (or (= a7_2_a9_2 -576) (and (<= -562 a7_2_a9_2) (<= a7_2_a9_2 403))))
(assert (or (= a7_2_a9_3 -576) (and (<= -562 a7_2_a9_3) (<= a7_2_a9_3 403))))
(assert (or (= a7_2_a9_4 -576) (and (<= -562 a7_2_a9_4) (<= a7_2_a9_4 403))))
(assert (or (= a7_2_a9_5 -576) (and (<= -562 a7_2_a9_5) (<= a7_2_a9_5 403))))
(assert (and (<= -579 a7_2_i11) (<= a7_2_i11 737)))
(assert (or (= a7_3_a9_0 -576) (and (<= -562 a7_3_a9_0) (<= a7_3_a9_0 403))))
(assert (or (= a7_3_a9_1 -576) (and (<= -562 a7_3_a9_1) (<= a7_3_a9_1 403))))
(assert (or (= a7_3_a9_2 -576) (and (<= -562 a7_3_a9_2) (<= a7_3_a9_2 403))))
(assert (or (= a7_3_a9_3 -576) (and (<= -562 a7_3_a9_3) (<= a7_3_a9_3 403))))
(assert (or (= a7_3_a9_4 -576) (and (<= -562 a7_3_a9_4) (<= a7_3_a9_4 403))))
(assert (or (= a7_3_a9_5 -576) (and (<= -562 a7_3_a9_5) (<= a7_3_a9_5 403))))
(assert (and (<= -579 a7_3_i11) (<= a7_3_i11 737)))
(assert (or (= h3_a4_0 -833) (= h3_a4_0 -736) (= h3_a4_0 -469) (= h3_a4_0 -439) (= h3_a4_0 -334)))
(assert (or (= h3_a4_1 -833) (= h3_a4_1 -736) (= h3_a4_1 -469) (= h3_a4_1 -439) (= h3_a4_1 -334)))
(assert (or (= i1 -907) (and (<= -12 i1) (<= i1 50))))
(assert (or (= i2 -913) (and (<= -881 i2) (<= i2 561))))
(assert (and (<= -565 i6) (<= i6 454)))

; Formula constraint
(assert (<= -44 a7_2_a9_3))

(check-sat)
(get-model)