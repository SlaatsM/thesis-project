(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= -425 i1) (<= i1 300)))

; Formula constraint
(assert (= i1 64))

(check-sat)
(get-model)