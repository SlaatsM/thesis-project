(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a2[0] -> a2_0
;   a2[1] -> a2_1
;   a2[2] -> a2_2
;   a2[3] -> a2_3
;   a2[4] -> a2_4
;   i1

; Variable declarations
(declare-fun a2_0 () Int)
(declare-fun a2_1 () Int)
(declare-fun a2_2 () Int)
(declare-fun a2_3 () Int)
(declare-fun a2_4 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= -542 a2_0) (<= a2_0 21)))
(assert (and (<= -542 a2_1) (<= a2_1 21)))
(assert (and (<= -542 a2_2) (<= a2_2 21)))
(assert (and (<= -542 a2_3) (<= a2_3 21)))
(assert (and (<= -542 a2_4) (<= a2_4 21)))
(assert (and (<= -579 i1) (<= i1 135)))

; Formula constraint
(assert (= (- i1 (- 64 a2_0)) (* -98 a2_2)))

(check-sat)
(get-model)