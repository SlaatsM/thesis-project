(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= -257 i1) (<= i1 -224)))
(assert (or (= i2 -478) (= i2 816)))

; Formula constraint
(assert (<= i1 i1))

(check-sat)
(get-model)