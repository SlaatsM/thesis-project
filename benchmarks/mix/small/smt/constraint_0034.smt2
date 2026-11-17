(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= 141 i1) (<= i1 149)))
(assert (and (<= -544 i2) (<= i2 671)))

; Formula constraint
(assert (and (> -7 i2) (=> (> -96 (* -95 i1)) (and (> (+ (* 68 i1) (+ i2 i1)) 81) (= -91 i2)))))

(check-sat)
(get-model)