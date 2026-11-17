(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2
;   h1.i3 -> h1_i3

; Variable declarations
(declare-fun h1_i2 () Int)
(declare-fun h1_i3 () Int)

; Domain constraints
(assert (or (= h1_i2 174) (= h1_i2 321) (= h1_i2 404) (= h1_i2 609)))
(assert (and (<= 386 h1_i3) (<= h1_i3 574)))

; Formula constraint
(assert (and (>= h1_i2 (+ (- 65 81) h1_i3)) (= h1_i3 h1_i2)))

(check-sat)
(get-model)