(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1
;   a1[2] -> a1_2
;   a1[3] -> a1_3
;   a1[4] -> a1_4

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)
(declare-fun a1_2 () Int)
(declare-fun a1_3 () Int)
(declare-fun a1_4 () Int)

; Domain constraints
(assert (and (<= 736 a1_0) (<= a1_0 900)))
(assert (and (<= 736 a1_1) (<= a1_1 900)))
(assert (and (<= 736 a1_2) (<= a1_2 900)))
(assert (and (<= 736 a1_3) (<= a1_3 900)))
(assert (and (<= 736 a1_4) (<= a1_4 900)))

; Formula constraint
(assert (or (=> (and (>= (- (* 96 a1_1) 20) 45) (<= -71 (* -21 a1_1))) (and (>= 19 (+ -60 a1_3)) (>= a1_0 -50))) (not (not (= a1_1 (* 100 a1_4))))))

(check-sat)
(get-model)