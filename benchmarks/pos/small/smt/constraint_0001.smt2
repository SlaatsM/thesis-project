(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 104) (= i1 117) (= i1 703)))

; Formula constraint
(assert (not (and (>= (- i1 i1) i1) (> 65 i1))))

(check-sat)
(get-model)