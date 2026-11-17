(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -525) (= i1 104) (= i1 718)))

; Formula constraint
(assert (and (or (or (>= (+ i1 i1) -52) (< i1 26)) (not (= i1 -88))) (> i1 -20)))

(check-sat)
(get-model)