(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1
;   i3

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (and (<= -437 a1_0) (<= a1_0 494)))
(assert (and (<= -437 a1_1) (<= a1_1 494)))
(assert (and (<= -810 i3) (<= i3 -151)))

; Formula constraint
(assert (> (* -23 a1_1) i3))

(check-sat)
(get-model)