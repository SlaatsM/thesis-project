(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 32) (= i1 840)))
(assert (and (<= 780 i2) (<= i2 902)))

; Formula constraint
(assert (and (=> (and (< (+ i1 (- -9 (* -95 i2))) i2) (> -48 (* -78 i2))) (or (> i2 (* -23 i1)) (> (* 5 i1) (- (* -38 i1) (- i2 i1))))) (and (and (< -89 74) (not (= i2 11))) (= (* 1 i2) i1))))

(check-sat)
(get-model)