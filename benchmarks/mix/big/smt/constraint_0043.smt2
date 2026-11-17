(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a12[0] -> a12_0
;   a12[1] -> a12_1
;   a12[2] -> a12_2
;   h2.h3.i5 -> h2_h3_i5
;   h2.h3.i6 -> h2_h3_i6
;   h2.i10 -> h2_i10
;   h2.i8 -> h2_i8
;   h2.i9 -> h2_i9
;   i1
;   i11
;   i14

; Variable declarations
(declare-fun a12_0 () Int)
(declare-fun a12_1 () Int)
(declare-fun a12_2 () Int)
(declare-fun h2_h3_i5 () Int)
(declare-fun h2_h3_i6 () Int)
(declare-fun h2_i10 () Int)
(declare-fun h2_i8 () Int)
(declare-fun h2_i9 () Int)
(declare-fun i1 () Int)
(declare-fun i11 () Int)
(declare-fun i14 () Int)

; Domain constraints
(assert (and (<= 407 a12_0) (<= a12_0 843)))
(assert (and (<= 407 a12_1) (<= a12_1 843)))
(assert (and (<= 407 a12_2) (<= a12_2 843)))
(assert (and (<= -768 h2_h3_i5) (<= h2_h3_i5 -178)))
(assert (and (<= -806 h2_h3_i6) (<= h2_h3_i6 -531)))
(assert (and (<= 102 h2_i10) (<= h2_i10 687)))
(assert (and (<= -346 h2_i8) (<= h2_i8 -192)))
(assert (and (<= -479 h2_i9) (<= h2_i9 684)))
(assert (and (<= -209 i1) (<= i1 422)))
(assert (or (= i11 -36) (= i11 330) (= i11 458)))
(assert (and (<= -24 i14) (<= i14 157)))

; Formula constraint
(assert (or (not (and (<= -72 h2_i8) (>= (* -48 i11) 32))) (=> (=> (<= 14 h2_h3_i5) (>= -92 63)) (and (= h2_h3_i6 -97) (not (= a12_2 a12_1))))))

(check-sat)
(get-model)