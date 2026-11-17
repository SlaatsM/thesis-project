(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 324 i1) (<= i1 340)))

; Formula constraint
(assert (=> (=> (> 94 i1) (> (+ i1 16) i1)) (=> (and (> (* -94 i1) (+ (+ -70 i1) 18)) (< (* -20 i1) (- -8 (+ i1 73)))) (and (> (+ i1 i1) 26) (< (+ 49 -86) i1)))))

(check-sat)
(get-model)