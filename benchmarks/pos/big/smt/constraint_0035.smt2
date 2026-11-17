(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= 129 i1) (<= i1 142)))
(assert (and (<= 66 i2) (<= i2 138)))

; Formula constraint
(assert (not (= i2 i1)))

(check-sat)
(get-model)