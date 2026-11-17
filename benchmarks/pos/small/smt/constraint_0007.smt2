(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a2[0] -> a2_0
;   a2[1] -> a2_1
;   a2[2] -> a2_2
;   i1

; Variable declarations
(declare-fun a2_0 () Int)
(declare-fun a2_1 () Int)
(declare-fun a2_2 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= a2_0 193) (= a2_0 875)))
(assert (or (= a2_1 193) (= a2_1 875)))
(assert (or (= a2_2 193) (= a2_2 875)))
(assert (and (<= 712 i1) (<= i1 722)))

; Formula constraint
(assert (and (=> (not (< a2_1 a2_0)) (= 43 -16)) (<= -84 (* 24 a2_1))))

(check-sat)
(get-model)