(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 0) (and (<= 77 i1) (<= i1 440)) (= i1 946)))

; Formula constraint
(assert (=> (>= i1 -62) (<= (* 57 i1) i1)))

(check-sat)
(get-model)