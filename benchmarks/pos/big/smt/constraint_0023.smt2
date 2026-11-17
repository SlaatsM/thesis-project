(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.h2.i3 -> h1_h2_i3
;   h1.i4 -> h1_i4
;   h12.h14.a16[0] -> h12_h14_a16_0
;   h12.h14.a16[1] -> h12_h14_a16_1
;   h12.h14.a16[2] -> h12_h14_a16_2
;   h12.h14.a16[3] -> h12_h14_a16_3
;   h12.h14.a16[4] -> h12_h14_a16_4
;   h12.h14.a16[5] -> h12_h14_a16_5
;   h12.h14.a18[0] -> h12_h14_a18_0
;   h12.h14.a18[1] -> h12_h14_a18_1
;   h12.h14.a18[2] -> h12_h14_a18_2
;   h12.h14.a18[3] -> h12_h14_a18_3
;   h12.h14.a18[4] -> h12_h14_a18_4
;   h12.h14.i15 -> h12_h14_i15
;   h12.i13 -> h12_i13
;   h20.h22.i23 -> h20_h22_i23
;   h20.h22.i24 -> h20_h22_i24
;   h20.h27.a30[0] -> h20_h27_a30_0
;   h20.h27.a30[1] -> h20_h27_a30_1
;   h20.h27.a30[2] -> h20_h27_a30_2
;   h20.h27.a30[3] -> h20_h27_a30_3
;   h20.h27.a30[4] -> h20_h27_a30_4
;   h20.h27.i28 -> h20_h27_i28
;   h20.h27.i29 -> h20_h27_i29
;   h20.h27.i32 -> h20_h27_i32
;   h20.i21 -> h20_i21
;   h33.a36[0] -> h33_a36_0
;   h33.i34 -> h33_i34
;   h33.i35 -> h33_i35
;   h7.i10 -> h7_i10
;   h7.i11 -> h7_i11
;   h7.i8 -> h7_i8
;   h7.i9 -> h7_i9

; Variable declarations
(declare-fun h1_h2_i3 () Int)
(declare-fun h1_i4 () Int)
(declare-fun h12_h14_a16_0 () Int)
(declare-fun h12_h14_a16_1 () Int)
(declare-fun h12_h14_a16_2 () Int)
(declare-fun h12_h14_a16_3 () Int)
(declare-fun h12_h14_a16_4 () Int)
(declare-fun h12_h14_a16_5 () Int)
(declare-fun h12_h14_a18_0 () Int)
(declare-fun h12_h14_a18_1 () Int)
(declare-fun h12_h14_a18_2 () Int)
(declare-fun h12_h14_a18_3 () Int)
(declare-fun h12_h14_a18_4 () Int)
(declare-fun h12_h14_i15 () Int)
(declare-fun h12_i13 () Int)
(declare-fun h20_h22_i23 () Int)
(declare-fun h20_h22_i24 () Int)
(declare-fun h20_h27_a30_0 () Int)
(declare-fun h20_h27_a30_1 () Int)
(declare-fun h20_h27_a30_2 () Int)
(declare-fun h20_h27_a30_3 () Int)
(declare-fun h20_h27_a30_4 () Int)
(declare-fun h20_h27_i28 () Int)
(declare-fun h20_h27_i29 () Int)
(declare-fun h20_h27_i32 () Int)
(declare-fun h20_i21 () Int)
(declare-fun h33_a36_0 () Int)
(declare-fun h33_i34 () Int)
(declare-fun h33_i35 () Int)
(declare-fun h7_i10 () Int)
(declare-fun h7_i11 () Int)
(declare-fun h7_i8 () Int)
(declare-fun h7_i9 () Int)

; Domain constraints
(assert (or (= h1_h2_i3 336) (= h1_h2_i3 394) (= h1_h2_i3 682) (= h1_h2_i3 708)))
(assert (and (<= 539 h1_i4) (<= h1_i4 665)))
(assert (and (<= 100 h12_h14_a16_0) (<= h12_h14_a16_0 768)))
(assert (and (<= 100 h12_h14_a16_1) (<= h12_h14_a16_1 768)))
(assert (and (<= 100 h12_h14_a16_2) (<= h12_h14_a16_2 768)))
(assert (and (<= 100 h12_h14_a16_3) (<= h12_h14_a16_3 768)))
(assert (and (<= 100 h12_h14_a16_4) (<= h12_h14_a16_4 768)))
(assert (and (<= 100 h12_h14_a16_5) (<= h12_h14_a16_5 768)))
(assert (and (<= 310 h12_h14_a18_0) (<= h12_h14_a18_0 945)))
(assert (and (<= 310 h12_h14_a18_1) (<= h12_h14_a18_1 945)))
(assert (and (<= 310 h12_h14_a18_2) (<= h12_h14_a18_2 945)))
(assert (and (<= 310 h12_h14_a18_3) (<= h12_h14_a18_3 945)))
(assert (and (<= 310 h12_h14_a18_4) (<= h12_h14_a18_4 945)))
(assert (and (<= 241 h12_h14_i15) (<= h12_h14_i15 989)))
(assert (or (= h12_i13 274) (= h12_i13 757)))
(assert (and (<= 32 h20_h22_i23) (<= h20_h22_i23 391)))
(assert (and (<= 129 h20_h22_i24) (<= h20_h22_i24 568)))
(assert (and (<= 280 h20_h27_a30_0) (<= h20_h27_a30_0 953)))
(assert (and (<= 280 h20_h27_a30_1) (<= h20_h27_a30_1 953)))
(assert (and (<= 280 h20_h27_a30_2) (<= h20_h27_a30_2 953)))
(assert (and (<= 280 h20_h27_a30_3) (<= h20_h27_a30_3 953)))
(assert (and (<= 280 h20_h27_a30_4) (<= h20_h27_a30_4 953)))
(assert (or (and (<= 110 h20_h27_i28) (<= h20_h27_i28 261)) (= h20_h27_i28 361) (= h20_h27_i28 677) (and (<= 720 h20_h27_i28) (<= h20_h27_i28 973))))
(assert (and (<= 406 h20_h27_i29) (<= h20_h27_i29 841)))
(assert (and (<= 290 h20_h27_i32) (<= h20_h27_i32 586)))
(assert (and (<= 505 h20_i21) (<= h20_i21 935)))
(assert (or (= h33_a36_0 461) (= h33_a36_0 965)))
(assert (and (<= 435 h33_i34) (<= h33_i34 894)))
(assert (or (= h33_i35 779) (= h33_i35 947)))
(assert (and (<= 142 h7_i10) (<= h7_i10 438)))
(assert (or (= h7_i11 271) (= h7_i11 645) (= h7_i11 938) (= h7_i11 978)))
(assert (or (= h7_i8 826) (= h7_i8 855) (= h7_i8 982)))
(assert (and (<= 30 h7_i9) (<= h7_i9 922)))

; Formula constraint
(assert (not (and (>= 20 h12_h14_a16_1) (and (<= (- (* -69 h20_h27_i32) h20_h27_a30_3) h12_h14_a18_4) (<= 22 (+ h33_i35 h1_h2_i3))))))

(check-sat)
(get-model)