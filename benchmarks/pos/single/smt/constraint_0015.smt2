(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 135) (= i1 333) (= i1 599)))
(assert (or (and (<= 314 i2) (<= i2 455)) (= i2 481)))

; Formula constraint
(assert (and (and (<= 19 72) (not (not (= i1 i2)))) (not (and (> i1 i2) (<= (* 11 i1) (- (* 1 i1) -3))))))

(check-sat)
(get-model)