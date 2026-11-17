(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (or (= h1_i2 162) (= h1_i2 381)))

; Formula constraint
(assert (and (and (or (> (* -97 h1_i2) h1_i2) (<= 96 h1_i2)) (and (<= h1_i2 (+ h1_i2 h1_i2)) (< 67 h1_i2))) (< (+ (* -6 h1_i2) (- -67 h1_i2)) h1_i2)))

(check-sat)
(get-model)