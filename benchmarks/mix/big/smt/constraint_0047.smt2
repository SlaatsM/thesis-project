(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a3[0] -> a3_0
;   i1
;   i2

; Variable declarations
(declare-fun a3_0 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (and (<= -862 a3_0) (<= a3_0 616)))
(assert (and (<= -622 i1) (<= i1 -19)))
(assert (and (<= -239 i2) (<= i2 30)))

; Formula constraint
(assert (or (and (and (<= i1 i2) (= i2 i2)) (and (< (* -98 i2) (- a3_0 (+ -84 i2))) (<= (- (* 98 i2) a3_0) i2))) (not (and (<= (- 25 i2) (- 87 (* 84 a3_0))) (<= (* -11 i2) (+ (* -63 i1) (* -23 i2)))))))

(check-sat)
(get-model)