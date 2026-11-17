(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= -665 i1) (<= i1 15)))
(assert (or (and (<= -917 i2) (<= i2 476)) (and (<= 543 i2) (<= i2 774))))

; Formula constraint
(assert (and (and (and (>= i1 (* 40 i1)) (not (= i1 43))) (and (not (= i2 27)) (<= -58 i2))) (not (=> (<= i1 (* 50 i2)) (< (* 27 i1) i2)))))

(check-sat)
(get-model)