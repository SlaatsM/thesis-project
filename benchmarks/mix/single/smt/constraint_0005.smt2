(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -936) (= i1 -486) (= i1 553)))

; Formula constraint
(assert (=> (not (= (+ 34 -22) (- i1 i1))) (or (and (> i1 (- (* -89 i1) (* 92 i1))) (< (+ (* -26 i1) i1) (+ -70 (- i1 58)))) (not (> (- -64 i1) -20)))))

(check-sat)
(get-model)