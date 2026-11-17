(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 394) (= i1 891)))

; Formula constraint
(assert (or (and (not (<= i1 -86)) (>= (- i1 -40) 2)) (=> (=> (<= 65 12) (< i1 49)) (=> (<= (+ (* 58 i1) 3) (+ i1 -40)) (>= i1 i1)))))

(check-sat)
(get-model)