(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 -605) (= i1 830)))
(assert (and (<= -440 i2) (<= i2 906)))

; Formula constraint
(assert (and (or (and (<= i1 (- (+ (* 4 i2) (* 90 i1)) i1)) (> 87 (- i1 i2))) (or (< i1 i2) (< (- i2 92) -66))) (and (<= -23 i2) (not (not (= i2 i1))))))

(check-sat)
(get-model)