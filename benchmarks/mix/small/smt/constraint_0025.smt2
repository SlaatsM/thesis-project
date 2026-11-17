(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)

; Domain constraints
(assert (or (= a1_0 -661) (= a1_0 -343) (= a1_0 247)))
(assert (or (= a1_1 -661) (= a1_1 -343) (= a1_1 247)))

; Formula constraint
(assert (= a1_1 a1_0))

(check-sat)
(get-model)