(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0

; Variable declarations
(declare-fun a1_0 () Int)

; Domain constraints
(assert (or (= a1_0 -553) (= a1_0 408)))

; Formula constraint
(assert (not (and (and (<= a1_0 (- a1_0 (+ a1_0 (* -4 a1_0)))) (< a1_0 a1_0)) (=> (> (- (* -69 a1_0) (- (* 85 a1_0) 14)) (+ (* 89 a1_0) -38)) (= (+ a1_0 (- 56 -74)) -16)))))

(check-sat)
(get-model)