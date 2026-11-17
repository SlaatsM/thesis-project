(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)

; Domain constraints
(assert (or (= a1_0 -697) (= a1_0 -257) (= a1_0 -219) (= a1_0 895)))
(assert (or (= a1_1 -697) (= a1_1 -257) (= a1_1 -219) (= a1_1 895)))

; Formula constraint
(assert (not (=> (not (<= 36 (* -20 a1_1))) (and (>= (* 1 a1_1) (+ (* 55 a1_0) (+ a1_0 a1_1))) (not (= 68 a1_0))))))

(check-sat)
(get-model)