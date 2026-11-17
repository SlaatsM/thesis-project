(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a2[0] -> a2_0
;   a4[0][0] -> a4_0_0
;   a4[0][1] -> a4_0_1
;   a4[1][0] -> a4_1_0
;   a4[1][1] -> a4_1_1
;   a4[2][0] -> a4_2_0
;   a4[2][1] -> a4_2_1
;   a4[3][0] -> a4_3_0
;   a4[3][1] -> a4_3_1
;   a4[4][0] -> a4_4_0
;   a4[4][1] -> a4_4_1
;   a8[0][0][0] -> a8_0_0_0
;   a8[0][0][1] -> a8_0_0_1
;   a8[0][0][2] -> a8_0_0_2
;   a8[0][0][3] -> a8_0_0_3
;   a8[0][1][0] -> a8_0_1_0
;   a8[0][1][1] -> a8_0_1_1
;   a8[0][1][2] -> a8_0_1_2
;   a8[0][1][3] -> a8_0_1_3
;   a8[0][2][0] -> a8_0_2_0
;   a8[0][2][1] -> a8_0_2_1
;   a8[0][2][2] -> a8_0_2_2
;   a8[0][2][3] -> a8_0_2_3
;   a8[0][3][0] -> a8_0_3_0
;   a8[0][3][1] -> a8_0_3_1
;   a8[0][3][2] -> a8_0_3_2
;   a8[0][3][3] -> a8_0_3_3
;   a8[0][4][0] -> a8_0_4_0
;   a8[0][4][1] -> a8_0_4_1
;   a8[0][4][2] -> a8_0_4_2
;   a8[0][4][3] -> a8_0_4_3
;   a8[1][0][0] -> a8_1_0_0
;   a8[1][0][1] -> a8_1_0_1
;   a8[1][0][2] -> a8_1_0_2
;   a8[1][0][3] -> a8_1_0_3
;   a8[1][1][0] -> a8_1_1_0
;   a8[1][1][1] -> a8_1_1_1
;   a8[1][1][2] -> a8_1_1_2
;   a8[1][1][3] -> a8_1_1_3
;   a8[1][2][0] -> a8_1_2_0
;   a8[1][2][1] -> a8_1_2_1
;   a8[1][2][2] -> a8_1_2_2
;   a8[1][2][3] -> a8_1_2_3
;   a8[1][3][0] -> a8_1_3_0
;   a8[1][3][1] -> a8_1_3_1
;   a8[1][3][2] -> a8_1_3_2
;   a8[1][3][3] -> a8_1_3_3
;   a8[1][4][0] -> a8_1_4_0
;   a8[1][4][1] -> a8_1_4_1
;   a8[1][4][2] -> a8_1_4_2
;   a8[1][4][3] -> a8_1_4_3
;   a8[2][0][0] -> a8_2_0_0
;   a8[2][0][1] -> a8_2_0_1
;   a8[2][0][2] -> a8_2_0_2
;   a8[2][0][3] -> a8_2_0_3
;   a8[2][1][0] -> a8_2_1_0
;   a8[2][1][1] -> a8_2_1_1
;   a8[2][1][2] -> a8_2_1_2
;   a8[2][1][3] -> a8_2_1_3
;   a8[2][2][0] -> a8_2_2_0
;   a8[2][2][1] -> a8_2_2_1
;   a8[2][2][2] -> a8_2_2_2
;   a8[2][2][3] -> a8_2_2_3
;   a8[2][3][0] -> a8_2_3_0
;   a8[2][3][1] -> a8_2_3_1
;   a8[2][3][2] -> a8_2_3_2
;   a8[2][3][3] -> a8_2_3_3
;   a8[2][4][0] -> a8_2_4_0
;   a8[2][4][1] -> a8_2_4_1
;   a8[2][4][2] -> a8_2_4_2
;   a8[2][4][3] -> a8_2_4_3
;   a8[3][0][0] -> a8_3_0_0
;   a8[3][0][1] -> a8_3_0_1
;   a8[3][0][2] -> a8_3_0_2
;   a8[3][0][3] -> a8_3_0_3
;   a8[3][1][0] -> a8_3_1_0
;   a8[3][1][1] -> a8_3_1_1
;   a8[3][1][2] -> a8_3_1_2
;   a8[3][1][3] -> a8_3_1_3
;   a8[3][2][0] -> a8_3_2_0
;   a8[3][2][1] -> a8_3_2_1
;   a8[3][2][2] -> a8_3_2_2
;   a8[3][2][3] -> a8_3_2_3
;   a8[3][3][0] -> a8_3_3_0
;   a8[3][3][1] -> a8_3_3_1
;   a8[3][3][2] -> a8_3_3_2
;   a8[3][3][3] -> a8_3_3_3
;   a8[3][4][0] -> a8_3_4_0
;   a8[3][4][1] -> a8_3_4_1
;   a8[3][4][2] -> a8_3_4_2
;   a8[3][4][3] -> a8_3_4_3
;   a8[4][0][0] -> a8_4_0_0
;   a8[4][0][1] -> a8_4_0_1
;   a8[4][0][2] -> a8_4_0_2
;   a8[4][0][3] -> a8_4_0_3
;   a8[4][1][0] -> a8_4_1_0
;   a8[4][1][1] -> a8_4_1_1
;   a8[4][1][2] -> a8_4_1_2
;   a8[4][1][3] -> a8_4_1_3
;   a8[4][2][0] -> a8_4_2_0
;   a8[4][2][1] -> a8_4_2_1
;   a8[4][2][2] -> a8_4_2_2
;   a8[4][2][3] -> a8_4_2_3
;   a8[4][3][0] -> a8_4_3_0
;   a8[4][3][1] -> a8_4_3_1
;   a8[4][3][2] -> a8_4_3_2
;   a8[4][3][3] -> a8_4_3_3
;   a8[4][4][0] -> a8_4_4_0
;   a8[4][4][1] -> a8_4_4_1
;   a8[4][4][2] -> a8_4_4_2
;   a8[4][4][3] -> a8_4_4_3
;   a8[5][0][0] -> a8_5_0_0
;   a8[5][0][1] -> a8_5_0_1
;   a8[5][0][2] -> a8_5_0_2
;   a8[5][0][3] -> a8_5_0_3
;   a8[5][1][0] -> a8_5_1_0
;   a8[5][1][1] -> a8_5_1_1
;   a8[5][1][2] -> a8_5_1_2
;   a8[5][1][3] -> a8_5_1_3
;   a8[5][2][0] -> a8_5_2_0
;   a8[5][2][1] -> a8_5_2_1
;   a8[5][2][2] -> a8_5_2_2
;   a8[5][2][3] -> a8_5_2_3
;   a8[5][3][0] -> a8_5_3_0
;   a8[5][3][1] -> a8_5_3_1
;   a8[5][3][2] -> a8_5_3_2
;   a8[5][3][3] -> a8_5_3_3
;   a8[5][4][0] -> a8_5_4_0
;   a8[5][4][1] -> a8_5_4_1
;   a8[5][4][2] -> a8_5_4_2
;   a8[5][4][3] -> a8_5_4_3
;   i1
;   i7

; Variable declarations
(declare-fun a2_0 () Int)
(declare-fun a4_0_0 () Int)
(declare-fun a4_0_1 () Int)
(declare-fun a4_1_0 () Int)
(declare-fun a4_1_1 () Int)
(declare-fun a4_2_0 () Int)
(declare-fun a4_2_1 () Int)
(declare-fun a4_3_0 () Int)
(declare-fun a4_3_1 () Int)
(declare-fun a4_4_0 () Int)
(declare-fun a4_4_1 () Int)
(declare-fun a8_0_0_0 () Int)
(declare-fun a8_0_0_1 () Int)
(declare-fun a8_0_0_2 () Int)
(declare-fun a8_0_0_3 () Int)
(declare-fun a8_0_1_0 () Int)
(declare-fun a8_0_1_1 () Int)
(declare-fun a8_0_1_2 () Int)
(declare-fun a8_0_1_3 () Int)
(declare-fun a8_0_2_0 () Int)
(declare-fun a8_0_2_1 () Int)
(declare-fun a8_0_2_2 () Int)
(declare-fun a8_0_2_3 () Int)
(declare-fun a8_0_3_0 () Int)
(declare-fun a8_0_3_1 () Int)
(declare-fun a8_0_3_2 () Int)
(declare-fun a8_0_3_3 () Int)
(declare-fun a8_0_4_0 () Int)
(declare-fun a8_0_4_1 () Int)
(declare-fun a8_0_4_2 () Int)
(declare-fun a8_0_4_3 () Int)
(declare-fun a8_1_0_0 () Int)
(declare-fun a8_1_0_1 () Int)
(declare-fun a8_1_0_2 () Int)
(declare-fun a8_1_0_3 () Int)
(declare-fun a8_1_1_0 () Int)
(declare-fun a8_1_1_1 () Int)
(declare-fun a8_1_1_2 () Int)
(declare-fun a8_1_1_3 () Int)
(declare-fun a8_1_2_0 () Int)
(declare-fun a8_1_2_1 () Int)
(declare-fun a8_1_2_2 () Int)
(declare-fun a8_1_2_3 () Int)
(declare-fun a8_1_3_0 () Int)
(declare-fun a8_1_3_1 () Int)
(declare-fun a8_1_3_2 () Int)
(declare-fun a8_1_3_3 () Int)
(declare-fun a8_1_4_0 () Int)
(declare-fun a8_1_4_1 () Int)
(declare-fun a8_1_4_2 () Int)
(declare-fun a8_1_4_3 () Int)
(declare-fun a8_2_0_0 () Int)
(declare-fun a8_2_0_1 () Int)
(declare-fun a8_2_0_2 () Int)
(declare-fun a8_2_0_3 () Int)
(declare-fun a8_2_1_0 () Int)
(declare-fun a8_2_1_1 () Int)
(declare-fun a8_2_1_2 () Int)
(declare-fun a8_2_1_3 () Int)
(declare-fun a8_2_2_0 () Int)
(declare-fun a8_2_2_1 () Int)
(declare-fun a8_2_2_2 () Int)
(declare-fun a8_2_2_3 () Int)
(declare-fun a8_2_3_0 () Int)
(declare-fun a8_2_3_1 () Int)
(declare-fun a8_2_3_2 () Int)
(declare-fun a8_2_3_3 () Int)
(declare-fun a8_2_4_0 () Int)
(declare-fun a8_2_4_1 () Int)
(declare-fun a8_2_4_2 () Int)
(declare-fun a8_2_4_3 () Int)
(declare-fun a8_3_0_0 () Int)
(declare-fun a8_3_0_1 () Int)
(declare-fun a8_3_0_2 () Int)
(declare-fun a8_3_0_3 () Int)
(declare-fun a8_3_1_0 () Int)
(declare-fun a8_3_1_1 () Int)
(declare-fun a8_3_1_2 () Int)
(declare-fun a8_3_1_3 () Int)
(declare-fun a8_3_2_0 () Int)
(declare-fun a8_3_2_1 () Int)
(declare-fun a8_3_2_2 () Int)
(declare-fun a8_3_2_3 () Int)
(declare-fun a8_3_3_0 () Int)
(declare-fun a8_3_3_1 () Int)
(declare-fun a8_3_3_2 () Int)
(declare-fun a8_3_3_3 () Int)
(declare-fun a8_3_4_0 () Int)
(declare-fun a8_3_4_1 () Int)
(declare-fun a8_3_4_2 () Int)
(declare-fun a8_3_4_3 () Int)
(declare-fun a8_4_0_0 () Int)
(declare-fun a8_4_0_1 () Int)
(declare-fun a8_4_0_2 () Int)
(declare-fun a8_4_0_3 () Int)
(declare-fun a8_4_1_0 () Int)
(declare-fun a8_4_1_1 () Int)
(declare-fun a8_4_1_2 () Int)
(declare-fun a8_4_1_3 () Int)
(declare-fun a8_4_2_0 () Int)
(declare-fun a8_4_2_1 () Int)
(declare-fun a8_4_2_2 () Int)
(declare-fun a8_4_2_3 () Int)
(declare-fun a8_4_3_0 () Int)
(declare-fun a8_4_3_1 () Int)
(declare-fun a8_4_3_2 () Int)
(declare-fun a8_4_3_3 () Int)
(declare-fun a8_4_4_0 () Int)
(declare-fun a8_4_4_1 () Int)
(declare-fun a8_4_4_2 () Int)
(declare-fun a8_4_4_3 () Int)
(declare-fun a8_5_0_0 () Int)
(declare-fun a8_5_0_1 () Int)
(declare-fun a8_5_0_2 () Int)
(declare-fun a8_5_0_3 () Int)
(declare-fun a8_5_1_0 () Int)
(declare-fun a8_5_1_1 () Int)
(declare-fun a8_5_1_2 () Int)
(declare-fun a8_5_1_3 () Int)
(declare-fun a8_5_2_0 () Int)
(declare-fun a8_5_2_1 () Int)
(declare-fun a8_5_2_2 () Int)
(declare-fun a8_5_2_3 () Int)
(declare-fun a8_5_3_0 () Int)
(declare-fun a8_5_3_1 () Int)
(declare-fun a8_5_3_2 () Int)
(declare-fun a8_5_3_3 () Int)
(declare-fun a8_5_4_0 () Int)
(declare-fun a8_5_4_1 () Int)
(declare-fun a8_5_4_2 () Int)
(declare-fun a8_5_4_3 () Int)
(declare-fun i1 () Int)
(declare-fun i7 () Int)

; Domain constraints
(assert (or (= a2_0 301) (= a2_0 436) (= a2_0 572) (= a2_0 844)))
(assert (or (= a4_0_0 391) (= a4_0_0 536) (= a4_0_0 750) (= a4_0_0 926)))
(assert (or (= a4_0_1 391) (= a4_0_1 536) (= a4_0_1 750) (= a4_0_1 926)))
(assert (or (= a4_1_0 391) (= a4_1_0 536) (= a4_1_0 750) (= a4_1_0 926)))
(assert (or (= a4_1_1 391) (= a4_1_1 536) (= a4_1_1 750) (= a4_1_1 926)))
(assert (or (= a4_2_0 391) (= a4_2_0 536) (= a4_2_0 750) (= a4_2_0 926)))
(assert (or (= a4_2_1 391) (= a4_2_1 536) (= a4_2_1 750) (= a4_2_1 926)))
(assert (or (= a4_3_0 391) (= a4_3_0 536) (= a4_3_0 750) (= a4_3_0 926)))
(assert (or (= a4_3_1 391) (= a4_3_1 536) (= a4_3_1 750) (= a4_3_1 926)))
(assert (or (= a4_4_0 391) (= a4_4_0 536) (= a4_4_0 750) (= a4_4_0 926)))
(assert (or (= a4_4_1 391) (= a4_4_1 536) (= a4_4_1 750) (= a4_4_1 926)))
(assert (and (<= 71 a8_0_0_0) (<= a8_0_0_0 225)))
(assert (and (<= 71 a8_0_0_1) (<= a8_0_0_1 225)))
(assert (and (<= 71 a8_0_0_2) (<= a8_0_0_2 225)))
(assert (and (<= 71 a8_0_0_3) (<= a8_0_0_3 225)))
(assert (and (<= 71 a8_0_1_0) (<= a8_0_1_0 225)))
(assert (and (<= 71 a8_0_1_1) (<= a8_0_1_1 225)))
(assert (and (<= 71 a8_0_1_2) (<= a8_0_1_2 225)))
(assert (and (<= 71 a8_0_1_3) (<= a8_0_1_3 225)))
(assert (and (<= 71 a8_0_2_0) (<= a8_0_2_0 225)))
(assert (and (<= 71 a8_0_2_1) (<= a8_0_2_1 225)))
(assert (and (<= 71 a8_0_2_2) (<= a8_0_2_2 225)))
(assert (and (<= 71 a8_0_2_3) (<= a8_0_2_3 225)))
(assert (and (<= 71 a8_0_3_0) (<= a8_0_3_0 225)))
(assert (and (<= 71 a8_0_3_1) (<= a8_0_3_1 225)))
(assert (and (<= 71 a8_0_3_2) (<= a8_0_3_2 225)))
(assert (and (<= 71 a8_0_3_3) (<= a8_0_3_3 225)))
(assert (and (<= 71 a8_0_4_0) (<= a8_0_4_0 225)))
(assert (and (<= 71 a8_0_4_1) (<= a8_0_4_1 225)))
(assert (and (<= 71 a8_0_4_2) (<= a8_0_4_2 225)))
(assert (and (<= 71 a8_0_4_3) (<= a8_0_4_3 225)))
(assert (and (<= 71 a8_1_0_0) (<= a8_1_0_0 225)))
(assert (and (<= 71 a8_1_0_1) (<= a8_1_0_1 225)))
(assert (and (<= 71 a8_1_0_2) (<= a8_1_0_2 225)))
(assert (and (<= 71 a8_1_0_3) (<= a8_1_0_3 225)))
(assert (and (<= 71 a8_1_1_0) (<= a8_1_1_0 225)))
(assert (and (<= 71 a8_1_1_1) (<= a8_1_1_1 225)))
(assert (and (<= 71 a8_1_1_2) (<= a8_1_1_2 225)))
(assert (and (<= 71 a8_1_1_3) (<= a8_1_1_3 225)))
(assert (and (<= 71 a8_1_2_0) (<= a8_1_2_0 225)))
(assert (and (<= 71 a8_1_2_1) (<= a8_1_2_1 225)))
(assert (and (<= 71 a8_1_2_2) (<= a8_1_2_2 225)))
(assert (and (<= 71 a8_1_2_3) (<= a8_1_2_3 225)))
(assert (and (<= 71 a8_1_3_0) (<= a8_1_3_0 225)))
(assert (and (<= 71 a8_1_3_1) (<= a8_1_3_1 225)))
(assert (and (<= 71 a8_1_3_2) (<= a8_1_3_2 225)))
(assert (and (<= 71 a8_1_3_3) (<= a8_1_3_3 225)))
(assert (and (<= 71 a8_1_4_0) (<= a8_1_4_0 225)))
(assert (and (<= 71 a8_1_4_1) (<= a8_1_4_1 225)))
(assert (and (<= 71 a8_1_4_2) (<= a8_1_4_2 225)))
(assert (and (<= 71 a8_1_4_3) (<= a8_1_4_3 225)))
(assert (and (<= 71 a8_2_0_0) (<= a8_2_0_0 225)))
(assert (and (<= 71 a8_2_0_1) (<= a8_2_0_1 225)))
(assert (and (<= 71 a8_2_0_2) (<= a8_2_0_2 225)))
(assert (and (<= 71 a8_2_0_3) (<= a8_2_0_3 225)))
(assert (and (<= 71 a8_2_1_0) (<= a8_2_1_0 225)))
(assert (and (<= 71 a8_2_1_1) (<= a8_2_1_1 225)))
(assert (and (<= 71 a8_2_1_2) (<= a8_2_1_2 225)))
(assert (and (<= 71 a8_2_1_3) (<= a8_2_1_3 225)))
(assert (and (<= 71 a8_2_2_0) (<= a8_2_2_0 225)))
(assert (and (<= 71 a8_2_2_1) (<= a8_2_2_1 225)))
(assert (and (<= 71 a8_2_2_2) (<= a8_2_2_2 225)))
(assert (and (<= 71 a8_2_2_3) (<= a8_2_2_3 225)))
(assert (and (<= 71 a8_2_3_0) (<= a8_2_3_0 225)))
(assert (and (<= 71 a8_2_3_1) (<= a8_2_3_1 225)))
(assert (and (<= 71 a8_2_3_2) (<= a8_2_3_2 225)))
(assert (and (<= 71 a8_2_3_3) (<= a8_2_3_3 225)))
(assert (and (<= 71 a8_2_4_0) (<= a8_2_4_0 225)))
(assert (and (<= 71 a8_2_4_1) (<= a8_2_4_1 225)))
(assert (and (<= 71 a8_2_4_2) (<= a8_2_4_2 225)))
(assert (and (<= 71 a8_2_4_3) (<= a8_2_4_3 225)))
(assert (and (<= 71 a8_3_0_0) (<= a8_3_0_0 225)))
(assert (and (<= 71 a8_3_0_1) (<= a8_3_0_1 225)))
(assert (and (<= 71 a8_3_0_2) (<= a8_3_0_2 225)))
(assert (and (<= 71 a8_3_0_3) (<= a8_3_0_3 225)))
(assert (and (<= 71 a8_3_1_0) (<= a8_3_1_0 225)))
(assert (and (<= 71 a8_3_1_1) (<= a8_3_1_1 225)))
(assert (and (<= 71 a8_3_1_2) (<= a8_3_1_2 225)))
(assert (and (<= 71 a8_3_1_3) (<= a8_3_1_3 225)))
(assert (and (<= 71 a8_3_2_0) (<= a8_3_2_0 225)))
(assert (and (<= 71 a8_3_2_1) (<= a8_3_2_1 225)))
(assert (and (<= 71 a8_3_2_2) (<= a8_3_2_2 225)))
(assert (and (<= 71 a8_3_2_3) (<= a8_3_2_3 225)))
(assert (and (<= 71 a8_3_3_0) (<= a8_3_3_0 225)))
(assert (and (<= 71 a8_3_3_1) (<= a8_3_3_1 225)))
(assert (and (<= 71 a8_3_3_2) (<= a8_3_3_2 225)))
(assert (and (<= 71 a8_3_3_3) (<= a8_3_3_3 225)))
(assert (and (<= 71 a8_3_4_0) (<= a8_3_4_0 225)))
(assert (and (<= 71 a8_3_4_1) (<= a8_3_4_1 225)))
(assert (and (<= 71 a8_3_4_2) (<= a8_3_4_2 225)))
(assert (and (<= 71 a8_3_4_3) (<= a8_3_4_3 225)))
(assert (and (<= 71 a8_4_0_0) (<= a8_4_0_0 225)))
(assert (and (<= 71 a8_4_0_1) (<= a8_4_0_1 225)))
(assert (and (<= 71 a8_4_0_2) (<= a8_4_0_2 225)))
(assert (and (<= 71 a8_4_0_3) (<= a8_4_0_3 225)))
(assert (and (<= 71 a8_4_1_0) (<= a8_4_1_0 225)))
(assert (and (<= 71 a8_4_1_1) (<= a8_4_1_1 225)))
(assert (and (<= 71 a8_4_1_2) (<= a8_4_1_2 225)))
(assert (and (<= 71 a8_4_1_3) (<= a8_4_1_3 225)))
(assert (and (<= 71 a8_4_2_0) (<= a8_4_2_0 225)))
(assert (and (<= 71 a8_4_2_1) (<= a8_4_2_1 225)))
(assert (and (<= 71 a8_4_2_2) (<= a8_4_2_2 225)))
(assert (and (<= 71 a8_4_2_3) (<= a8_4_2_3 225)))
(assert (and (<= 71 a8_4_3_0) (<= a8_4_3_0 225)))
(assert (and (<= 71 a8_4_3_1) (<= a8_4_3_1 225)))
(assert (and (<= 71 a8_4_3_2) (<= a8_4_3_2 225)))
(assert (and (<= 71 a8_4_3_3) (<= a8_4_3_3 225)))
(assert (and (<= 71 a8_4_4_0) (<= a8_4_4_0 225)))
(assert (and (<= 71 a8_4_4_1) (<= a8_4_4_1 225)))
(assert (and (<= 71 a8_4_4_2) (<= a8_4_4_2 225)))
(assert (and (<= 71 a8_4_4_3) (<= a8_4_4_3 225)))
(assert (and (<= 71 a8_5_0_0) (<= a8_5_0_0 225)))
(assert (and (<= 71 a8_5_0_1) (<= a8_5_0_1 225)))
(assert (and (<= 71 a8_5_0_2) (<= a8_5_0_2 225)))
(assert (and (<= 71 a8_5_0_3) (<= a8_5_0_3 225)))
(assert (and (<= 71 a8_5_1_0) (<= a8_5_1_0 225)))
(assert (and (<= 71 a8_5_1_1) (<= a8_5_1_1 225)))
(assert (and (<= 71 a8_5_1_2) (<= a8_5_1_2 225)))
(assert (and (<= 71 a8_5_1_3) (<= a8_5_1_3 225)))
(assert (and (<= 71 a8_5_2_0) (<= a8_5_2_0 225)))
(assert (and (<= 71 a8_5_2_1) (<= a8_5_2_1 225)))
(assert (and (<= 71 a8_5_2_2) (<= a8_5_2_2 225)))
(assert (and (<= 71 a8_5_2_3) (<= a8_5_2_3 225)))
(assert (and (<= 71 a8_5_3_0) (<= a8_5_3_0 225)))
(assert (and (<= 71 a8_5_3_1) (<= a8_5_3_1 225)))
(assert (and (<= 71 a8_5_3_2) (<= a8_5_3_2 225)))
(assert (and (<= 71 a8_5_3_3) (<= a8_5_3_3 225)))
(assert (and (<= 71 a8_5_4_0) (<= a8_5_4_0 225)))
(assert (and (<= 71 a8_5_4_1) (<= a8_5_4_1 225)))
(assert (and (<= 71 a8_5_4_2) (<= a8_5_4_2 225)))
(assert (and (<= 71 a8_5_4_3) (<= a8_5_4_3 225)))
(assert (or (= i1 122) (= i1 300)))
(assert (or (= i7 99) (= i7 295) (= i7 955)))

; Formula constraint
(assert (not (=> (>= a8_4_4_1 a8_3_1_0) (not (>= a8_3_1_0 28)))))

(check-sat)
(get-model)