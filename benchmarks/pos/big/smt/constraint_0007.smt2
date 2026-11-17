(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h5.a6[0] -> h5_a6_0
;   h5.a6[1] -> h5_a6_1
;   h5.h12.i13 -> h5_h12_i13
;   h5.h12.i14 -> h5_h12_i14
;   h5.h12.i16 -> h5_h12_i16
;   h5.h17.a19[0] -> h5_h17_a19_0
;   h5.h17.i18 -> h5_h17_i18
;   h5.h17.i22 -> h5_h17_i22
;   h5.h8.i10 -> h5_h8_i10
;   h5.h8.i9 -> h5_h8_i9
;   i1
;   i2
;   i3
;   i4

; Variable declarations
(declare-fun h5_a6_0 () Int)
(declare-fun h5_a6_1 () Int)
(declare-fun h5_h12_i13 () Int)
(declare-fun h5_h12_i14 () Int)
(declare-fun h5_h12_i16 () Int)
(declare-fun h5_h17_a19_0 () Int)
(declare-fun h5_h17_i18 () Int)
(declare-fun h5_h17_i22 () Int)
(declare-fun h5_h8_i10 () Int)
(declare-fun h5_h8_i9 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)

; Domain constraints
(assert (and (<= 552 h5_a6_0) (<= h5_a6_0 988)))
(assert (and (<= 552 h5_a6_1) (<= h5_a6_1 988)))
(assert (and (<= 527 h5_h12_i13) (<= h5_h12_i13 992)))
(assert (or (= h5_h12_i14 436) (= h5_h12_i14 981)))
(assert (and (<= 184 h5_h12_i16) (<= h5_h12_i16 461)))
(assert (or (= h5_h17_a19_0 596) (= h5_h17_a19_0 651) (= h5_h17_a19_0 927) (= h5_h17_a19_0 943)))
(assert (and (<= 625 h5_h17_i18) (<= h5_h17_i18 935)))
(assert (and (<= 210 h5_h17_i22) (<= h5_h17_i22 777)))
(assert (and (<= 168 h5_h8_i10) (<= h5_h8_i10 799)))
(assert (and (<= 611 h5_h8_i9) (<= h5_h8_i9 953)))
(assert (and (<= 270 i1) (<= i1 472)))
(assert (and (<= 575 i2) (<= i2 630)))
(assert (or (= i3 107) (and (<= 276 i3) (<= i3 939))))
(assert (and (<= 148 i4) (<= i4 886)))

; Formula constraint
(assert (not (<= h5_h8_i10 i3)))

(check-sat)
(get-model)