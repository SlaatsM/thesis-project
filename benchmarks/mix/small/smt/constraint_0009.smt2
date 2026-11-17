(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (or (= h1_i2 -629) (= h1_i2 -618) (= h1_i2 -571) (= h1_i2 579) (= h1_i2 818)))

; Formula constraint
(assert (>= h1_i2 h1_i2))

(check-sat)
(get-model)