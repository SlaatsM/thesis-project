(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 -105) (= i1 184) (= i1 566) (= i1 887)))
(assert (or (and (<= -851 i2) (<= i2 -768)) (= i2 206)))

; Formula constraint
(assert (>= (* 38 i2) (* 72 i1)))

(check-sat)
(get-model)