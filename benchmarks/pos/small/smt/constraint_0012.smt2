(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 144) (= i1 212) (= i1 381) (= i1 961)))

; Formula constraint
(assert (=> (and (and (>= i1 i1) (> 49 (+ (* 32 i1) i1))) (and (<= (+ i1 i1) (- (* -10 i1) i1)) (not (= -98 71)))) (=> (and (> i1 i1) (<= (* 39 i1) (* 6 i1))) (and (< i1 i1) (< (* 6 i1) -63)))))

(check-sat)
(get-model)