(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0

; Variable declarations
(declare-fun a1_0 () Int)

; Domain constraints
(assert (or (= a1_0 86) (= a1_0 279) (= a1_0 508) (= a1_0 546) (= a1_0 797)))

; Formula constraint
(assert (> 91 a1_0))

(check-sat)
(get-model)