(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.a6[0][0] -> h1_a6_0_0
;   h1.a6[0][1] -> h1_a6_0_1
;   h1.a6[0][2] -> h1_a6_0_2
;   h1.h2.i5 -> h1_h2_i5
;   h21.h22.a23[0] -> h21_h22_a23_0
;   h21.h22.a27[0] -> h21_h22_a27_0
;   h21.h22.a27[1] -> h21_h22_a27_1
;   h21.h22.i25 -> h21_h22_i25
;   h21.h22.i26 -> h21_h22_i26
;   h9.h12.a14[0] -> h9_h12_a14_0
;   h9.h12.a14[1] -> h9_h12_a14_1
;   h9.h12.a14[2] -> h9_h12_a14_2
;   h9.h12.a14[3] -> h9_h12_a14_3
;   h9.h12.a14[4] -> h9_h12_a14_4
;   h9.h12.i17 -> h9_h12_i17
;   h9.i10 -> h9_i10
;   h9.i11 -> h9_i11
;   i29

; Variable declarations
(declare-fun h1_a6_0_0 () Int)
(declare-fun h1_a6_0_1 () Int)
(declare-fun h1_a6_0_2 () Int)
(declare-fun h1_h2_i5 () Int)
(declare-fun h21_h22_a23_0 () Int)
(declare-fun h21_h22_a27_0 () Int)
(declare-fun h21_h22_a27_1 () Int)
(declare-fun h21_h22_i25 () Int)
(declare-fun h21_h22_i26 () Int)
(declare-fun h9_h12_a14_0 () Int)
(declare-fun h9_h12_a14_1 () Int)
(declare-fun h9_h12_a14_2 () Int)
(declare-fun h9_h12_a14_3 () Int)
(declare-fun h9_h12_a14_4 () Int)
(declare-fun h9_h12_i17 () Int)
(declare-fun h9_i10 () Int)
(declare-fun h9_i11 () Int)
(declare-fun i29 () Int)

; Domain constraints
(assert (or (= h1_a6_0_0 -750) (= h1_a6_0_0 -513)))
(assert (or (= h1_a6_0_1 -750) (= h1_a6_0_1 -513)))
(assert (or (= h1_a6_0_2 -750) (= h1_a6_0_2 -513)))
(assert (or (= h1_h2_i5 -688) (= h1_h2_i5 28) (= h1_h2_i5 593) (= h1_h2_i5 780)))
(assert (and (<= 509 h21_h22_a23_0) (<= h21_h22_a23_0 913)))
(assert (or (and (<= -794 h21_h22_a27_0) (<= h21_h22_a27_0 -705)) (and (<= -628 h21_h22_a27_0) (<= h21_h22_a27_0 -270)) (= h21_h22_a27_0 723)))
(assert (or (and (<= -794 h21_h22_a27_1) (<= h21_h22_a27_1 -705)) (and (<= -628 h21_h22_a27_1) (<= h21_h22_a27_1 -270)) (= h21_h22_a27_1 723)))
(assert (and (<= -487 h21_h22_i25) (<= h21_h22_i25 999)))
(assert (and (<= 264 h21_h22_i26) (<= h21_h22_i26 538)))
(assert (or (= h9_h12_a14_0 36) (= h9_h12_a14_0 817) (= h9_h12_a14_0 825)))
(assert (or (= h9_h12_a14_1 36) (= h9_h12_a14_1 817) (= h9_h12_a14_1 825)))
(assert (or (= h9_h12_a14_2 36) (= h9_h12_a14_2 817) (= h9_h12_a14_2 825)))
(assert (or (= h9_h12_a14_3 36) (= h9_h12_a14_3 817) (= h9_h12_a14_3 825)))
(assert (or (= h9_h12_a14_4 36) (= h9_h12_a14_4 817) (= h9_h12_a14_4 825)))
(assert (and (<= -920 h9_h12_i17) (<= h9_h12_i17 -782)))
(assert (and (<= -618 h9_i10) (<= h9_i10 -360)))
(assert (and (<= -437 h9_i11) (<= h9_i11 336)))
(assert (or (= i29 -820) (= i29 304) (= i29 426) (= i29 815)))

; Formula constraint
(assert (=> (=> (and (not (= h9_h12_a14_2 (+ (+ h9_h12_a14_3 h9_h12_a14_1) (- (* -89 h1_h2_i5) h1_h2_i5)))) (= (* -76 h21_h22_a27_1) i29)) (> (* -85 h1_a6_0_1) (- (+ h21_h22_a23_0 (* 58 h9_i11)) -46))) (> (* -94 h9_i10) 94)))

(check-sat)
(get-model)