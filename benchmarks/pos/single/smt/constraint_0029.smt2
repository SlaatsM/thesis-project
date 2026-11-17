(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (or (= h1_i2 3) (= h1_i2 426) (= h1_i2 547) (= h1_i2 561)))

; Formula constraint
(assert (< h1_i2 8))

(check-sat)
(get-model)