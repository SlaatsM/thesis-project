(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (or (= h1_i2 23) (= h1_i2 193) (= h1_i2 545) (= h1_i2 580) (= h1_i2 658)))

; Formula constraint
(assert (not (>= (+ h1_i2 (- h1_i2 h1_i2)) (- h1_i2 (- -78 33)))))

(check-sat)
(get-model)