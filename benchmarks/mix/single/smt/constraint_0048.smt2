(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   i3

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (or (= a1_0 -453) (= a1_0 47) (= a1_0 52)))
(assert (or (= i3 -720) (= i3 355)))

; Formula constraint
(assert (and (> a1_0 (* 94 a1_0)) (and (or (> (* 11 i3) -100) (< (* 49 a1_0) i3)) (=> (<= i3 -59) (> i3 i3)))))

(check-sat)
(get-model)