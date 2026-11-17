(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0].a5[0] -> a1_0_a5_0
;   a1[0].a5[1] -> a1_0_a5_1
;   a1[0].a5[2] -> a1_0_a5_2
;   a1[0].a5[3] -> a1_0_a5_3
;   a1[0].i3 -> a1_0_i3
;   a1[0].i4 -> a1_0_i4
;   a1[1].a5[0] -> a1_1_a5_0
;   a1[1].a5[1] -> a1_1_a5_1
;   a1[1].a5[2] -> a1_1_a5_2
;   a1[1].a5[3] -> a1_1_a5_3
;   a1[1].i3 -> a1_1_i3
;   a1[1].i4 -> a1_1_i4
;   a1[2].a5[0] -> a1_2_a5_0
;   a1[2].a5[1] -> a1_2_a5_1
;   a1[2].a5[2] -> a1_2_a5_2
;   a1[2].a5[3] -> a1_2_a5_3
;   a1[2].i3 -> a1_2_i3
;   a1[2].i4 -> a1_2_i4
;   a1[3].a5[0] -> a1_3_a5_0
;   a1[3].a5[1] -> a1_3_a5_1
;   a1[3].a5[2] -> a1_3_a5_2
;   a1[3].a5[3] -> a1_3_a5_3
;   a1[3].i3 -> a1_3_i3
;   a1[3].i4 -> a1_3_i4
;   a1[4].a5[0] -> a1_4_a5_0
;   a1[4].a5[1] -> a1_4_a5_1
;   a1[4].a5[2] -> a1_4_a5_2
;   a1[4].a5[3] -> a1_4_a5_3
;   a1[4].i3 -> a1_4_i3
;   a1[4].i4 -> a1_4_i4
;   a1[5].a5[0] -> a1_5_a5_0
;   a1[5].a5[1] -> a1_5_a5_1
;   a1[5].a5[2] -> a1_5_a5_2
;   a1[5].a5[3] -> a1_5_a5_3
;   a1[5].i3 -> a1_5_i3
;   a1[5].i4 -> a1_5_i4
;   h9.a10[0][0] -> h9_a10_0_0
;   h9.a10[0][1] -> h9_a10_0_1
;   h9.a10[1][0] -> h9_a10_1_0
;   h9.a10[1][1] -> h9_a10_1_1
;   h9.a10[2][0] -> h9_a10_2_0
;   h9.a10[2][1] -> h9_a10_2_1
;   h9.a10[3][0] -> h9_a10_3_0
;   h9.a10[3][1] -> h9_a10_3_1
;   h9.h15.i17 -> h9_h15_i17
;   h9.h15.i18 -> h9_h15_i18
;   h9.i13 -> h9_i13
;   h9.i14 -> h9_i14
;   i7
;   i8

; Variable declarations
(declare-fun a1_0_a5_0 () Int)
(declare-fun a1_0_a5_1 () Int)
(declare-fun a1_0_a5_2 () Int)
(declare-fun a1_0_a5_3 () Int)
(declare-fun a1_0_i3 () Int)
(declare-fun a1_0_i4 () Int)
(declare-fun a1_1_a5_0 () Int)
(declare-fun a1_1_a5_1 () Int)
(declare-fun a1_1_a5_2 () Int)
(declare-fun a1_1_a5_3 () Int)
(declare-fun a1_1_i3 () Int)
(declare-fun a1_1_i4 () Int)
(declare-fun a1_2_a5_0 () Int)
(declare-fun a1_2_a5_1 () Int)
(declare-fun a1_2_a5_2 () Int)
(declare-fun a1_2_a5_3 () Int)
(declare-fun a1_2_i3 () Int)
(declare-fun a1_2_i4 () Int)
(declare-fun a1_3_a5_0 () Int)
(declare-fun a1_3_a5_1 () Int)
(declare-fun a1_3_a5_2 () Int)
(declare-fun a1_3_a5_3 () Int)
(declare-fun a1_3_i3 () Int)
(declare-fun a1_3_i4 () Int)
(declare-fun a1_4_a5_0 () Int)
(declare-fun a1_4_a5_1 () Int)
(declare-fun a1_4_a5_2 () Int)
(declare-fun a1_4_a5_3 () Int)
(declare-fun a1_4_i3 () Int)
(declare-fun a1_4_i4 () Int)
(declare-fun a1_5_a5_0 () Int)
(declare-fun a1_5_a5_1 () Int)
(declare-fun a1_5_a5_2 () Int)
(declare-fun a1_5_a5_3 () Int)
(declare-fun a1_5_i3 () Int)
(declare-fun a1_5_i4 () Int)
(declare-fun h9_a10_0_0 () Int)
(declare-fun h9_a10_0_1 () Int)
(declare-fun h9_a10_1_0 () Int)
(declare-fun h9_a10_1_1 () Int)
(declare-fun h9_a10_2_0 () Int)
(declare-fun h9_a10_2_1 () Int)
(declare-fun h9_a10_3_0 () Int)
(declare-fun h9_a10_3_1 () Int)
(declare-fun h9_h15_i17 () Int)
(declare-fun h9_h15_i18 () Int)
(declare-fun h9_i13 () Int)
(declare-fun h9_i14 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)

