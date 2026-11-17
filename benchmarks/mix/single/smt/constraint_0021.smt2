(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= -488 i1) (<= i1 447)))
(assert (and (<= -285 i2) (<= i2 664)))

; Formula constraint
(assert (and (<= i2 i1) (and (or (> i2 90) (> 78 -52)) (and (= i2 41) (= i1 53)))))

(check-sat)
(get-model)