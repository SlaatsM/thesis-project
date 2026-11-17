(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -161) (= i1 28)))

; Formula constraint
(assert (and (or (=> (> i1 72) (= (- 67 i1) (+ 48 (+ 25 i1)))) (or (< (* 13 i1) (* 54 i1)) (not (= (+ i1 31) i1)))) (< (+ i1 (- i1 i1)) -11)))

(check-sat)
(get-model)