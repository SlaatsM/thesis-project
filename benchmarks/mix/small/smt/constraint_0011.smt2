(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   i3

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (or (= a1_0 -900) (= a1_0 -410) (= a1_0 -119) (= a1_0 127) (= a1_0 976)))
(assert (or (= i3 -667) (= i3 -265) (= i3 -142) (= i3 180) (= i3 961)))

; Formula constraint
(assert (<= i3 i3))

(check-sat)
(get-model)