(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -200) (= i1 471) (= i1 766)))

; Formula constraint
(assert (not (not (= i1 i1))))

(check-sat)
(get-model)