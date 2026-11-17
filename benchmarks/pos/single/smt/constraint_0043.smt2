(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 42) (and (<= 139 i1) (<= i1 534)) (= i1 989)))

; Formula constraint
(assert (< i1 81))

(check-sat)
(get-model)