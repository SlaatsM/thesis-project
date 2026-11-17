(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a12[0] -> a12_0
;   a12[1] -> a12_1
;   a12[2] -> a12_2
;   a12[3] -> a12_3
;   a12[4] -> a12_4
;   a14[0].a16[0] -> a14_0_a16_0
;   a14[0].a16[1] -> a14_0_a16_1
;   a14[0].a16[2] -> a14_0_a16_2
;   a14[0].a16[3] -> a14_0_a16_3
;   a14[0].a16[4] -> a14_0_a16_4
;   a14[0].a16[5] -> a14_0_a16_5
;   a14[0].a20[0] -> a14_0_a20_0
;   a14[0].i18 -> a14_0_i18
;   a14[0].i19 -> a14_0_i19
;   a14[1].a16[0] -> a14_1_a16_0
;   a14[1].a16[1] -> a14_1_a16_1
;   a14[1].a16[2] -> a14_1_a16_2
;   a14[1].a16[3] -> a14_1_a16_3
;   a14[1].a16[4] -> a14_1_a16_4
;   a14[1].a16[5] -> a14_1_a16_5
;   a14[1].a20[0] -> a14_1_a20_0
;   a14[1].i18 -> a14_1_i18
;   a14[1].i19 -> a14_1_i19
;   a14[2].a16[0] -> a14_2_a16_0
;   a14[2].a16[1] -> a14_2_a16_1
;   a14[2].a16[2] -> a14_2_a16_2
;   a14[2].a16[3] -> a14_2_a16_3
;   a14[2].a16[4] -> a14_2_a16_4
;   a14[2].a16[5] -> a14_2_a16_5
;   a14[2].a20[0] -> a14_2_a20_0
;   a14[2].i18 -> a14_2_i18
;   a14[2].i19 -> a14_2_i19
;   a14[3].a16[0] -> a14_3_a16_0
;   a14[3].a16[1] -> a14_3_a16_1
;   a14[3].a16[2] -> a14_3_a16_2
;   a14[3].a16[3] -> a14_3_a16_3
;   a14[3].a16[4] -> a14_3_a16_4
;   a14[3].a16[5] -> a14_3_a16_5
;   a14[3].a20[0] -> a14_3_a20_0
;   a14[3].i18 -> a14_3_i18
;   a14[3].i19 -> a14_3_i19
;   h1.a9[0] -> h1_a9_0
;   h1.a9[1] -> h1_a9_1
;   h1.a9[2] -> h1_a9_2
;   h1.a9[3] -> h1_a9_3
;   h1.a9[4] -> h1_a9_4
;   h1.a9[5] -> h1_a9_5
;   h1.h2.a5[0] -> h1_h2_a5_0
;   h1.h2.a5[1] -> h1_h2_a5_1
;   h1.h2.a5[2] -> h1_h2_a5_2
;   h1.h2.i3 -> h1_h2_i3
;   h1.h2.i4 -> h1_h2_i4
;   h1.h2.i7 -> h1_h2_i7
;   h1.i11 -> h1_i11
;   h1.i8 -> h1_i8
;   h22.a24[0] -> h22_a24_0
;   h22.a24[1] -> h22_a24_1
;   h22.a24[2] -> h22_a24_2
;   h22.i23 -> h22_i23
;   h22.i26 -> h22_i26
;   h27.h30.i31 -> h27_h30_i31
;   h27.h30.i33 -> h27_h30_i33
;   h27.i28 -> h27_i28
;   h27.i29 -> h27_i29
;   h27.i34 -> h27_i34

; Variable declarations
(declare-fun a12_0 () Int)
(declare-fun a12_1 () Int)
(declare-fun a12_2 () Int)
(declare-fun a12_3 () Int)
(declare-fun a12_4 () Int)
(declare-fun a14_0_a16_0 () Int)
(declare-fun a14_0_a16_1 () Int)
(declare-fun a14_0_a16_2 () Int)
(declare-fun a14_0_a16_3 () Int)
(declare-fun a14_0_a16_4 () Int)
(declare-fun a14_0_a16_5 () Int)
(declare-fun a14_0_a20_0 () Int)
(declare-fun a14_0_i18 () Int)
(declare-fun a14_0_i19 () Int)
(declare-fun a14_1_a16_0 () Int)
(declare-fun a14_1_a16_1 () Int)
(declare-fun a14_1_a16_2 () Int)
(declare-fun a14_1_a16_3 () Int)
(declare-fun a14_1_a16_4 () Int)
(declare-fun a14_1_a16_5 () Int)
(declare-fun a14_1_a20_0 () Int)
(declare-fun a14_1_i18 () Int)
(declare-fun a14_1_i19 () Int)
(declare-fun a14_2_a16_0 () Int)
(declare-fun a14_2_a16_1 () Int)
(declare-fun a14_2_a16_2 () Int)
(declare-fun a14_2_a16_3 () Int)
(declare-fun a14_2_a16_4 () Int)
(declare-fun a14_2_a16_5 () Int)
(declare-fun a14_2_a20_0 () Int)
(declare-fun a14_2_i18 () Int)
(declare-fun a14_2_i19 () Int)
(declare-fun a14_3_a16_0 () Int)
(declare-fun a14_3_a16_1 () Int)
(declare-fun a14_3_a16_2 () Int)
(declare-fun a14_3_a16_3 () Int)
(declare-fun a14_3_a16_4 () Int)
(declare-fun a14_3_a16_5 () Int)
(declare-fun a14_3_a20_0 () Int)
(declare-fun a14_3_i18 () Int)
(declare-fun a14_3_i19 () Int)
(declare-fun h1_a9_0 () Int)
(declare-fun h1_a9_1 () Int)
(declare-fun h1_a9_2 () Int)
(declare-fun h1_a9_3 () Int)
(declare-fun h1_a9_4 () Int)
(declare-fun h1_a9_5 () Int)
(declare-fun h1_h2_a5_0 () Int)
(declare-fun h1_h2_a5_1 () Int)
(declare-fun h1_h2_a5_2 () Int)
(declare-fun h1_h2_i3 () Int)
(declare-fun h1_h2_i4 () Int)
(declare-fun h1_h2_i7 () Int)
(declare-fun h1_i11 () Int)
(declare-fun h1_i8 () Int)
(declare-fun h22_a24_0 () Int)
(declare-fun h22_a24_1 () Int)
(declare-fun h22_a24_2 () Int)
(declare-fun h22_i23 () Int)
(declare-fun h22_i26 () Int)
(declare-fun h27_h30_i31 () Int)
(declare-fun h27_h30_i33 () Int)
(declare-fun h27_i28 () Int)
(declare-fun h27_i29 () Int)
(declare-fun h27_i34 () Int)

; Domain constraints
(assert (and (<= 298 a12_0) (<= a12_0 491)))
(assert (and (<= 298 a12_1) (<= a12_1 491)))
(assert (and (<= 298 a12_2) (<= a12_2 491)))
(assert (and (<= 298 a12_3) (<= a12_3 491)))
(assert (and (<= 298 a12_4) (<= a12_4 491)))
(assert (and (<= 361 a14_0_a16_0) (<= a14_0_a16_0 648)))
(assert (and (<= 361 a14_0_a16_1) (<= a14_0_a16_1 648)))
(assert (and (<= 361 a14_0_a16_2) (<= a14_0_a16_2 648)))
(assert (and (<= 361 a14_0_a16_3) (<= a14_0_a16_3 648)))
(assert (and (<= 361 a14_0_a16_4) (<= a14_0_a16_4 648)))
(assert (and (<= 361 a14_0_a16_5) (<= a14_0_a16_5 648)))
(assert (and (<= 457 a14_0_a20_0) (<= a14_0_a20_0 572)))
(assert (and (<= 650 a14_0_i18) (<= a14_0_i18 949)))
(assert (or (and (<= 98 a14_0_i19) (<= a14_0_i19 369)) (= a14_0_i19 805) (= a14_0_i19 956)))
(assert (and (<= 361 a14_1_a16_0) (<= a14_1_a16_0 648)))
(assert (and (<= 361 a14_1_a16_1) (<= a14_1_a16_1 648)))
(assert (and (<= 361 a14_1_a16_2) (<= a14_1_a16_2 648)))
(assert (and (<= 361 a14_1_a16_3) (<= a14_1_a16_3 648)))
(assert (and (<= 361 a14_1_a16_4) (<= a14_1_a16_4 648)))
(assert (and (<= 361 a14_1_a16_5) (<= a14_1_a16_5 648)))
(assert (and (<= 457 a14_1_a20_0) (<= a14_1_a20_0 572)))
(assert (and (<= 650 a14_1_i18) (<= a14_1_i18 949)))
(assert (or (and (<= 98 a14_1_i19) (<= a14_1_i19 369)) (= a14_1_i19 805) (= a14_1_i19 956)))
(assert (and (<= 361 a14_2_a16_0) (<= a14_2_a16_0 648)))
(assert (and (<= 361 a14_2_a16_1) (<= a14_2_a16_1 648)))
(assert (and (<= 361 a14_2_a16_2) (<= a14_2_a16_2 648)))
(assert (and (<= 361 a14_2_a16_3) (<= a14_2_a16_3 648)))
(assert (and (<= 361 a14_2_a16_4) (<= a14_2_a16_4 648)))
(assert (and (<= 361 a14_2_a16_5) (<= a14_2_a16_5 648)))
(assert (and (<= 457 a14_2_a20_0) (<= a14_2_a20_0 572)))
(assert (and (<= 650 a14_2_i18) (<= a14_2_i18 949)))
(assert (or (and (<= 98 a14_2_i19) (<= a14_2_i19 369)) (= a14_2_i19 805) (= a14_2_i19 956)))
(assert (and (<= 361 a14_3_a16_0) (<= a14_3_a16_0 648)))
(assert (and (<= 361 a14_3_a16_1) (<= a14_3_a16_1 648)))
(assert (and (<= 361 a14_3_a16_2) (<= a14_3_a16_2 648)))
(assert (and (<= 361 a14_3_a16_3) (<= a14_3_a16_3 648)))
(assert (and (<= 361 a14_3_a16_4) (<= a14_3_a16_4 648)))
(assert (and (<= 361 a14_3_a16_5) (<= a14_3_a16_5 648)))
(assert (and (<= 457 a14_3_a20_0) (<= a14_3_a20_0 572)))
(assert (and (<= 650 a14_3_i18) (<= a14_3_i18 949)))
(assert (or (and (<= 98 a14_3_i19) (<= a14_3_i19 369)) (= a14_3_i19 805) (= a14_3_i19 956)))
(assert (or (= h1_a9_0 298) (= h1_a9_0 581) (= h1_a9_0 654) (= h1_a9_0 715) (= h1_a9_0 974)))
(assert (or (= h1_a9_1 298) (= h1_a9_1 581) (= h1_a9_1 654) (= h1_a9_1 715) (= h1_a9_1 974)))
(assert (or (= h1_a9_2 298) (= h1_a9_2 581) (= h1_a9_2 654) (= h1_a9_2 715) (= h1_a9_2 974)))
(assert (or (= h1_a9_3 298) (= h1_a9_3 581) (= h1_a9_3 654) (= h1_a9_3 715) (= h1_a9_3 974)))
(assert (or (= h1_a9_4 298) (= h1_a9_4 581) (= h1_a9_4 654) (= h1_a9_4 715) (= h1_a9_4 974)))
(assert (or (= h1_a9_5 298) (= h1_a9_5 581) (= h1_a9_5 654) (= h1_a9_5 715) (= h1_a9_5 974)))
(assert (and (<= 533 h1_h2_a5_0) (<= h1_h2_a5_0 678)))
(assert (and (<= 533 h1_h2_a5_1) (<= h1_h2_a5_1 678)))
(assert (and (<= 533 h1_h2_a5_2) (<= h1_h2_a5_2 678)))
(assert (and (<= 189 h1_h2_i3) (<= h1_h2_i3 877)))
(assert (and (<= 337 h1_h2_i4) (<= h1_h2_i4 985)))
(assert (and (<= 557 h1_h2_i7) (<= h1_h2_i7 818)))
(assert (and (<= 6 h1_i11) (<= h1_i11 199)))
(assert (and (<= 152 h1_i8) (<= h1_i8 276)))
(assert (and (<= 40 h22_a24_0) (<= h22_a24_0 906)))
(assert (and (<= 40 h22_a24_1) (<= h22_a24_1 906)))
(assert (and (<= 40 h22_a24_2) (<= h22_a24_2 906)))
(assert (and (<= 640 h22_i23) (<= h22_i23 946)))
(assert (or (= h22_i26 383) (= h22_i26 749)))
(assert (or (= h27_h30_i31 491) (= h27_h30_i31 878) (= h27_h30_i31 959)))
(assert (and (<= 150 h27_h30_i33) (<= h27_h30_i33 964)))
(assert (and (<= 159 h27_i28) (<= h27_i28 917)))
(assert (and (<= 681 h27_i29) (<= h27_i29 753)))
(assert (or (= h27_i34 86) (= h27_i34 651) (= h27_i34 772)))

; Formula constraint
(assert (and (and (and (>= (+ (* 98 h1_i11) 65) (- 46 -30)) (> (* 64 a14_1_a16_3) h22_a24_0)) (=> (= -62 -14) (<= h1_h2_a5_2 a14_1_a16_4))) (=> (< (+ a14_3_a16_0 93) (+ (- a14_0_a16_2 36) (* -99 a14_0_i18))) (>= (+ h22_a24_2 (+ h27_i28 a14_1_a20_0)) a14_0_a16_5))))

(check-sat)
(get-model)