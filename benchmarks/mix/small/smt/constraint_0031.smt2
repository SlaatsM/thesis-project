(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   i3

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (and (<= -318 a1_0) (<= a1_0 -53)))
(assert (and (<= -634 i3) (<= i3 776)))

; Formula constraint
(assert (and (and (and (>= -85 a1_0) (<= (* 37 i3) (* 26 i3))) (> (- -29 -76) -73)) (not (not (= (* -84 i3) (* -30 a1_0))))))

(check-sat)
(get-model)