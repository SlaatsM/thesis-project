(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.i2 -> h1_i2
;   i3

; Variable declarations
(declare-fun h1_i2 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (or (and (<= 134 h1_i2) (<= h1_i2 144)) (= h1_i2 913)))
(assert (or (= i3 253) (and (<= 300 i3) (<= i3 923))))

; Formula constraint
(assert (or (= h1_i2 i3) (= -81 i3)))

(check-sat)
(get-model)