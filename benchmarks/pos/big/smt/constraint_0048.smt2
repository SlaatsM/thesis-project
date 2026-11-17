(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a4[0].a6[0] -> a4_0_a6_0
;   a4[0].a6[1] -> a4_0_a6_1
;   a4[0].a6[2] -> a4_0_a6_2
;   a4[0].a6[3] -> a4_0_a6_3
;   a4[0].a6[4] -> a4_0_a6_4
;   a4[0].i8 -> a4_0_i8
;   a4[1].a6[0] -> a4_1_a6_0
;   a4[1].a6[1] -> a4_1_a6_1
;   a4[1].a6[2] -> a4_1_a6_2
;   a4[1].a6[3] -> a4_1_a6_3
;   a4[1].a6[4] -> a4_1_a6_4
;   a4[1].i8 -> a4_1_i8
;   a4[2].a6[0] -> a4_2_a6_0
;   a4[2].a6[1] -> a4_2_a6_1
;   a4[2].a6[2] -> a4_2_a6_2
;   a4[2].a6[3] -> a4_2_a6_3
;   a4[2].a6[4] -> a4_2_a6_4
;   a4[2].i8 -> a4_2_i8
;   a4[3].a6[0] -> a4_3_a6_0
;   a4[3].a6[1] -> a4_3_a6_1
;   a4[3].a6[2] -> a4_3_a6_2
;   a4[3].a6[3] -> a4_3_a6_3
;   a4[3].a6[4] -> a4_3_a6_4
;   a4[3].i8 -> a4_3_i8
;   a4[4].a6[0] -> a4_4_a6_0
;   a4[4].a6[1] -> a4_4_a6_1
;   a4[4].a6[2] -> a4_4_a6_2
;   a4[4].a6[3] -> a4_4_a6_3
;   a4[4].a6[4] -> a4_4_a6_4
;   a4[4].i8 -> a4_4_i8
;   h10.a11[0][0] -> h10_a11_0_0
;   h10.a11[0][1] -> h10_a11_0_1
;   h10.a11[0][2] -> h10_a11_0_2
;   h10.a11[1][0] -> h10_a11_1_0
;   h10.a11[1][1] -> h10_a11_1_1
;   h10.a11[1][2] -> h10_a11_1_2
;   h10.a11[2][0] -> h10_a11_2_0
;   h10.a11[2][1] -> h10_a11_2_1
;   h10.a11[2][2] -> h10_a11_2_2
;   h10.a11[3][0] -> h10_a11_3_0
;   h10.a11[3][1] -> h10_a11_3_1
;   h10.a11[3][2] -> h10_a11_3_2
;   h2.i3 -> h2_i3
;   i1

; Variable declarations
(declare-fun a4_0_a6_0 () Int)
(declare-fun a4_0_a6_1 () Int)
(declare-fun a4_0_a6_2 () Int)
(declare-fun a4_0_a6_3 () Int)
(declare-fun a4_0_a6_4 () Int)
(declare-fun a4_0_i8 () Int)
(declare-fun a4_1_a6_0 () Int)
(declare-fun a4_1_a6_1 () Int)
(declare-fun a4_1_a6_2 () Int)
(declare-fun a4_1_a6_3 () Int)
(declare-fun a4_1_a6_4 () Int)
(declare-fun a4_1_i8 () Int)
(declare-fun a4_2_a6_0 () Int)
(declare-fun a4_2_a6_1 () Int)
(declare-fun a4_2_a6_2 () Int)
(declare-fun a4_2_a6_3 () Int)
(declare-fun a4_2_a6_4 () Int)
(declare-fun a4_2_i8 () Int)
(declare-fun a4_3_a6_0 () Int)
(declare-fun a4_3_a6_1 () Int)
(declare-fun a4_3_a6_2 () Int)
(declare-fun a4_3_a6_3 () Int)
(declare-fun a4_3_a6_4 () Int)
(declare-fun a4_3_i8 () Int)
(declare-fun a4_4_a6_0 () Int)
(declare-fun a4_4_a6_1 () Int)
(declare-fun a4_4_a6_2 () Int)
(declare-fun a4_4_a6_3 () Int)
(declare-fun a4_4_a6_4 () Int)
(declare-fun a4_4_i8 () Int)
(declare-fun h10_a11_0_0 () Int)
(declare-fun h10_a11_0_1 () Int)
(declare-fun h10_a11_0_2 () Int)
(declare-fun h10_a11_1_0 () Int)
(declare-fun h10_a11_1_1 () Int)
(declare-fun h10_a11_1_2 () Int)
(declare-fun h10_a11_2_0 () Int)
(declare-fun h10_a11_2_1 () Int)
(declare-fun h10_a11_2_2 () Int)
(declare-fun h10_a11_3_0 () Int)
(declare-fun h10_a11_3_1 () Int)
(declare-fun h10_a11_3_2 () Int)
(declare-fun h2_i3 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 854 a4_0_a6_0) (<= a4_0_a6_0 906)))
(assert (and (<= 854 a4_0_a6_1) (<= a4_0_a6_1 906)))
(assert (and (<= 854 a4_0_a6_2) (<= a4_0_a6_2 906)))
(assert (and (<= 854 a4_0_a6_3) (<= a4_0_a6_3 906)))
(assert (and (<= 854 a4_0_a6_4) (<= a4_0_a6_4 906)))
(assert (or (= a4_0_i8 101) (= a4_0_i8 396) (= a4_0_i8 831) (= a4_0_i8 947) (= a4_0_i8 985)))
(assert (and (<= 854 a4_1_a6_0) (<= a4_1_a6_0 906)))
(assert (and (<= 854 a4_1_a6_1) (<= a4_1_a6_1 906)))
(assert (and (<= 854 a4_1_a6_2) (<= a4_1_a6_2 906)))
(assert (and (<= 854 a4_1_a6_3) (<= a4_1_a6_3 906)))
(assert (and (<= 854 a4_1_a6_4) (<= a4_1_a6_4 906)))
(assert (or (= a4_1_i8 101) (= a4_1_i8 396) (= a4_1_i8 831) (= a4_1_i8 947) (= a4_1_i8 985)))
(assert (and (<= 854 a4_2_a6_0) (<= a4_2_a6_0 906)))
(assert (and (<= 854 a4_2_a6_1) (<= a4_2_a6_1 906)))
(assert (and (<= 854 a4_2_a6_2) (<= a4_2_a6_2 906)))
(assert (and (<= 854 a4_2_a6_3) (<= a4_2_a6_3 906)))
(assert (and (<= 854 a4_2_a6_4) (<= a4_2_a6_4 906)))
(assert (or (= a4_2_i8 101) (= a4_2_i8 396) (= a4_2_i8 831) (= a4_2_i8 947) (= a4_2_i8 985)))
(assert (and (<= 854 a4_3_a6_0) (<= a4_3_a6_0 906)))
(assert (and (<= 854 a4_3_a6_1) (<= a4_3_a6_1 906)))
(assert (and (<= 854 a4_3_a6_2) (<= a4_3_a6_2 906)))
(assert (and (<= 854 a4_3_a6_3) (<= a4_3_a6_3 906)))
(assert (and (<= 854 a4_3_a6_4) (<= a4_3_a6_4 906)))
(assert (or (= a4_3_i8 101) (= a4_3_i8 396) (= a4_3_i8 831) (= a4_3_i8 947) (= a4_3_i8 985)))
(assert (and (<= 854 a4_4_a6_0) (<= a4_4_a6_0 906)))
(assert (and (<= 854 a4_4_a6_1) (<= a4_4_a6_1 906)))
(assert (and (<= 854 a4_4_a6_2) (<= a4_4_a6_2 906)))
(assert (and (<= 854 a4_4_a6_3) (<= a4_4_a6_3 906)))
(assert (and (<= 854 a4_4_a6_4) (<= a4_4_a6_4 906)))
(assert (or (= a4_4_i8 101) (= a4_4_i8 396) (= a4_4_i8 831) (= a4_4_i8 947) (= a4_4_i8 985)))
(assert (and (<= 88 h10_a11_0_0) (<= h10_a11_0_0 122)))
(assert (and (<= 88 h10_a11_0_1) (<= h10_a11_0_1 122)))
(assert (and (<= 88 h10_a11_0_2) (<= h10_a11_0_2 122)))
(assert (and (<= 88 h10_a11_1_0) (<= h10_a11_1_0 122)))
(assert (and (<= 88 h10_a11_1_1) (<= h10_a11_1_1 122)))
(assert (and (<= 88 h10_a11_1_2) (<= h10_a11_1_2 122)))
(assert (and (<= 88 h10_a11_2_0) (<= h10_a11_2_0 122)))
(assert (and (<= 88 h10_a11_2_1) (<= h10_a11_2_1 122)))
(assert (and (<= 88 h10_a11_2_2) (<= h10_a11_2_2 122)))
(assert (and (<= 88 h10_a11_3_0) (<= h10_a11_3_0 122)))
(assert (and (<= 88 h10_a11_3_1) (<= h10_a11_3_1 122)))
(assert (and (<= 88 h10_a11_3_2) (<= h10_a11_3_2 122)))
(assert (or (= h2_i3 204) (= h2_i3 350)))
(assert (or (= i1 353) (= i1 376) (= i1 510) (and (<= 811 i1) (<= i1 914))))

; Formula constraint
(assert (or (>= (- (* 29 a4_1_i8) 98) a4_2_i8) (=> (> (+ a4_3_a6_1 (- a4_1_i8 95)) 28) (or (>= (* 11 a4_2_a6_4) (- -36 a4_1_i8)) (< a4_3_a6_0 a4_1_a6_0)))))

(check-sat)
(get-model)