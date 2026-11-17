(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 -824) (= i1 -605) (= i1 -588) (= i1 838) (= i1 997)))
(assert (or (= i2 -782) (= i2 -604) (= i2 373)))

; Formula constraint
(assert (=> (=> (=> (>= 28 i2) (> i2 -71)) (and (> (+ i2 35) 24) (not (= -72 (- (* 82 i2) -86))))) (> (- (* -28 i2) i1) (* 57 i1))))

(check-sat)
(get-model)