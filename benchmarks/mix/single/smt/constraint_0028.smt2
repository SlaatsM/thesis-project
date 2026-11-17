(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 -520) (= i1 126)))
(assert (and (<= -779 i2) (<= i2 756)))

; Formula constraint
(assert (and (not (= 41 (* 52 i2))) (and (and (= -55 i2) (> (- (* -71 i1) i2) (+ (+ i2 i2) 0))) (not (> i2 i2)))))

(check-sat)
(get-model)