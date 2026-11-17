(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (and (<= -591 i1) (<= i1 -186)) (= i1 415)))
(assert (or (= i2 -838) (= i2 -825) (= i2 -678) (= i2 661) (= i2 992)))

; Formula constraint
(assert (and (>= (- i2 i1) i1) (or (and (not (= -58 -55)) (< 2 -99)) (=> (>= (- i2 (* 5 i1)) i2) (< 80 (+ i1 i1))))))

(check-sat)
(get-model)