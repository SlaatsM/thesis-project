(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -892) (= i1 -285)))

; Formula constraint
(assert (or (or (> (+ (* -18 i1) i1) -46) (= i1 i1)) (=> (and (>= -27 -79) (not (= -51 i1))) (and (< -72 i1) (= (* -63 i1) i1)))))

(check-sat)
(get-model)