(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (and (<= 0 h1_i2) (<= h1_i2 214)))

; Formula constraint
(assert (and (=> (not (<= (+ (* -52 h1_i2) (+ (* 99 h1_i2) (* -7 h1_i2))) (* 28 h1_i2))) (and (> 43 h1_i2) (> (* 74 h1_i2) h1_i2))) (>= h1_i2 (+ (- (* 71 h1_i2) 63) h1_i2))))

(check-sat)
(get-model)