; Domain constraints
(assert (or (= a1_0_a5_0 -919) (= a1_0_a5_0 -799) (= a1_0_a5_0 -256) (= a1_0_a5_0 140)))
(assert (or (= a1_0_a5_1 -919) (= a1_0_a5_1 -799) (= a1_0_a5_1 -256) (= a1_0_a5_1 140)))
(assert (or (= a1_0_a5_2 -919) (= a1_0_a5_2 -799) (= a1_0_a5_2 -256) (= a1_0_a5_2 140)))
(assert (or (= a1_0_a5_3 -919) (= a1_0_a5_3 -799) (= a1_0_a5_3 -256) (= a1_0_a5_3 140)))
(assert (or (and (<= -871 a1_0_i3) (<= a1_0_i3 -220)) (and (<= -90 a1_0_i3) (<= a1_0_i3 598))))
(assert (or (= a1_0_i4 -551) (= a1_0_i4 239) (= a1_0_i4 297) (= a1_0_i4 712)))
(assert (or (= a1_1_a5_0 -919) (= a1_1_a5_0 -799) (= a1_1_a5_0 -256) (= a1_1_a5_0 140)))
(assert (or (= a1_1_a5_1 -919) (= a1_1_a5_1 -799) (= a1_1_a5_1 -256) (= a1_1_a5_1 140)))
(assert (or (= a1_1_a5_2 -919) (= a1_1_a5_2 -799) (= a1_1_a5_2 -256) (= a1_1_a5_2 140)))
(assert (or (= a1_1_a5_3 -919) (= a1_1_a5_3 -799) (= a1_1_a5_3 -256) (= a1_1_a5_3 140)))
(assert (or (and (<= -871 a1_1_i3) (<= a1_1_i3 -220)) (and (<= -90 a1_1_i3) (<= a1_1_i3 598))))
(assert (or (= a1_1_i4 -551) (= a1_1_i4 239) (= a1_1_i4 297) (= a1_1_i4 712)))
(assert (or (= a1_2_a5_0 -919) (= a1_2_a5_0 -799) (= a1_2_a5_0 -256) (= a1_2_a5_0 140)))
(assert (or (= a1_2_a5_1 -919) (= a1_2_a5_1 -799) (= a1_2_a5_1 -256) (= a1_2_a5_1 140)))
(assert (or (= a1_2_a5_2 -919) (= a1_2_a5_2 -799) (= a1_2_a5_2 -256) (= a1_2_a5_2 140)))
(assert (or (= a1_2_a5_3 -919) (= a1_2_a5_3 -799) (= a1_2_a5_3 -256) (= a1_2_a5_3 140)))
(assert (or (and (<= -871 a1_2_i3) (<= a1_2_i3 -220)) (and (<= -90 a1_2_i3) (<= a1_2_i3 598))))
(assert (or (= a1_2_i4 -551) (= a1_2_i4 239) (= a1_2_i4 297) (= a1_2_i4 712)))
(assert (or (= a1_3_a5_0 -919) (= a1_3_a5_0 -799) (= a1_3_a5_0 -256) (= a1_3_a5_0 140)))
(assert (or (= a1_3_a5_1 -919) (= a1_3_a5_1 -799) (= a1_3_a5_1 -256) (= a1_3_a5_1 140)))
(assert (or (= a1_3_a5_2 -919) (= a1_3_a5_2 -799) (= a1_3_a5_2 -256) (= a1_3_a5_2 140)))
(assert (or (= a1_3_a5_3 -919) (= a1_3_a5_3 -799) (= a1_3_a5_3 -256) (= a1_3_a5_3 140)))
(assert (or (and (<= -871 a1_3_i3) (<= a1_3_i3 -220)) (and (<= -90 a1_3_i3) (<= a1_3_i3 598))))
(assert (or (= a1_3_i4 -551) (= a1_3_i4 239) (= a1_3_i4 297) (= a1_3_i4 712)))
(assert (or (= a1_4_a5_0 -919) (= a1_4_a5_0 -799) (= a1_4_a5_0 -256) (= a1_4_a5_0 140)))
(assert (or (= a1_4_a5_1 -919) (= a1_4_a5_1 -799) (= a1_4_a5_1 -256) (= a1_4_a5_1 140)))
(assert (or (= a1_4_a5_2 -919) (= a1_4_a5_2 -799) (= a1_4_a5_2 -256) (= a1_4_a5_2 140)))
(assert (or (= a1_4_a5_3 -919) (= a1_4_a5_3 -799) (= a1_4_a5_3 -256) (= a1_4_a5_3 140)))
(assert (or (and (<= -871 a1_4_i3) (<= a1_4_i3 -220)) (and (<= -90 a1_4_i3) (<= a1_4_i3 598))))
(assert (or (= a1_4_i4 -551) (= a1_4_i4 239) (= a1_4_i4 297) (= a1_4_i4 712)))
(assert (or (= a1_5_a5_0 -919) (= a1_5_a5_0 -799) (= a1_5_a5_0 -256) (= a1_5_a5_0 140)))
(assert (or (= a1_5_a5_1 -919) (= a1_5_a5_1 -799) (= a1_5_a5_1 -256) (= a1_5_a5_1 140)))
(assert (or (= a1_5_a5_2 -919) (= a1_5_a5_2 -799) (= a1_5_a5_2 -256) (= a1_5_a5_2 140)))
(assert (or (= a1_5_a5_3 -919) (= a1_5_a5_3 -799) (= a1_5_a5_3 -256) (= a1_5_a5_3 140)))
(assert (or (and (<= -871 a1_5_i3) (<= a1_5_i3 -220)) (and (<= -90 a1_5_i3) (<= a1_5_i3 598))))
(assert (or (= a1_5_i4 -551) (= a1_5_i4 239) (= a1_5_i4 297) (= a1_5_i4 712)))
(assert (and (<= -580 h9_a10_0_0) (<= h9_a10_0_0 508)))
(assert (and (<= -580 h9_a10_0_1) (<= h9_a10_0_1 508)))
(assert (and (<= -580 h9_a10_1_0) (<= h9_a10_1_0 508)))
(assert (and (<= -580 h9_a10_1_1) (<= h9_a10_1_1 508)))
(assert (and (<= -580 h9_a10_2_0) (<= h9_a10_2_0 508)))
(assert (and (<= -580 h9_a10_2_1) (<= h9_a10_2_1 508)))
(assert (and (<= -580 h9_a10_3_0) (<= h9_a10_3_0 508)))
(assert (and (<= -580 h9_a10_3_1) (<= h9_a10_3_1 508)))
(assert (and (<= -913 h9_h15_i17) (<= h9_h15_i17 635)))
(assert (or (= h9_h15_i18 -908) (and (<= -614 h9_h15_i18) (<= h9_h15_i18 790)) (= h9_h15_i18 949)))
(assert (and (<= -614 h9_i13) (<= h9_i13 167)))
(assert (or (= h9_i14 -525) (and (<= 42 h9_i14) (<= h9_i14 387))))
(assert (or (= i7 -492) (= i7 -366) (= i7 -355) (= i7 -38) (= i7 83)))
(assert (or (= i8 -586) (= i8 86) (= i8 118) (= i8 682) (= i8 750)))

; Formula constraint
(assert (>= (* 6 h9_i13) a1_4_i4))

(check-sat)
(get-model)