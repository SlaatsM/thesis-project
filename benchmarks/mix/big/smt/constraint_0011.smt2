(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= -711 i1) (<= i1 694)))

; Formula constraint
(assert (and (or (<= 77 i1) (< 31 i1)) (not (= 55 94))))

(check-sat)
(get-model)