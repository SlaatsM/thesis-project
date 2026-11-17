(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 19) (= i1 597) (= i1 668)))

; Formula constraint
(assert (or (=> (>= i1 51) (and (< i1 i1) (> i1 36))) (and (or (not (= (+ i1 i1) 2)) (>= 92 i1)) (or (> i1 i1) (> (* -65 i1) -92)))))

(check-sat)
(get-model)