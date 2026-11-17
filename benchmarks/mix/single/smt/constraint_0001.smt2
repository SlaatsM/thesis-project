(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -588) (and (<= -287 i1) (<= i1 274))))

; Formula constraint
(assert (not (not (and (= i1 63) (<= i1 i1)))))

(check-sat)
(get-model)