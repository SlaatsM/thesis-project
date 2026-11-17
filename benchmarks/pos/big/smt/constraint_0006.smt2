(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= 521 i1) (<= i1 910)))
(assert (or (and (<= 13 i2) (<= i2 101)) (and (<= 279 i2) (<= i2 430)) (and (<= 445 i2) (<= i2 856))))

; Formula constraint
(assert (not (= 53 i2)))

(check-sat)
(get-model)