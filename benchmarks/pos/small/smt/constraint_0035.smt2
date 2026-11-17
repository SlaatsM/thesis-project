(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (or (= h1_i2 322) (= h1_i2 452) (= h1_i2 659) (= h1_i2 777) (= h1_i2 970)))

; Formula constraint
(assert (=> (and (<= h1_i2 (+ h1_i2 h1_i2)) (>= h1_i2 53)) (< 76 h1_i2)))

(check-sat)
(get-model)