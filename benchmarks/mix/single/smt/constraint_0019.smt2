(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -443) (= i1 324)))

; Formula constraint
(assert (< (* 55 i1) -82))

(check-sat)
(get-model)