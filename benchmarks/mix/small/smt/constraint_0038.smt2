(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (or (= h1_i2 -913) (= h1_i2 -72) (= h1_i2 284)))

; Formula constraint
(assert (=> (and (not (= (* -99 h1_i2) h1_i2)) (and (>= h1_i2 h1_i2) (<= (+ h1_i2 (* 21 h1_i2)) h1_i2))) (> (* -8 h1_i2) h1_i2)))

(check-sat)
(get-model)