(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= -44 i1) (<= i1 524)))
(assert (and (<= -210 i2) (<= i2 256)))

; Formula constraint
(assert (not (or (not (<= i2 i1)) (or (not (= (- i1 i2) 1)) (not (= i2 -10))))))

(check-sat)
(get-model)