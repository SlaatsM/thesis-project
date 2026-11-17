(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1
;   a1[2] -> a1_2

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)
(declare-fun a1_2 () Int)

; Domain constraints
(assert (or (= a1_0 288) (= a1_0 610) (= a1_0 907)))
(assert (or (= a1_1 288) (= a1_1 610) (= a1_1 907)))
(assert (or (= a1_2 288) (= a1_2 610) (= a1_2 907)))

; Formula constraint
(assert (and (not (= -35 (* 79 a1_0))) (or (not (< (- a1_1 a1_0) (+ a1_0 a1_2))) (= (* 9 a1_2) a1_1))))

(check-sat)
(get-model)