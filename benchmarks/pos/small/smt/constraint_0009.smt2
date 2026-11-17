(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (and (<= 668 h1_i2) (<= h1_i2 681)))

; Formula constraint
(assert (and (< 49 (* 83 h1_i2)) (not (= -38 3))))

(check-sat)
(get-model)