(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 492) (= i1 581) (= i1 768)))
(assert (or (and (<= 120 i2) (<= i2 426)) (= i2 560)))

; Formula constraint
(assert (or (or (> i1 (* 18 i2)) (and (> (- i2 (* -83 i1)) 0) (>= i2 i1))) (and (>= 0 i2) (=> (> 67 (- i2 -14)) (>= 5 i2)))))

(check-sat)
(get-model)