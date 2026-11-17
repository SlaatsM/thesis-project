(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -185) (= i1 317) (= i1 329) (= i1 344) (= i1 588)))

; Formula constraint
(assert (or (and (> i1 i1) (and (not (= i1 (+ i1 i1))) (> (* 57 i1) i1))) (> 79 (+ i1 -15))))

(check-sat)
(get-model)