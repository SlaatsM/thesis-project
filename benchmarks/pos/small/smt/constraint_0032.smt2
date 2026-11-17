(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0][0] -> a1_0_0
;   a1[1][0] -> a1_1_0

; Variable declarations
(declare-fun a1_0_0 () Int)
(declare-fun a1_1_0 () Int)

; Domain constraints
(assert (or (= a1_0_0 64) (= a1_0_0 551)))
(assert (or (= a1_1_0 64) (= a1_1_0 551)))

; Formula constraint
(assert (=> (and (and (> (* 59 a1_1_0) a1_1_0) (>= (* -28 a1_1_0) 5)) (or (>= a1_1_0 a1_1_0) (<= 77 a1_0_0))) (>= a1_0_0 (+ a1_1_0 a1_0_0))))

(check-sat)
(get-model)