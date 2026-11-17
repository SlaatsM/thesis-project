(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 33) (= i1 192) (= i1 809) (= i1 909)))
(assert (and (<= 372 i2) (<= i2 850)))

; Formula constraint
(assert (and (or (and (< -45 -21) (not (= -22 i2))) (=> (< 42 -63) (= (* 17 i1) i2))) (= i2 i1)))

(check-sat)
(get-model)