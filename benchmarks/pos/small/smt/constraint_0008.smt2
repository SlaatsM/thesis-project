(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 314) (= i1 961)))

; Formula constraint
(assert (and (not (> 74 (+ i1 (+ -96 83)))) (not (= 40 i1))))

(check-sat)
(get-model)