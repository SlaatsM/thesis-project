(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (or (= h1_i2 -808) (= h1_i2 -777) (= h1_i2 -703) (= h1_i2 -567) (= h1_i2 217)))

; Formula constraint
(assert (>= (* 10 h1_i2) -35))

(check-sat)
(get-model)