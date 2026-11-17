(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (or (= h1_i2 26) (= h1_i2 392)))

; Formula constraint
(assert (< (- 63 -50) (- (+ h1_i2 h1_i2) h1_i2)))

(check-sat)
(get-model)