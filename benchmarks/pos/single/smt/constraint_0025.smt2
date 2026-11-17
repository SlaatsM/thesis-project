(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 20) (= i1 316) (= i1 772) (= i1 954)))

; Formula constraint
(assert (=> (and (or (> (- -17 53) (- (* 60 i1) (- (* -22 i1) i1))) (< 23 i1)) (=> (<= -96 (+ i1 7)) (<= (* -25 i1) i1))) (> 76 i1)))

(check-sat)
(get-model)