(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 -582) (= i1 489) (= i1 586)))
(assert (and (<= -314 i2) (<= i2 970)))

; Formula constraint
(assert (>= i2 (* 26 i2)))

(check-sat)
(get-model)