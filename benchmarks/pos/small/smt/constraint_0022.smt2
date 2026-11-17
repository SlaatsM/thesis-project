(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 7) (= i1 99)))

; Formula constraint
(assert (and (and (>= i1 i1) (> i1 -19)) (=> (=> (> (- -64 (- (* 78 i1) 47)) (+ -20 i1)) (>= i1 48)) (=> (not (= (- i1 (- i1 i1)) (* 48 i1))) (<= -89 -14)))))

(check-sat)
(get-model)