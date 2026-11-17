(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 89) (= i1 293) (= i1 317)))

; Formula constraint
(assert (=> (not (=> (not (= i1 (* -54 i1))) (< i1 i1))) (=> (< -34 (- -51 i1)) (= (+ (* -96 i1) (+ (* -7 i1) (* 67 i1))) (+ i1 (+ -69 95))))))

(check-sat)
(get-model)