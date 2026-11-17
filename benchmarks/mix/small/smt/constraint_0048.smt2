(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= -61 i1) (<= i1 820)))
(assert (and (<= -792 i2) (<= i2 494)))

; Formula constraint
(assert (= (* -56 i1) i2))

(check-sat)
(get-model)