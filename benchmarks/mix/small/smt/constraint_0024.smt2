(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 646) (= i1 970)))

; Formula constraint
(assert (=> (not (and (> i1 (* -92 i1)) (not (= i1 i1)))) (or (=> (<= i1 i1) (= 7 (* -47 i1))) (=> (< i1 (- (* 55 i1) (* 65 i1))) (<= i1 (- 70 (- -85 (* -6 i1))))))))

(check-sat)
(get-model)