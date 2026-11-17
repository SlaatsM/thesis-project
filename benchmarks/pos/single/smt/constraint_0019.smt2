(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a2[0] -> a2_0
;   i1

; Variable declarations
(declare-fun a2_0 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= a2_0 380) (= a2_0 784)))
(assert (or (= i1 228) (= i1 259) (= i1 446)))

; Formula constraint
(assert (<= a2_0 i1))

(check-sat)
(get-model)