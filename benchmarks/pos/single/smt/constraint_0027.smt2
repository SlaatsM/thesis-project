(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 15) (and (<= 100 i1) (<= i1 217)) (and (<= 381 i1) (<= i1 730))))

; Formula constraint
(assert (not (< 99 i1)))

(check-sat)
(get-model)