(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0][0][0] -> a1_0_0_0
;   a1[0][0][1] -> a1_0_0_1
;   a1[0][0][2] -> a1_0_0_2
;   a1[0][0][3] -> a1_0_0_3
;   a1[0][0][4] -> a1_0_0_4
;   a1[0][0][5] -> a1_0_0_5
;   a1[0][1][0] -> a1_0_1_0
;   a1[0][1][1] -> a1_0_1_1
;   a1[0][1][2] -> a1_0_1_2
;   a1[0][1][3] -> a1_0_1_3
;   a1[0][1][4] -> a1_0_1_4
;   a1[0][1][5] -> a1_0_1_5
;   a1[0][2][0] -> a1_0_2_0
;   a1[0][2][1] -> a1_0_2_1
;   a1[0][2][2] -> a1_0_2_2
;   a1[0][2][3] -> a1_0_2_3
;   a1[0][2][4] -> a1_0_2_4
;   a1[0][2][5] -> a1_0_2_5
;   a1[0][3][0] -> a1_0_3_0
;   a1[0][3][1] -> a1_0_3_1
;   a1[0][3][2] -> a1_0_3_2
;   a1[0][3][3] -> a1_0_3_3
;   a1[0][3][4] -> a1_0_3_4
;   a1[0][3][5] -> a1_0_3_5
;   a1[1][0][0] -> a1_1_0_0
;   a1[1][0][1] -> a1_1_0_1
;   a1[1][0][2] -> a1_1_0_2
;   a1[1][0][3] -> a1_1_0_3
;   a1[1][0][4] -> a1_1_0_4
;   a1[1][0][5] -> a1_1_0_5
;   a1[1][1][0] -> a1_1_1_0
;   a1[1][1][1] -> a1_1_1_1
;   a1[1][1][2] -> a1_1_1_2
;   a1[1][1][3] -> a1_1_1_3
;   a1[1][1][4] -> a1_1_1_4
;   a1[1][1][5] -> a1_1_1_5
;   a1[1][2][0] -> a1_1_2_0
;   a1[1][2][1] -> a1_1_2_1
;   a1[1][2][2] -> a1_1_2_2
;   a1[1][2][3] -> a1_1_2_3
;   a1[1][2][4] -> a1_1_2_4
;   a1[1][2][5] -> a1_1_2_5
;   a1[1][3][0] -> a1_1_3_0
;   a1[1][3][1] -> a1_1_3_1
;   a1[1][3][2] -> a1_1_3_2
;   a1[1][3][3] -> a1_1_3_3
;   a1[1][3][4] -> a1_1_3_4
;   a1[1][3][5] -> a1_1_3_5

; Variable declarations
(declare-fun a1_0_0_0 () Int)
(declare-fun a1_0_0_1 () Int)
(declare-fun a1_0_0_2 () Int)
(declare-fun a1_0_0_3 () Int)
(declare-fun a1_0_0_4 () Int)
(declare-fun a1_0_0_5 () Int)
(declare-fun a1_0_1_0 () Int)
(declare-fun a1_0_1_1 () Int)
(declare-fun a1_0_1_2 () Int)
(declare-fun a1_0_1_3 () Int)
(declare-fun a1_0_1_4 () Int)
(declare-fun a1_0_1_5 () Int)
(declare-fun a1_0_2_0 () Int)
(declare-fun a1_0_2_1 () Int)
(declare-fun a1_0_2_2 () Int)
(declare-fun a1_0_2_3 () Int)
(declare-fun a1_0_2_4 () Int)
(declare-fun a1_0_2_5 () Int)
(declare-fun a1_0_3_0 () Int)
(declare-fun a1_0_3_1 () Int)
(declare-fun a1_0_3_2 () Int)
(declare-fun a1_0_3_3 () Int)
(declare-fun a1_0_3_4 () Int)
(declare-fun a1_0_3_5 () Int)
(declare-fun a1_1_0_0 () Int)
(declare-fun a1_1_0_1 () Int)
(declare-fun a1_1_0_2 () Int)
(declare-fun a1_1_0_3 () Int)
(declare-fun a1_1_0_4 () Int)
(declare-fun a1_1_0_5 () Int)
(declare-fun a1_1_1_0 () Int)
(declare-fun a1_1_1_1 () Int)
(declare-fun a1_1_1_2 () Int)
(declare-fun a1_1_1_3 () Int)
(declare-fun a1_1_1_4 () Int)
(declare-fun a1_1_1_5 () Int)
(declare-fun a1_1_2_0 () Int)
(declare-fun a1_1_2_1 () Int)
(declare-fun a1_1_2_2 () Int)
(declare-fun a1_1_2_3 () Int)
(declare-fun a1_1_2_4 () Int)
(declare-fun a1_1_2_5 () Int)
(declare-fun a1_1_3_0 () Int)
(declare-fun a1_1_3_1 () Int)
(declare-fun a1_1_3_2 () Int)
(declare-fun a1_1_3_3 () Int)
(declare-fun a1_1_3_4 () Int)
(declare-fun a1_1_3_5 () Int)

