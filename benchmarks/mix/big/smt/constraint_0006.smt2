(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a11[0] -> a11_0
;   a11[1] -> a11_1
;   a11[2] -> a11_2
;   a11[3] -> a11_3
;   a11[4] -> a11_4
;   a11[5] -> a11_5
;   h1.a4[0] -> h1_a4_0
;   h1.a4[1] -> h1_a4_1
;   h1.a4[2] -> h1_a4_2
;   h1.a6[0][0] -> h1_a6_0_0
;   h1.a6[0][1] -> h1_a6_0_1
;   h1.a6[0][2] -> h1_a6_0_2
;   h1.a6[0][3] -> h1_a6_0_3
;   h1.a6[0][4] -> h1_a6_0_4
;   h1.a6[1][0] -> h1_a6_1_0
;   h1.a6[1][1] -> h1_a6_1_1
;   h1.a6[1][2] -> h1_a6_1_2
;   h1.a6[1][3] -> h1_a6_1_3
;   h1.a6[1][4] -> h1_a6_1_4
;   h1.a6[2][0] -> h1_a6_2_0
;   h1.a6[2][1] -> h1_a6_2_1
;   h1.a6[2][2] -> h1_a6_2_2
;   h1.a6[2][3] -> h1_a6_2_3
;   h1.a6[2][4] -> h1_a6_2_4
;   h1.a6[3][0] -> h1_a6_3_0
;   h1.a6[3][1] -> h1_a6_3_1
;   h1.a6[3][2] -> h1_a6_3_2
;   h1.a6[3][3] -> h1_a6_3_3
;   h1.a6[3][4] -> h1_a6_3_4
;   i10
;   i9

; Variable declarations
(declare-fun a11_0 () Int)
(declare-fun a11_1 () Int)
(declare-fun a11_2 () Int)
(declare-fun a11_3 () Int)
(declare-fun a11_4 () Int)
(declare-fun a11_5 () Int)
(declare-fun h1_a4_0 () Int)
(declare-fun h1_a4_1 () Int)
(declare-fun h1_a4_2 () Int)
(declare-fun h1_a6_0_0 () Int)
(declare-fun h1_a6_0_1 () Int)
(declare-fun h1_a6_0_2 () Int)
(declare-fun h1_a6_0_3 () Int)
(declare-fun h1_a6_0_4 () Int)
(declare-fun h1_a6_1_0 () Int)
(declare-fun h1_a6_1_1 () Int)
(declare-fun h1_a6_1_2 () Int)
(declare-fun h1_a6_1_3 () Int)
(declare-fun h1_a6_1_4 () Int)
(declare-fun h1_a6_2_0 () Int)
(declare-fun h1_a6_2_1 () Int)
(declare-fun h1_a6_2_2 () Int)
(declare-fun h1_a6_2_3 () Int)
(declare-fun h1_a6_2_4 () Int)
(declare-fun h1_a6_3_0 () Int)
(declare-fun h1_a6_3_1 () Int)
(declare-fun h1_a6_3_2 () Int)
(declare-fun h1_a6_3_3 () Int)
(declare-fun h1_a6_3_4 () Int)
(declare-fun i10 () Int)
(declare-fun i9 () Int)

; Domain constraints
(assert (or (= a11_0 -733) (= a11_0 -168) (= a11_0 175)))
(assert (or (= a11_1 -733) (= a11_1 -168) (= a11_1 175)))
(assert (or (= a11_2 -733) (= a11_2 -168) (= a11_2 175)))
(assert (or (= a11_3 -733) (= a11_3 -168) (= a11_3 175)))
(assert (or (= a11_4 -733) (= a11_4 -168) (= a11_4 175)))
(assert (or (= a11_5 -733) (= a11_5 -168) (= a11_5 175)))
(assert (and (<= -852 h1_a4_0) (<= h1_a4_0 -803)))
(assert (and (<= -852 h1_a4_1) (<= h1_a4_1 -803)))
(assert (and (<= -852 h1_a4_2) (<= h1_a4_2 -803)))
(assert (and (<= -552 h1_a6_0_0) (<= h1_a6_0_0 304)))
(assert (and (<= -552 h1_a6_0_1) (<= h1_a6_0_1 304)))
(assert (and (<= -552 h1_a6_0_2) (<= h1_a6_0_2 304)))
(assert (and (<= -552 h1_a6_0_3) (<= h1_a6_0_3 304)))
(assert (and (<= -552 h1_a6_0_4) (<= h1_a6_0_4 304)))
(assert (and (<= -552 h1_a6_1_0) (<= h1_a6_1_0 304)))
(assert (and (<= -552 h1_a6_1_1) (<= h1_a6_1_1 304)))
(assert (and (<= -552 h1_a6_1_2) (<= h1_a6_1_2 304)))
(assert (and (<= -552 h1_a6_1_3) (<= h1_a6_1_3 304)))
(assert (and (<= -552 h1_a6_1_4) (<= h1_a6_1_4 304)))
(assert (and (<= -552 h1_a6_2_0) (<= h1_a6_2_0 304)))
(assert (and (<= -552 h1_a6_2_1) (<= h1_a6_2_1 304)))
(assert (and (<= -552 h1_a6_2_2) (<= h1_a6_2_2 304)))
(assert (and (<= -552 h1_a6_2_3) (<= h1_a6_2_3 304)))
(assert (and (<= -552 h1_a6_2_4) (<= h1_a6_2_4 304)))
(assert (and (<= -552 h1_a6_3_0) (<= h1_a6_3_0 304)))
(assert (and (<= -552 h1_a6_3_1) (<= h1_a6_3_1 304)))
(assert (and (<= -552 h1_a6_3_2) (<= h1_a6_3_2 304)))
(assert (and (<= -552 h1_a6_3_3) (<= h1_a6_3_3 304)))
(assert (and (<= -552 h1_a6_3_4) (<= h1_a6_3_4 304)))
(assert (or (and (<= -921 i10) (<= i10 -889)) (and (<= -494 i10) (<= i10 310)) (= i10 367)))
(assert (and (<= 394 i9) (<= i9 901)))

; Formula constraint
(assert (>= h1_a6_3_4 86))

(check-sat)
(get-model)