(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   i3

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (and (<= -431 a1_0) (<= a1_0 919)))
(assert (and (<= -28 i3) (<= i3 797)))

; Formula constraint
(assert (or (and (=> (> (- a1_0 (* 91 a1_0)) (- 4 (- a1_0 i3))) (< 27 a1_0)) (and (< a1_0 -27) (< -45 i3))) (=> (=> (>= a1_0 (* 18 a1_0)) (not (= 31 77))) (and (= i3 (+ (* 97 i3) (* -69 a1_0))) (>= -11 a1_0)))))

(check-sat)
(get-model)