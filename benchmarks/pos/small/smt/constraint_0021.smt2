(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 388) (= i1 472) (= i1 606) (= i1 889)))

; Formula constraint
(assert (or (=> (>= (- 81 i1) -36) (and (= i1 77) (>= (* -8 i1) i1))) (or (and (<= (+ i1 (* 71 i1)) 91) (< i1 (* 90 i1))) (=> (<= 75 i1) (< -21 70)))))

(check-sat)
(get-model)