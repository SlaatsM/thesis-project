(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -373) (= i1 115) (= i1 535)))

; Formula constraint
(assert (or (=> (< -9 i1) (or (>= -22 (* -55 i1)) (> (- i1 (+ -90 46)) (* -20 i1)))) (and (or (< (+ i1 (+ i1 i1)) (* -63 i1)) (<= i1 i1)) (=> (>= i1 (* 42 i1)) (<= i1 -75)))))

(check-sat)
(get-model)