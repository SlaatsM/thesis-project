(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h14.a15[0] -> h14_a15_0
;   h14.i17 -> h14_i17
;   h14.i20 -> h14_i20
;   h2.h10.i12 -> h2_h10_i12
;   h2.h10.i13 -> h2_h10_i13
;   h2.h3.i4 -> h2_h3_i4
;   h2.h3.i5 -> h2_h3_i5
;   h2.h7.i8 -> h2_h7_i8
;   h2.h7.i9 -> h2_h7_i9
;   i1
;   i21

; Variable declarations
(declare-fun h14_a15_0 () Int)
(declare-fun h14_i17 () Int)
(declare-fun h14_i20 () Int)
(declare-fun h2_h10_i12 () Int)
(declare-fun h2_h10_i13 () Int)
(declare-fun h2_h3_i4 () Int)
(declare-fun h2_h3_i5 () Int)
(declare-fun h2_h7_i8 () Int)
(declare-fun h2_h7_i9 () Int)
(declare-fun i1 () Int)
(declare-fun i21 () Int)

; Domain constraints
(assert (or (= h14_a15_0 -973) (= h14_a15_0 -247) (= h14_a15_0 401) (= h14_a15_0 572)))
(assert (and (<= -385 h14_i17) (<= h14_i17 105)))
(assert (and (<= -776 h14_i20) (<= h14_i20 753)))
(assert (and (<= -651 h2_h10_i12) (<= h2_h10_i12 426)))
(assert (and (<= -913 h2_h10_i13) (<= h2_h10_i13 -517)))
(assert (and (<= -218 h2_h3_i4) (<= h2_h3_i4 670)))
(assert (and (<= -454 h2_h3_i5) (<= h2_h3_i5 -39)))
(assert (and (<= 18 h2_h7_i8) (<= h2_h7_i8 739)))
(assert (or (= h2_h7_i9 216) (= h2_h7_i9 776)))
(assert (or (and (<= -55 i1) (<= i1 205)) (= i1 526) (= i1 970)))
(assert (and (<= 446 i21) (<= i21 733)))

; Formula constraint
(assert (or (not (= h2_h7_i8 h14_a15_0)) (and (< h2_h10_i13 h14_i17) (=> (> i1 -68) (< (- (* -85 h2_h3_i5) (- (* -86 h14_i17) i21)) 20)))))

(check-sat)
(get-model)