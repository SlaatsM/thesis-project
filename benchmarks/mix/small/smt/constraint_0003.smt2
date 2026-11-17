(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2
;   h1.i3 -> h1_i3

; Variable declarations
(declare-fun h1_i2 () Int)
(declare-fun h1_i3 () Int)

; Domain constraints
(assert (or (= h1_i2 -627) (= h1_i2 230) (= h1_i2 303)))
(assert (or (= h1_i3 -296) (= h1_i3 935)))

; Formula constraint
(assert (=> (not (= 40 35)) (=> (and (<= 34 -46) (> -10 h1_i2)) (< (- (* -5 h1_i2) (* -11 h1_i3)) h1_i3))))

(check-sat)
(get-model)