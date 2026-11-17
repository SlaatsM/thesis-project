(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2

; Variable declarations
(declare-fun h1_i2 () Int)

; Domain constraints
(assert (or (= h1_i2 120) (= h1_i2 152) (= h1_i2 161) (= h1_i2 283) (= h1_i2 752)))

; Formula constraint
(assert (=> (not (= h1_i2 h1_i2)) (and (or (>= (* 96 h1_i2) h1_i2) (= -7 39)) (>= 32 h1_i2))))

(check-sat)
(get-model)