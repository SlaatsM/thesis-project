(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (and (<= 0 i1) (<= i1 402)) (and (<= 576 i1) (<= i1 613))))

; Formula constraint
(assert (not (and (>= i1 i1) (not (= 43 i1)))))

(check-sat)
(get-model)