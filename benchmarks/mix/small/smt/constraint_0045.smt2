(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -924) (= i1 -644) (= i1 -183) (= i1 401)))

; Formula constraint
(assert (<= i1 -5))

(check-sat)
(get-model)