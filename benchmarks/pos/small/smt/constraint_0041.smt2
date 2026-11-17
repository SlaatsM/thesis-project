(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 527) (= i1 649) (= i1 876)))

; Formula constraint
(assert (> i1 11))

(check-sat)
(get-model)