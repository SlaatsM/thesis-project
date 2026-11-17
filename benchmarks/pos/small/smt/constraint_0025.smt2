(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 119) (= i1 608) (= i1 629) (= i1 995)))

; Formula constraint
(assert (>= i1 i1))

(check-sat)
(get-model)