(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   x
;   y
;   z

; Variable declarations
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun z () Int)

; Domain constraints
(assert (and (<= 0 x) (<= x 100)))
(assert (and (<= 0 y) (<= y 100)))
(assert (and (<= 0 z) (<= z 100)))

; Formula constraint
(assert (and (= z (+ x 85)) (and (>= y (+ x 18)) (and (<= y (+ x 65)) (> z y)))))

(check-sat)
(get-model)