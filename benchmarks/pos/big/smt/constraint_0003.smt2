(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a10[0] -> a10_0
;   a1[0][0][0] -> a1_0_0_0
;   a1[0][0][1] -> a1_0_0_1
;   a1[1][0][0] -> a1_1_0_0
;   a1[1][0][1] -> a1_1_0_1
;   a1[2][0][0] -> a1_2_0_0
;   a1[2][0][1] -> a1_2_0_1
;   a1[3][0][0] -> a1_3_0_0
;   a1[3][0][1] -> a1_3_0_1
;   a1[4][0][0] -> a1_4_0_0
;   a1[4][0][1] -> a1_4_0_1
;   a5[0][0][0] -> a5_0_0_0
;   a5[0][0][1] -> a5_0_0_1
;   a5[0][0][2] -> a5_0_0_2
;   a5[1][0][0] -> a5_1_0_0
;   a5[1][0][1] -> a5_1_0_1
;   a5[1][0][2] -> a5_1_0_2
;   a5[2][0][0] -> a5_2_0_0
;   a5[2][0][1] -> a5_2_0_1
;   a5[2][0][2] -> a5_2_0_2
;   i9

; Variable declarations
(declare-fun a10_0 () Int)
(declare-fun a1_0_0_0 () Int)
(declare-fun a1_0_0_1 () Int)
(declare-fun a1_1_0_0 () Int)
(declare-fun a1_1_0_1 () Int)
(declare-fun a1_2_0_0 () Int)
(declare-fun a1_2_0_1 () Int)
(declare-fun a1_3_0_0 () Int)
(declare-fun a1_3_0_1 () Int)
(declare-fun a1_4_0_0 () Int)
(declare-fun a1_4_0_1 () Int)
(declare-fun a5_0_0_0 () Int)
(declare-fun a5_0_0_1 () Int)
(declare-fun a5_0_0_2 () Int)
(declare-fun a5_1_0_0 () Int)
(declare-fun a5_1_0_1 () Int)
(declare-fun a5_1_0_2 () Int)
(declare-fun a5_2_0_0 () Int)
(declare-fun a5_2_0_1 () Int)
(declare-fun a5_2_0_2 () Int)
(declare-fun i9 () Int)

; Domain constraints
(assert (and (<= 627 a10_0) (<= a10_0 958)))
(assert (and (<= 672 a1_0_0_0) (<= a1_0_0_0 947)))
(assert (and (<= 672 a1_0_0_1) (<= a1_0_0_1 947)))
(assert (and (<= 672 a1_1_0_0) (<= a1_1_0_0 947)))
(assert (and (<= 672 a1_1_0_1) (<= a1_1_0_1 947)))
(assert (and (<= 672 a1_2_0_0) (<= a1_2_0_0 947)))
(assert (and (<= 672 a1_2_0_1) (<= a1_2_0_1 947)))
(assert (and (<= 672 a1_3_0_0) (<= a1_3_0_0 947)))
(assert (and (<= 672 a1_3_0_1) (<= a1_3_0_1 947)))
(assert (and (<= 672 a1_4_0_0) (<= a1_4_0_0 947)))
(assert (and (<= 672 a1_4_0_1) (<= a1_4_0_1 947)))
(assert (or (= a5_0_0_0 317) (= a5_0_0_0 349) (= a5_0_0_0 359) (= a5_0_0_0 374) (= a5_0_0_0 386)))
(assert (or (= a5_0_0_1 317) (= a5_0_0_1 349) (= a5_0_0_1 359) (= a5_0_0_1 374) (= a5_0_0_1 386)))
(assert (or (= a5_0_0_2 317) (= a5_0_0_2 349) (= a5_0_0_2 359) (= a5_0_0_2 374) (= a5_0_0_2 386)))
(assert (or (= a5_1_0_0 317) (= a5_1_0_0 349) (= a5_1_0_0 359) (= a5_1_0_0 374) (= a5_1_0_0 386)))
(assert (or (= a5_1_0_1 317) (= a5_1_0_1 349) (= a5_1_0_1 359) (= a5_1_0_1 374) (= a5_1_0_1 386)))
(assert (or (= a5_1_0_2 317) (= a5_1_0_2 349) (= a5_1_0_2 359) (= a5_1_0_2 374) (= a5_1_0_2 386)))
(assert (or (= a5_2_0_0 317) (= a5_2_0_0 349) (= a5_2_0_0 359) (= a5_2_0_0 374) (= a5_2_0_0 386)))
(assert (or (= a5_2_0_1 317) (= a5_2_0_1 349) (= a5_2_0_1 359) (= a5_2_0_1 374) (= a5_2_0_1 386)))
(assert (or (= a5_2_0_2 317) (= a5_2_0_2 349) (= a5_2_0_2 359) (= a5_2_0_2 374) (= a5_2_0_2 386)))
(assert (or (= i9 18) (and (<= 114 i9) (<= i9 170)) (= i9 754)))

; Formula constraint
(assert (< a1_0_0_0 a1_4_0_0))

(check-sat)
(get-model)