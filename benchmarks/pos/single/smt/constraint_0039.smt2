(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 36 i1) (<= i1 334)))

; Formula constraint
(assert (and (or (and (< -83 i1) (= 46 i1)) (not (<= (+ 12 (* -54 i1)) i1))) (=> (not (= i1 98)) (> (* 2 i1) (+ -18 49)))))

(check-sat)
(get-model)