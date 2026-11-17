(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 3) (= i1 263) (= i1 727) (and (<= 767 i1) (<= i1 990))))

; Formula constraint
(assert (<= i1 81))

(check-sat)
(get-model)