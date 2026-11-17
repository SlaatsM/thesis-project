(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2
;   i3

; Variable declarations
(declare-fun h1_i2 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (or (= h1_i2 137) (= h1_i2 639)))
(assert (or (= i3 2) (= i3 402) (= i3 769)))

; Formula constraint
(assert (or (< i3 i3) (and (not (< i3 -43)) (<= i3 (+ (+ h1_i2 (* -83 i3)) -100)))))

(check-sat)
(get-model)