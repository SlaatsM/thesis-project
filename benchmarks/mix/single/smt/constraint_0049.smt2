(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (or (= h1_i2 -362) (= h1_i2 -7)))

; Formula constraint
(assert (and (or (and (> -98 77) (<= h1_i2 32)) (or (< (+ h1_i2 (+ -21 -58)) (- h1_i2 -55)) (> h1_i2 h1_i2))) (and (and (> 74 h1_i2) (>= h1_i2 (+ (- h1_i2 -63) h1_i2))) (>= -11 h1_i2))))

(check-sat)
(get-model)