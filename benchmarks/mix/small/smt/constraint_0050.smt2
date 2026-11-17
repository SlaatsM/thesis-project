(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -914) (= i1 -91) (= i1 196)))

; Formula constraint
(assert (=> (and (and (< -71 (* -58 i1)) (> 86 i1)) (<= 54 i1)) (=> (or (not (= (* 69 i1) -43)) (< (* 12 i1) (* 49 i1))) (not (= i1 (* 78 i1))))))

(check-sat)
(get-model)