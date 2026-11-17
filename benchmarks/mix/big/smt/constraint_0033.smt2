(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h3.i4 -> h3_i4
;   h3.i5 -> h3_i5
;   h3.i6 -> h3_i6
;   i1
;   i2

; Variable declarations
(declare-fun h3_i4 () Int)
(declare-fun h3_i5 () Int)
(declare-fun h3_i6 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= h3_i4 -786) (= h3_i4 510) (= h3_i4 605) (= h3_i4 790)))
(assert (and (<= 71 h3_i5) (<= h3_i5 977)))
(assert (and (<= -462 h3_i6) (<= h3_i6 944)))
(assert (and (<= -20 i1) (<= i1 511)))
(assert (or (= i2 340) (= i2 726) (= i2 833)))

; Formula constraint
(assert (< i2 h3_i4))

(check-sat)
(get-model)