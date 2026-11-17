(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -333) (= i1 -285) (= i1 27)))

; Formula constraint
(assert (=> (not (or (> (+ 16 85) (* 1 i1)) (< -40 (+ i1 (* -53 i1))))) (< i1 -57)))

(check-sat)
(get-model)