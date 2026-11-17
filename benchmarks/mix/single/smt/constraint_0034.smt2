(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2
;   i3

; Variable declarations
(declare-fun h1_i2 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (or (= h1_i2 -29) (= h1_i2 439)))
(assert (or (= i3 -482) (= i3 171) (= i3 304) (= i3 357) (= i3 799)))

; Formula constraint
(assert (not (or (or (<= h1_i2 (+ (+ (* 24 h1_i2) (* 27 i3)) (- 26 h1_i2))) (< i3 (* 28 h1_i2))) (and (<= (+ h1_i2 38) (* 46 i3)) (> (* 63 i3) 98)))))

(check-sat)
(get-model)