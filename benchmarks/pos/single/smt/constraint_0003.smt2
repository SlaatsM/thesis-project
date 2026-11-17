(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 5) (and (<= 649 i1) (<= i1 997))))

; Formula constraint
(assert (> (* -14 i1) -95))

(check-sat)
(get-model)