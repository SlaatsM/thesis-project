(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a4[0].a6[0] -> a4_0_a6_0
;   a4[0].a6[1] -> a4_0_a6_1
;   a4[0].a6[2] -> a4_0_a6_2
;   a4[0].a9[0] -> a4_0_a9_0
;   a4[0].a9[1] -> a4_0_a9_1
;   a4[0].a9[2] -> a4_0_a9_2
;   a4[0].a9[3] -> a4_0_a9_3
;   a4[0].a9[4] -> a4_0_a9_4
;   a4[0].a9[5] -> a4_0_a9_5
;   a4[1].a6[0] -> a4_1_a6_0
;   a4[1].a6[1] -> a4_1_a6_1
;   a4[1].a6[2] -> a4_1_a6_2
;   a4[1].a9[0] -> a4_1_a9_0
;   a4[1].a9[1] -> a4_1_a9_1
;   a4[1].a9[2] -> a4_1_a9_2
;   a4[1].a9[3] -> a4_1_a9_3
;   a4[1].a9[4] -> a4_1_a9_4
;   a4[1].a9[5] -> a4_1_a9_5
;   h14.a15[0] -> h14_a15_0
;   h14.a15[1] -> h14_a15_1
;   h14.a15[2] -> h14_a15_2
;   h14.a15[3] -> h14_a15_3
;   h14.a15[4] -> h14_a15_4
;   h14.a21[0] -> h14_a21_0
;   h14.a21[1] -> h14_a21_1
;   h14.a21[2] -> h14_a21_2
;   h14.a21[3] -> h14_a21_3
;   h14.a21[4] -> h14_a21_4
;   h14.h18.i19 -> h14_h18_i19
;   h14.h18.i20 -> h14_h18_i20
;   h14.i17 -> h14_i17
;   h2.i3 -> h2_i3
;   i1

; Variable declarations
(declare-fun a4_0_a6_0 () Int)
(declare-fun a4_0_a6_1 () Int)
(declare-fun a4_0_a6_2 () Int)
(declare-fun a4_0_a9_0 () Int)
(declare-fun a4_0_a9_1 () Int)
(declare-fun a4_0_a9_2 () Int)
(declare-fun a4_0_a9_3 () Int)
(declare-fun a4_0_a9_4 () Int)
(declare-fun a4_0_a9_5 () Int)
(declare-fun a4_1_a6_0 () Int)
(declare-fun a4_1_a6_1 () Int)
(declare-fun a4_1_a6_2 () Int)
(declare-fun a4_1_a9_0 () Int)
(declare-fun a4_1_a9_1 () Int)
(declare-fun a4_1_a9_2 () Int)
(declare-fun a4_1_a9_3 () Int)
(declare-fun a4_1_a9_4 () Int)
(declare-fun a4_1_a9_5 () Int)
(declare-fun h14_a15_0 () Int)
(declare-fun h14_a15_1 () Int)
(declare-fun h14_a15_2 () Int)
(declare-fun h14_a15_3 () Int)
(declare-fun h14_a15_4 () Int)
(declare-fun h14_a21_0 () Int)
(declare-fun h14_a21_1 () Int)
(declare-fun h14_a21_2 () Int)
(declare-fun h14_a21_3 () Int)
(declare-fun h14_a21_4 () Int)
(declare-fun h14_h18_i19 () Int)
(declare-fun h14_h18_i20 () Int)
(declare-fun h14_i17 () Int)
(declare-fun h2_i3 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 225 a4_0_a6_0) (<= a4_0_a6_0 475)))
(assert (and (<= 225 a4_0_a6_1) (<= a4_0_a6_1 475)))
(assert (and (<= 225 a4_0_a6_2) (<= a4_0_a6_2 475)))
(assert (or (= a4_0_a9_0 224) (= a4_0_a9_0 298) (= a4_0_a9_0 421) (= a4_0_a9_0 894)))
(assert (or (= a4_0_a9_1 224) (= a4_0_a9_1 298) (= a4_0_a9_1 421) (= a4_0_a9_1 894)))
(assert (or (= a4_0_a9_2 224) (= a4_0_a9_2 298) (= a4_0_a9_2 421) (= a4_0_a9_2 894)))
(assert (or (= a4_0_a9_3 224) (= a4_0_a9_3 298) (= a4_0_a9_3 421) (= a4_0_a9_3 894)))
(assert (or (= a4_0_a9_4 224) (= a4_0_a9_4 298) (= a4_0_a9_4 421) (= a4_0_a9_4 894)))
(assert (or (= a4_0_a9_5 224) (= a4_0_a9_5 298) (= a4_0_a9_5 421) (= a4_0_a9_5 894)))
(assert (and (<= 225 a4_1_a6_0) (<= a4_1_a6_0 475)))
(assert (and (<= 225 a4_1_a6_1) (<= a4_1_a6_1 475)))
(assert (and (<= 225 a4_1_a6_2) (<= a4_1_a6_2 475)))
(assert (or (= a4_1_a9_0 224) (= a4_1_a9_0 298) (= a4_1_a9_0 421) (= a4_1_a9_0 894)))
(assert (or (= a4_1_a9_1 224) (= a4_1_a9_1 298) (= a4_1_a9_1 421) (= a4_1_a9_1 894)))
(assert (or (= a4_1_a9_2 224) (= a4_1_a9_2 298) (= a4_1_a9_2 421) (= a4_1_a9_2 894)))
(assert (or (= a4_1_a9_3 224) (= a4_1_a9_3 298) (= a4_1_a9_3 421) (= a4_1_a9_3 894)))
(assert (or (= a4_1_a9_4 224) (= a4_1_a9_4 298) (= a4_1_a9_4 421) (= a4_1_a9_4 894)))
(assert (or (= a4_1_a9_5 224) (= a4_1_a9_5 298) (= a4_1_a9_5 421) (= a4_1_a9_5 894)))
(assert (and (<= 365 h14_a15_0) (<= h14_a15_0 428)))
(assert (and (<= 365 h14_a15_1) (<= h14_a15_1 428)))
(assert (and (<= 365 h14_a15_2) (<= h14_a15_2 428)))
(assert (and (<= 365 h14_a15_3) (<= h14_a15_3 428)))
(assert (and (<= 365 h14_a15_4) (<= h14_a15_4 428)))
(assert (and (<= 275 h14_a21_0) (<= h14_a21_0 365)))
(assert (and (<= 275 h14_a21_1) (<= h14_a21_1 365)))
(assert (and (<= 275 h14_a21_2) (<= h14_a21_2 365)))
(assert (and (<= 275 h14_a21_3) (<= h14_a21_3 365)))
(assert (and (<= 275 h14_a21_4) (<= h14_a21_4 365)))
(assert (and (<= 164 h14_h18_i19) (<= h14_h18_i19 482)))
(assert (and (<= 509 h14_h18_i20) (<= h14_h18_i20 839)))
(assert (and (<= 543 h14_i17) (<= h14_i17 998)))
(assert (or (= h2_i3 521) (= h2_i3 561)))
(assert (or (= i1 401) (= i1 633) (= i1 889) (= i1 900)))

; Formula constraint
(assert (=> (and (=> (>= (* 50 a4_0_a9_3) a4_0_a6_1) (not (= -32 (* -37 h14_a15_1)))) (not (= (+ (+ a4_1_a6_0 h14_a15_4) (* 24 h14_a21_4)) 46))) (not (< (* 74 h14_a15_0) h2_i3))))

(check-sat)
(get-model)