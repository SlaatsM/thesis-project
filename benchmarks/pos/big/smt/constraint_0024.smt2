(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1
;   a4[0] -> a4_0
;   a4[1] -> a4_1
;   a4[2] -> a4_2
;   i3

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)
(declare-fun a4_0 () Int)
(declare-fun a4_1 () Int)
(declare-fun a4_2 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (and (<= 34 a1_0) (<= a1_0 521)))
(assert (and (<= 34 a1_1) (<= a1_1 521)))
(assert (or (= a4_0 297) (= a4_0 911)))
(assert (or (= a4_1 297) (= a4_1 911)))
(assert (or (= a4_2 297) (= a4_2 911)))
(assert (and (<= 463 i3) (<= i3 481)))

; Formula constraint
(assert (and (and (=> (< a4_1 -24) (> (+ (- (* 21 i3) 76) (+ -9 a4_2)) i3)) (>= a4_2 a4_2)) (> i3 48)))

(check-sat)
(get-model)