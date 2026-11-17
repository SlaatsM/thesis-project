(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= -834 i1) (<= i1 -562)))
(assert (or (= i2 -853) (= i2 -653) (= i2 87) (= i2 902)))

; Formula constraint
(assert (and (<= 55 85) (=> (=> (> -69 i2) (not (= i1 i2))) (not (>= (* 16 i1) (* 99 i1))))))

(check-sat)
(get-model)