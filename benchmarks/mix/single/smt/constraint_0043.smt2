(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -484) (= i1 -384) (= i1 667)))

; Formula constraint
(assert (<= (- 57 -4) i1))

(check-sat)
(get-model)