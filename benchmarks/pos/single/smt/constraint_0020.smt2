(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= 423 i1) (<= i1 641)))
(assert (or (= i2 516) (and (<= 879 i2) (<= i2 912))))

; Formula constraint
(assert (not (and (or (<= -21 (+ i1 i1)) (< i1 (* -97 i2))) (and (not (= i2 i1)) (>= i1 i1)))))

(check-sat)
(get-model)