(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 338) (= i1 404) (= i1 696) (= i1 729) (= i1 754)))

; Formula constraint
(assert (=> (and (or (< (- -13 i1) -50) (< (- (- (* 52 i1) -26) (+ i1 35)) (- i1 i1))) (<= -34 i1)) (<= (- -89 -3) (* 12 i1))))

(check-sat)
(get-model)