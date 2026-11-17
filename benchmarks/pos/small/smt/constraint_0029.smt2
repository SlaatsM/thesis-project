(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 156) (= i1 375)))

; Formula constraint
(assert (or (not (not (>= i1 (+ i1 i1)))) (=> (not (= (* 76 i1) i1)) (=> (>= i1 i1) (>= i1 80)))))

(check-sat)
(get-model)