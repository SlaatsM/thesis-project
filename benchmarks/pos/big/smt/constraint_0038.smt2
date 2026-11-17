(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a5[0] -> a5_0
;   a5[1] -> a5_1
;   a5[2] -> a5_2
;   a7[0] -> a7_0
;   a7[1] -> a7_1
;   a7[2] -> a7_2
;   a7[3] -> a7_3
;   a7[4] -> a7_4
;   a7[5] -> a7_5
;   i1
;   i9

; Variable declarations
(declare-fun a5_0 () Int)
(declare-fun a5_1 () Int)
(declare-fun a5_2 () Int)
(declare-fun a7_0 () Int)
(declare-fun a7_1 () Int)
(declare-fun a7_2 () Int)
(declare-fun a7_3 () Int)
(declare-fun a7_4 () Int)
(declare-fun a7_5 () Int)
(declare-fun i1 () Int)
(declare-fun i9 () Int)

; Domain constraints
(assert (and (<= 284 a5_0) (<= a5_0 881)))
(assert (and (<= 284 a5_1) (<= a5_1 881)))
(assert (and (<= 284 a5_2) (<= a5_2 881)))
(assert (or (and (<= 89 a7_0) (<= a7_0 543)) (and (<= 661 a7_0) (<= a7_0 815))))
(assert (or (and (<= 89 a7_1) (<= a7_1 543)) (and (<= 661 a7_1) (<= a7_1 815))))
(assert (or (and (<= 89 a7_2) (<= a7_2 543)) (and (<= 661 a7_2) (<= a7_2 815))))
(assert (or (and (<= 89 a7_3) (<= a7_3 543)) (and (<= 661 a7_3) (<= a7_3 815))))
(assert (or (and (<= 89 a7_4) (<= a7_4 543)) (and (<= 661 a7_4) (<= a7_4 815))))
(assert (or (and (<= 89 a7_5) (<= a7_5 543)) (and (<= 661 a7_5) (<= a7_5 815))))
(assert (and (<= 326 i1) (<= i1 675)))
(assert (or (= i9 459) (= i9 493)))

; Formula constraint
(assert (or (=> (and (<= (- 81 (* -99 i1)) (- (- a7_2 (* 71 a5_0)) a7_5)) (< 24 a5_1)) (=> (>= (* 75 a5_2) (+ 56 -29)) (<= -29 (- a5_0 (* 25 a7_0))))) (= (* 30 a5_2) -80)))

(check-sat)
(get-model)