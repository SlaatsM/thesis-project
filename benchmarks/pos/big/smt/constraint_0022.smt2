(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a10[0].a12[0] -> a10_0_a12_0
;   a10[0].a12[1] -> a10_0_a12_1
;   a10[0].a12[2] -> a10_0_a12_2
;   a10[0].a12[3] -> a10_0_a12_3
;   a10[0].a15[0] -> a10_0_a15_0
;   a10[0].a15[1] -> a10_0_a15_1
;   a10[0].a15[2] -> a10_0_a15_2
;   a10[0].a15[3] -> a10_0_a15_3
;   a10[0].a15[4] -> a10_0_a15_4
;   a10[1].a12[0] -> a10_1_a12_0
;   a10[1].a12[1] -> a10_1_a12_1
;   a10[1].a12[2] -> a10_1_a12_2
;   a10[1].a12[3] -> a10_1_a12_3
;   a10[1].a15[0] -> a10_1_a15_0
;   a10[1].a15[1] -> a10_1_a15_1
;   a10[1].a15[2] -> a10_1_a15_2
;   a10[1].a15[3] -> a10_1_a15_3
;   a10[1].a15[4] -> a10_1_a15_4
;   a10[2].a12[0] -> a10_2_a12_0
;   a10[2].a12[1] -> a10_2_a12_1
;   a10[2].a12[2] -> a10_2_a12_2
;   a10[2].a12[3] -> a10_2_a12_3
;   a10[2].a15[0] -> a10_2_a15_0
;   a10[2].a15[1] -> a10_2_a15_1
;   a10[2].a15[2] -> a10_2_a15_2
;   a10[2].a15[3] -> a10_2_a15_3
;   a10[2].a15[4] -> a10_2_a15_4
;   a10[3].a12[0] -> a10_3_a12_0
;   a10[3].a12[1] -> a10_3_a12_1
;   a10[3].a12[2] -> a10_3_a12_2
;   a10[3].a12[3] -> a10_3_a12_3
;   a10[3].a15[0] -> a10_3_a15_0
;   a10[3].a15[1] -> a10_3_a15_1
;   a10[3].a15[2] -> a10_3_a15_2
;   a10[3].a15[3] -> a10_3_a15_3
;   a10[3].a15[4] -> a10_3_a15_4
;   a10[4].a12[0] -> a10_4_a12_0
;   a10[4].a12[1] -> a10_4_a12_1
;   a10[4].a12[2] -> a10_4_a12_2
;   a10[4].a12[3] -> a10_4_a12_3
;   a10[4].a15[0] -> a10_4_a15_0
;   a10[4].a15[1] -> a10_4_a15_1
;   a10[4].a15[2] -> a10_4_a15_2
;   a10[4].a15[3] -> a10_4_a15_3
;   a10[4].a15[4] -> a10_4_a15_4
;   h1.h2.a3[0] -> h1_h2_a3_0
;   h1.h2.a3[1] -> h1_h2_a3_1
;   h1.h2.a3[2] -> h1_h2_a3_2
;   h1.h2.a5[0] -> h1_h2_a5_0
;   h1.h2.a5[1] -> h1_h2_a5_1
;   h1.h2.a5[2] -> h1_h2_a5_2
;   h1.h2.a5[3] -> h1_h2_a5_3
;   h1.h2.a5[4] -> h1_h2_a5_4
;   h1.i8 -> h1_i8
;   h1.i9 -> h1_i9
;   i23

; Variable declarations
(declare-fun a10_0_a12_0 () Int)
(declare-fun a10_0_a12_1 () Int)
(declare-fun a10_0_a12_2 () Int)
(declare-fun a10_0_a12_3 () Int)
(declare-fun a10_0_a15_0 () Int)
(declare-fun a10_0_a15_1 () Int)
(declare-fun a10_0_a15_2 () Int)
(declare-fun a10_0_a15_3 () Int)
(declare-fun a10_0_a15_4 () Int)
(declare-fun a10_1_a12_0 () Int)
(declare-fun a10_1_a12_1 () Int)
(declare-fun a10_1_a12_2 () Int)
(declare-fun a10_1_a12_3 () Int)
(declare-fun a10_1_a15_0 () Int)
(declare-fun a10_1_a15_1 () Int)
(declare-fun a10_1_a15_2 () Int)
(declare-fun a10_1_a15_3 () Int)
(declare-fun a10_1_a15_4 () Int)
(declare-fun a10_2_a12_0 () Int)
(declare-fun a10_2_a12_1 () Int)
(declare-fun a10_2_a12_2 () Int)
(declare-fun a10_2_a12_3 () Int)
(declare-fun a10_2_a15_0 () Int)
(declare-fun a10_2_a15_1 () Int)
(declare-fun a10_2_a15_2 () Int)
(declare-fun a10_2_a15_3 () Int)
(declare-fun a10_2_a15_4 () Int)
(declare-fun a10_3_a12_0 () Int)
(declare-fun a10_3_a12_1 () Int)
(declare-fun a10_3_a12_2 () Int)
(declare-fun a10_3_a12_3 () Int)
(declare-fun a10_3_a15_0 () Int)
(declare-fun a10_3_a15_1 () Int)
(declare-fun a10_3_a15_2 () Int)
(declare-fun a10_3_a15_3 () Int)
(declare-fun a10_3_a15_4 () Int)
(declare-fun a10_4_a12_0 () Int)
(declare-fun a10_4_a12_1 () Int)
(declare-fun a10_4_a12_2 () Int)
(declare-fun a10_4_a12_3 () Int)
(declare-fun a10_4_a15_0 () Int)
(declare-fun a10_4_a15_1 () Int)
(declare-fun a10_4_a15_2 () Int)
(declare-fun a10_4_a15_3 () Int)
(declare-fun a10_4_a15_4 () Int)
(declare-fun h1_h2_a3_0 () Int)
(declare-fun h1_h2_a3_1 () Int)
(declare-fun h1_h2_a3_2 () Int)
(declare-fun h1_h2_a5_0 () Int)
(declare-fun h1_h2_a5_1 () Int)
(declare-fun h1_h2_a5_2 () Int)
(declare-fun h1_h2_a5_3 () Int)
(declare-fun h1_h2_a5_4 () Int)
(declare-fun h1_i8 () Int)
(declare-fun h1_i9 () Int)
(declare-fun i23 () Int)

; Domain constraints
(assert (or (= a10_0_a12_0 331) (= a10_0_a12_0 633)))
(assert (or (= a10_0_a12_1 331) (= a10_0_a12_1 633)))
(assert (or (= a10_0_a12_2 331) (= a10_0_a12_2 633)))
(assert (or (= a10_0_a12_3 331) (= a10_0_a12_3 633)))
(assert (or (= a10_0_a15_0 322) (= a10_0_a15_0 599) (= a10_0_a15_0 971) (= a10_0_a15_0 974)))
(assert (or (= a10_0_a15_1 322) (= a10_0_a15_1 599) (= a10_0_a15_1 971) (= a10_0_a15_1 974)))
(assert (or (= a10_0_a15_2 322) (= a10_0_a15_2 599) (= a10_0_a15_2 971) (= a10_0_a15_2 974)))
(assert (or (= a10_0_a15_3 322) (= a10_0_a15_3 599) (= a10_0_a15_3 971) (= a10_0_a15_3 974)))
(assert (or (= a10_0_a15_4 322) (= a10_0_a15_4 599) (= a10_0_a15_4 971) (= a10_0_a15_4 974)))
(assert (or (= a10_1_a12_0 331) (= a10_1_a12_0 633)))
(assert (or (= a10_1_a12_1 331) (= a10_1_a12_1 633)))
(assert (or (= a10_1_a12_2 331) (= a10_1_a12_2 633)))
(assert (or (= a10_1_a12_3 331) (= a10_1_a12_3 633)))
(assert (or (= a10_1_a15_0 322) (= a10_1_a15_0 599) (= a10_1_a15_0 971) (= a10_1_a15_0 974)))
(assert (or (= a10_1_a15_1 322) (= a10_1_a15_1 599) (= a10_1_a15_1 971) (= a10_1_a15_1 974)))
(assert (or (= a10_1_a15_2 322) (= a10_1_a15_2 599) (= a10_1_a15_2 971) (= a10_1_a15_2 974)))
(assert (or (= a10_1_a15_3 322) (= a10_1_a15_3 599) (= a10_1_a15_3 971) (= a10_1_a15_3 974)))
(assert (or (= a10_1_a15_4 322) (= a10_1_a15_4 599) (= a10_1_a15_4 971) (= a10_1_a15_4 974)))
(assert (or (= a10_2_a12_0 331) (= a10_2_a12_0 633)))
(assert (or (= a10_2_a12_1 331) (= a10_2_a12_1 633)))
(assert (or (= a10_2_a12_2 331) (= a10_2_a12_2 633)))
(assert (or (= a10_2_a12_3 331) (= a10_2_a12_3 633)))
(assert (or (= a10_2_a15_0 322) (= a10_2_a15_0 599) (= a10_2_a15_0 971) (= a10_2_a15_0 974)))
(assert (or (= a10_2_a15_1 322) (= a10_2_a15_1 599) (= a10_2_a15_1 971) (= a10_2_a15_1 974)))
(assert (or (= a10_2_a15_2 322) (= a10_2_a15_2 599) (= a10_2_a15_2 971) (= a10_2_a15_2 974)))
(assert (or (= a10_2_a15_3 322) (= a10_2_a15_3 599) (= a10_2_a15_3 971) (= a10_2_a15_3 974)))
(assert (or (= a10_2_a15_4 322) (= a10_2_a15_4 599) (= a10_2_a15_4 971) (= a10_2_a15_4 974)))
(assert (or (= a10_3_a12_0 331) (= a10_3_a12_0 633)))
(assert (or (= a10_3_a12_1 331) (= a10_3_a12_1 633)))
(assert (or (= a10_3_a12_2 331) (= a10_3_a12_2 633)))
(assert (or (= a10_3_a12_3 331) (= a10_3_a12_3 633)))
(assert (or (= a10_3_a15_0 322) (= a10_3_a15_0 599) (= a10_3_a15_0 971) (= a10_3_a15_0 974)))
(assert (or (= a10_3_a15_1 322) (= a10_3_a15_1 599) (= a10_3_a15_1 971) (= a10_3_a15_1 974)))
(assert (or (= a10_3_a15_2 322) (= a10_3_a15_2 599) (= a10_3_a15_2 971) (= a10_3_a15_2 974)))
(assert (or (= a10_3_a15_3 322) (= a10_3_a15_3 599) (= a10_3_a15_3 971) (= a10_3_a15_3 974)))
(assert (or (= a10_3_a15_4 322) (= a10_3_a15_4 599) (= a10_3_a15_4 971) (= a10_3_a15_4 974)))
(assert (or (= a10_4_a12_0 331) (= a10_4_a12_0 633)))
(assert (or (= a10_4_a12_1 331) (= a10_4_a12_1 633)))
(assert (or (= a10_4_a12_2 331) (= a10_4_a12_2 633)))
(assert (or (= a10_4_a12_3 331) (= a10_4_a12_3 633)))
(assert (or (= a10_4_a15_0 322) (= a10_4_a15_0 599) (= a10_4_a15_0 971) (= a10_4_a15_0 974)))
(assert (or (= a10_4_a15_1 322) (= a10_4_a15_1 599) (= a10_4_a15_1 971) (= a10_4_a15_1 974)))
(assert (or (= a10_4_a15_2 322) (= a10_4_a15_2 599) (= a10_4_a15_2 971) (= a10_4_a15_2 974)))
(assert (or (= a10_4_a15_3 322) (= a10_4_a15_3 599) (= a10_4_a15_3 971) (= a10_4_a15_3 974)))
(assert (or (= a10_4_a15_4 322) (= a10_4_a15_4 599) (= a10_4_a15_4 971) (= a10_4_a15_4 974)))
(assert (and (<= 523 h1_h2_a3_0) (<= h1_h2_a3_0 948)))
(assert (and (<= 523 h1_h2_a3_1) (<= h1_h2_a3_1 948)))
(assert (and (<= 523 h1_h2_a3_2) (<= h1_h2_a3_2 948)))
(assert (and (<= 736 h1_h2_a5_0) (<= h1_h2_a5_0 773)))
(assert (and (<= 736 h1_h2_a5_1) (<= h1_h2_a5_1 773)))
(assert (and (<= 736 h1_h2_a5_2) (<= h1_h2_a5_2 773)))
(assert (and (<= 736 h1_h2_a5_3) (<= h1_h2_a5_3 773)))
(assert (and (<= 736 h1_h2_a5_4) (<= h1_h2_a5_4 773)))
(assert (or (= h1_i8 517) (= h1_i8 603)))
(assert (or (= h1_i9 146) (= h1_i9 167) (= h1_i9 168) (= h1_i9 653)))
(assert (or (and (<= 116 i23) (<= i23 430)) (and (<= 633 i23) (<= i23 652)) (= i23 670)))

; Formula constraint
(assert (or (and (or (> h1_h2_a5_1 (* -29 h1_h2_a5_1)) (<= a10_4_a12_0 (- -21 a10_2_a12_1))) (=> (>= a10_1_a15_0 (* -23 a10_2_a12_0)) (>= (+ a10_4_a15_0 a10_3_a15_4) h1_i8))) (and (>= (- 13 (* 16 a10_3_a15_0)) (+ 4 77)) (=> (<= a10_1_a15_3 a10_4_a12_0) (>= a10_1_a12_0 i23)))))

(check-sat)
(get-model)