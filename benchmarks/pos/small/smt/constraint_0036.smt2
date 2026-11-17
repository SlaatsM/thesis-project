(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 304) (= i1 423) (= i1 492) (= i1 527) (= i1 870)))

; Formula constraint
(assert (=> (and (and (>= 45 i1) (= -46 -39)) (not (= (* 78 i1) (+ -42 i1)))) (and (<= -93 78) (=> (<= (* 46 i1) i1) (= (+ i1 i1) (* 46 i1))))))

(check-sat)
(get-model)