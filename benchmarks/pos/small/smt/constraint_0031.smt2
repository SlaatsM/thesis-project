(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0

; Variable declarations
(declare-fun a1_0 () Int)

; Domain constraints
(assert (or (= a1_0 747) (= a1_0 852)))

; Formula constraint
(assert (not (= a1_0 (* 64 a1_0))))

(check-sat)
(get-model)