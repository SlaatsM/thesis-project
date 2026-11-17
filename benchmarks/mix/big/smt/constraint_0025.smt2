(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (and (<= -679 h1_i2) (<= h1_i2 832)))

; Formula constraint
(assert (and (not (=> (>= h1_i2 h1_i2) (<= (* 72 h1_i2) 87))) (=> (> 83 (+ -8 h1_i2)) (and (not (= (- (+ (* -11 h1_i2) h1_i2) h1_i2) 48)) (<= h1_i2 (* 33 h1_i2))))))

(check-sat)
(get-model)