; Domain constraints
(assert (and (<= -249 a1_0_0_0) (<= a1_0_0_0 -88)))
(assert (and (<= -249 a1_0_0_1) (<= a1_0_0_1 -88)))
(assert (and (<= -249 a1_0_0_2) (<= a1_0_0_2 -88)))
(assert (and (<= -249 a1_0_0_3) (<= a1_0_0_3 -88)))
(assert (and (<= -249 a1_0_0_4) (<= a1_0_0_4 -88)))
(assert (and (<= -249 a1_0_0_5) (<= a1_0_0_5 -88)))
(assert (and (<= -249 a1_0_1_0) (<= a1_0_1_0 -88)))
(assert (and (<= -249 a1_0_1_1) (<= a1_0_1_1 -88)))
(assert (and (<= -249 a1_0_1_2) (<= a1_0_1_2 -88)))
(assert (and (<= -249 a1_0_1_3) (<= a1_0_1_3 -88)))
(assert (and (<= -249 a1_0_1_4) (<= a1_0_1_4 -88)))
(assert (and (<= -249 a1_0_1_5) (<= a1_0_1_5 -88)))
(assert (and (<= -249 a1_0_2_0) (<= a1_0_2_0 -88)))
(assert (and (<= -249 a1_0_2_1) (<= a1_0_2_1 -88)))
(assert (and (<= -249 a1_0_2_2) (<= a1_0_2_2 -88)))
(assert (and (<= -249 a1_0_2_3) (<= a1_0_2_3 -88)))
(assert (and (<= -249 a1_0_2_4) (<= a1_0_2_4 -88)))
(assert (and (<= -249 a1_0_2_5) (<= a1_0_2_5 -88)))
(assert (and (<= -249 a1_0_3_0) (<= a1_0_3_0 -88)))
(assert (and (<= -249 a1_0_3_1) (<= a1_0_3_1 -88)))
(assert (and (<= -249 a1_0_3_2) (<= a1_0_3_2 -88)))
(assert (and (<= -249 a1_0_3_3) (<= a1_0_3_3 -88)))
(assert (and (<= -249 a1_0_3_4) (<= a1_0_3_4 -88)))
(assert (and (<= -249 a1_0_3_5) (<= a1_0_3_5 -88)))
(assert (and (<= -249 a1_1_0_0) (<= a1_1_0_0 -88)))
(assert (and (<= -249 a1_1_0_1) (<= a1_1_0_1 -88)))
(assert (and (<= -249 a1_1_0_2) (<= a1_1_0_2 -88)))
(assert (and (<= -249 a1_1_0_3) (<= a1_1_0_3 -88)))
(assert (and (<= -249 a1_1_0_4) (<= a1_1_0_4 -88)))
(assert (and (<= -249 a1_1_0_5) (<= a1_1_0_5 -88)))
(assert (and (<= -249 a1_1_1_0) (<= a1_1_1_0 -88)))
(assert (and (<= -249 a1_1_1_1) (<= a1_1_1_1 -88)))
(assert (and (<= -249 a1_1_1_2) (<= a1_1_1_2 -88)))
(assert (and (<= -249 a1_1_1_3) (<= a1_1_1_3 -88)))
(assert (and (<= -249 a1_1_1_4) (<= a1_1_1_4 -88)))
(assert (and (<= -249 a1_1_1_5) (<= a1_1_1_5 -88)))
(assert (and (<= -249 a1_1_2_0) (<= a1_1_2_0 -88)))
(assert (and (<= -249 a1_1_2_1) (<= a1_1_2_1 -88)))
(assert (and (<= -249 a1_1_2_2) (<= a1_1_2_2 -88)))
(assert (and (<= -249 a1_1_2_3) (<= a1_1_2_3 -88)))
(assert (and (<= -249 a1_1_2_4) (<= a1_1_2_4 -88)))
(assert (and (<= -249 a1_1_2_5) (<= a1_1_2_5 -88)))
(assert (and (<= -249 a1_1_3_0) (<= a1_1_3_0 -88)))
(assert (and (<= -249 a1_1_3_1) (<= a1_1_3_1 -88)))
(assert (and (<= -249 a1_1_3_2) (<= a1_1_3_2 -88)))
(assert (and (<= -249 a1_1_3_3) (<= a1_1_3_3 -88)))
(assert (and (<= -249 a1_1_3_4) (<= a1_1_3_4 -88)))
(assert (and (<= -249 a1_1_3_5) (<= a1_1_3_5 -88)))

; Formula constraint
(assert (=> (=> (and (>= (* 64 a1_0_3_2) (- a1_0_1_4 a1_1_1_4)) (<= (+ a1_0_2_3 -91) a1_1_2_5)) (or (<= (- 15 a1_0_1_2) (* -40 a1_0_2_4)) (<= a1_1_0_1 (* 20 a1_0_2_3)))) (not (>= (* 53 a1_0_2_4) a1_1_1_2))))

(check-sat)
(get-model)