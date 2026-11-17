(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0].i3 -> a1_0_i3
;   a1[1].i3 -> a1_1_i3

; Variable declarations
(declare-fun a1_0_i3 () Int)
(declare-fun a1_1_i3 () Int)

; Domain constraints
(assert (or (= a1_0_i3 70) (= a1_0_i3 239) (= a1_0_i3 375) (= a1_0_i3 822) (= a1_0_i3 858)))
(assert (or (= a1_1_i3 70) (= a1_1_i3 239) (= a1_1_i3 375) (= a1_1_i3 822) (= a1_1_i3 858)))

; Formula constraint
(assert (=> (>= 62 a1_1_i3) (and (and (<= (- -91 (* 93 a1_0_i3)) (- (+ a1_1_i3 (* 91 a1_0_i3)) a1_1_i3)) (>= (- a1_1_i3 a1_0_i3) 40)) (and (< a1_1_i3 (- a1_0_i3 (* 84 a1_0_i3))) (<= a1_1_i3 (+ 11 44))))))

(check-sat)
(get-model)