(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0][0] -> a1_0_0
;   a1[0][1] -> a1_0_1
;   a1[0][2] -> a1_0_2
;   a1[0][3] -> a1_0_3
;   a1[0][4] -> a1_0_4
;   a1[1][0] -> a1_1_0
;   a1[1][1] -> a1_1_1
;   a1[1][2] -> a1_1_2
;   a1[1][3] -> a1_1_3
;   a1[1][4] -> a1_1_4
;   a1[2][0] -> a1_2_0
;   a1[2][1] -> a1_2_1
;   a1[2][2] -> a1_2_2
;   a1[2][3] -> a1_2_3
;   a1[2][4] -> a1_2_4
;   a1[3][0] -> a1_3_0
;   a1[3][1] -> a1_3_1
;   a1[3][2] -> a1_3_2
;   a1[3][3] -> a1_3_3
;   a1[3][4] -> a1_3_4
;   a1[4][0] -> a1_4_0
;   a1[4][1] -> a1_4_1
;   a1[4][2] -> a1_4_2
;   a1[4][3] -> a1_4_3
;   a1[4][4] -> a1_4_4
;   a4[0] -> a4_0
;   a4[1] -> a4_1
;   a4[2] -> a4_2
;   a7[0][0][0] -> a7_0_0_0
;   a7[0][0][1] -> a7_0_0_1
;   a7[0][0][2] -> a7_0_0_2
;   a7[0][0][3] -> a7_0_0_3
;   a7[0][0][4] -> a7_0_0_4
;   a7[0][0][5] -> a7_0_0_5
;   a7[0][1][0] -> a7_0_1_0
;   a7[0][1][1] -> a7_0_1_1
;   a7[0][1][2] -> a7_0_1_2
;   a7[0][1][3] -> a7_0_1_3
;   a7[0][1][4] -> a7_0_1_4
;   a7[0][1][5] -> a7_0_1_5
;   a7[0][2][0] -> a7_0_2_0
;   a7[0][2][1] -> a7_0_2_1
;   a7[0][2][2] -> a7_0_2_2
;   a7[0][2][3] -> a7_0_2_3
;   a7[0][2][4] -> a7_0_2_4
;   a7[0][2][5] -> a7_0_2_5
;   a7[0][3][0] -> a7_0_3_0
;   a7[0][3][1] -> a7_0_3_1
;   a7[0][3][2] -> a7_0_3_2
;   a7[0][3][3] -> a7_0_3_3
;   a7[0][3][4] -> a7_0_3_4
;   a7[0][3][5] -> a7_0_3_5
;   a7[0][4][0] -> a7_0_4_0
;   a7[0][4][1] -> a7_0_4_1
;   a7[0][4][2] -> a7_0_4_2
;   a7[0][4][3] -> a7_0_4_3
;   a7[0][4][4] -> a7_0_4_4
;   a7[0][4][5] -> a7_0_4_5
;   a7[0][5][0] -> a7_0_5_0
;   a7[0][5][1] -> a7_0_5_1
;   a7[0][5][2] -> a7_0_5_2
;   a7[0][5][3] -> a7_0_5_3
;   a7[0][5][4] -> a7_0_5_4
;   a7[0][5][5] -> a7_0_5_5
;   a7[1][0][0] -> a7_1_0_0
;   a7[1][0][1] -> a7_1_0_1
;   a7[1][0][2] -> a7_1_0_2
;   a7[1][0][3] -> a7_1_0_3
;   a7[1][0][4] -> a7_1_0_4
;   a7[1][0][5] -> a7_1_0_5
;   a7[1][1][0] -> a7_1_1_0
;   a7[1][1][1] -> a7_1_1_1
;   a7[1][1][2] -> a7_1_1_2
;   a7[1][1][3] -> a7_1_1_3
;   a7[1][1][4] -> a7_1_1_4
;   a7[1][1][5] -> a7_1_1_5
;   a7[1][2][0] -> a7_1_2_0
;   a7[1][2][1] -> a7_1_2_1
;   a7[1][2][2] -> a7_1_2_2
;   a7[1][2][3] -> a7_1_2_3
;   a7[1][2][4] -> a7_1_2_4
;   a7[1][2][5] -> a7_1_2_5
;   a7[1][3][0] -> a7_1_3_0
;   a7[1][3][1] -> a7_1_3_1
;   a7[1][3][2] -> a7_1_3_2
;   a7[1][3][3] -> a7_1_3_3
;   a7[1][3][4] -> a7_1_3_4
;   a7[1][3][5] -> a7_1_3_5
;   a7[1][4][0] -> a7_1_4_0
;   a7[1][4][1] -> a7_1_4_1
;   a7[1][4][2] -> a7_1_4_2
;   a7[1][4][3] -> a7_1_4_3
;   a7[1][4][4] -> a7_1_4_4
;   a7[1][4][5] -> a7_1_4_5
;   a7[1][5][0] -> a7_1_5_0
;   a7[1][5][1] -> a7_1_5_1
;   a7[1][5][2] -> a7_1_5_2
;   a7[1][5][3] -> a7_1_5_3
;   a7[1][5][4] -> a7_1_5_4
;   a7[1][5][5] -> a7_1_5_5
;   a7[2][0][0] -> a7_2_0_0
;   a7[2][0][1] -> a7_2_0_1
;   a7[2][0][2] -> a7_2_0_2
;   a7[2][0][3] -> a7_2_0_3
;   a7[2][0][4] -> a7_2_0_4
;   a7[2][0][5] -> a7_2_0_5
;   a7[2][1][0] -> a7_2_1_0
;   a7[2][1][1] -> a7_2_1_1
;   a7[2][1][2] -> a7_2_1_2
;   a7[2][1][3] -> a7_2_1_3
;   a7[2][1][4] -> a7_2_1_4
;   a7[2][1][5] -> a7_2_1_5
;   a7[2][2][0] -> a7_2_2_0
;   a7[2][2][1] -> a7_2_2_1
;   a7[2][2][2] -> a7_2_2_2
;   a7[2][2][3] -> a7_2_2_3
;   a7[2][2][4] -> a7_2_2_4
;   a7[2][2][5] -> a7_2_2_5
;   a7[2][3][0] -> a7_2_3_0
;   a7[2][3][1] -> a7_2_3_1
;   a7[2][3][2] -> a7_2_3_2
;   a7[2][3][3] -> a7_2_3_3
;   a7[2][3][4] -> a7_2_3_4
;   a7[2][3][5] -> a7_2_3_5
;   a7[2][4][0] -> a7_2_4_0
;   a7[2][4][1] -> a7_2_4_1
;   a7[2][4][2] -> a7_2_4_2
;   a7[2][4][3] -> a7_2_4_3
;   a7[2][4][4] -> a7_2_4_4
;   a7[2][4][5] -> a7_2_4_5
;   a7[2][5][0] -> a7_2_5_0
;   a7[2][5][1] -> a7_2_5_1
;   a7[2][5][2] -> a7_2_5_2
;   a7[2][5][3] -> a7_2_5_3
;   a7[2][5][4] -> a7_2_5_4
;   a7[2][5][5] -> a7_2_5_5
;   a7[3][0][0] -> a7_3_0_0
;   a7[3][0][1] -> a7_3_0_1
;   a7[3][0][2] -> a7_3_0_2
;   a7[3][0][3] -> a7_3_0_3
;   a7[3][0][4] -> a7_3_0_4
;   a7[3][0][5] -> a7_3_0_5
;   a7[3][1][0] -> a7_3_1_0
;   a7[3][1][1] -> a7_3_1_1
;   a7[3][1][2] -> a7_3_1_2
;   a7[3][1][3] -> a7_3_1_3
;   a7[3][1][4] -> a7_3_1_4
;   a7[3][1][5] -> a7_3_1_5
;   a7[3][2][0] -> a7_3_2_0
;   a7[3][2][1] -> a7_3_2_1
;   a7[3][2][2] -> a7_3_2_2
;   a7[3][2][3] -> a7_3_2_3
;   a7[3][2][4] -> a7_3_2_4
;   a7[3][2][5] -> a7_3_2_5
;   a7[3][3][0] -> a7_3_3_0
;   a7[3][3][1] -> a7_3_3_1
;   a7[3][3][2] -> a7_3_3_2
;   a7[3][3][3] -> a7_3_3_3
;   a7[3][3][4] -> a7_3_3_4
;   a7[3][3][5] -> a7_3_3_5
;   a7[3][4][0] -> a7_3_4_0
;   a7[3][4][1] -> a7_3_4_1
;   a7[3][4][2] -> a7_3_4_2
;   a7[3][4][3] -> a7_3_4_3
;   a7[3][4][4] -> a7_3_4_4
;   a7[3][4][5] -> a7_3_4_5
;   a7[3][5][0] -> a7_3_5_0
;   a7[3][5][1] -> a7_3_5_1
;   a7[3][5][2] -> a7_3_5_2
;   a7[3][5][3] -> a7_3_5_3
;   a7[3][5][4] -> a7_3_5_4
;   a7[3][5][5] -> a7_3_5_5
;   i11
;   i6

; Variable declarations
(declare-fun a1_0_0 () Int)
(declare-fun a1_0_1 () Int)
(declare-fun a1_0_2 () Int)
(declare-fun a1_0_3 () Int)
(declare-fun a1_0_4 () Int)
(declare-fun a1_1_0 () Int)
(declare-fun a1_1_1 () Int)
(declare-fun a1_1_2 () Int)
(declare-fun a1_1_3 () Int)
(declare-fun a1_1_4 () Int)
(declare-fun a1_2_0 () Int)
(declare-fun a1_2_1 () Int)
(declare-fun a1_2_2 () Int)
(declare-fun a1_2_3 () Int)
(declare-fun a1_2_4 () Int)
(declare-fun a1_3_0 () Int)
(declare-fun a1_3_1 () Int)
(declare-fun a1_3_2 () Int)
(declare-fun a1_3_3 () Int)
(declare-fun a1_3_4 () Int)
(declare-fun a1_4_0 () Int)
(declare-fun a1_4_1 () Int)
(declare-fun a1_4_2 () Int)
(declare-fun a1_4_3 () Int)
(declare-fun a1_4_4 () Int)
(declare-fun a4_0 () Int)
(declare-fun a4_1 () Int)
(declare-fun a4_2 () Int)
(declare-fun a7_0_0_0 () Int)
(declare-fun a7_0_0_1 () Int)
(declare-fun a7_0_0_2 () Int)
(declare-fun a7_0_0_3 () Int)
(declare-fun a7_0_0_4 () Int)
(declare-fun a7_0_0_5 () Int)
(declare-fun a7_0_1_0 () Int)
(declare-fun a7_0_1_1 () Int)
(declare-fun a7_0_1_2 () Int)
(declare-fun a7_0_1_3 () Int)
(declare-fun a7_0_1_4 () Int)
(declare-fun a7_0_1_5 () Int)
(declare-fun a7_0_2_0 () Int)
(declare-fun a7_0_2_1 () Int)
(declare-fun a7_0_2_2 () Int)
(declare-fun a7_0_2_3 () Int)
(declare-fun a7_0_2_4 () Int)
(declare-fun a7_0_2_5 () Int)
(declare-fun a7_0_3_0 () Int)
(declare-fun a7_0_3_1 () Int)
(declare-fun a7_0_3_2 () Int)
(declare-fun a7_0_3_3 () Int)
(declare-fun a7_0_3_4 () Int)
(declare-fun a7_0_3_5 () Int)
(declare-fun a7_0_4_0 () Int)
(declare-fun a7_0_4_1 () Int)
(declare-fun a7_0_4_2 () Int)
(declare-fun a7_0_4_3 () Int)
(declare-fun a7_0_4_4 () Int)
(declare-fun a7_0_4_5 () Int)
(declare-fun a7_0_5_0 () Int)
(declare-fun a7_0_5_1 () Int)
(declare-fun a7_0_5_2 () Int)
(declare-fun a7_0_5_3 () Int)
(declare-fun a7_0_5_4 () Int)
(declare-fun a7_0_5_5 () Int)
(declare-fun a7_1_0_0 () Int)
(declare-fun a7_1_0_1 () Int)
(declare-fun a7_1_0_2 () Int)
(declare-fun a7_1_0_3 () Int)
(declare-fun a7_1_0_4 () Int)
(declare-fun a7_1_0_5 () Int)
(declare-fun a7_1_1_0 () Int)
(declare-fun a7_1_1_1 () Int)
(declare-fun a7_1_1_2 () Int)
(declare-fun a7_1_1_3 () Int)
(declare-fun a7_1_1_4 () Int)
(declare-fun a7_1_1_5 () Int)
(declare-fun a7_1_2_0 () Int)
(declare-fun a7_1_2_1 () Int)
(declare-fun a7_1_2_2 () Int)
(declare-fun a7_1_2_3 () Int)
(declare-fun a7_1_2_4 () Int)
(declare-fun a7_1_2_5 () Int)
(declare-fun a7_1_3_0 () Int)
(declare-fun a7_1_3_1 () Int)
(declare-fun a7_1_3_2 () Int)
(declare-fun a7_1_3_3 () Int)
(declare-fun a7_1_3_4 () Int)
(declare-fun a7_1_3_5 () Int)
(declare-fun a7_1_4_0 () Int)
(declare-fun a7_1_4_1 () Int)
(declare-fun a7_1_4_2 () Int)
(declare-fun a7_1_4_3 () Int)
(declare-fun a7_1_4_4 () Int)
(declare-fun a7_1_4_5 () Int)
(declare-fun a7_1_5_0 () Int)
(declare-fun a7_1_5_1 () Int)
(declare-fun a7_1_5_2 () Int)
(declare-fun a7_1_5_3 () Int)
(declare-fun a7_1_5_4 () Int)
(declare-fun a7_1_5_5 () Int)
(declare-fun a7_2_0_0 () Int)
(declare-fun a7_2_0_1 () Int)
(declare-fun a7_2_0_2 () Int)
(declare-fun a7_2_0_3 () Int)
(declare-fun a7_2_0_4 () Int)
(declare-fun a7_2_0_5 () Int)
(declare-fun a7_2_1_0 () Int)
(declare-fun a7_2_1_1 () Int)
(declare-fun a7_2_1_2 () Int)
(declare-fun a7_2_1_3 () Int)
(declare-fun a7_2_1_4 () Int)
(declare-fun a7_2_1_5 () Int)
(declare-fun a7_2_2_0 () Int)
(declare-fun a7_2_2_1 () Int)
(declare-fun a7_2_2_2 () Int)
(declare-fun a7_2_2_3 () Int)
(declare-fun a7_2_2_4 () Int)
(declare-fun a7_2_2_5 () Int)
(declare-fun a7_2_3_0 () Int)
(declare-fun a7_2_3_1 () Int)
(declare-fun a7_2_3_2 () Int)
(declare-fun a7_2_3_3 () Int)
(declare-fun a7_2_3_4 () Int)
(declare-fun a7_2_3_5 () Int)
(declare-fun a7_2_4_0 () Int)
(declare-fun a7_2_4_1 () Int)
(declare-fun a7_2_4_2 () Int)
(declare-fun a7_2_4_3 () Int)
(declare-fun a7_2_4_4 () Int)
(declare-fun a7_2_4_5 () Int)
(declare-fun a7_2_5_0 () Int)
(declare-fun a7_2_5_1 () Int)
(declare-fun a7_2_5_2 () Int)
(declare-fun a7_2_5_3 () Int)
(declare-fun a7_2_5_4 () Int)
(declare-fun a7_2_5_5 () Int)
(declare-fun a7_3_0_0 () Int)
(declare-fun a7_3_0_1 () Int)
(declare-fun a7_3_0_2 () Int)
(declare-fun a7_3_0_3 () Int)
(declare-fun a7_3_0_4 () Int)
(declare-fun a7_3_0_5 () Int)
(declare-fun a7_3_1_0 () Int)
(declare-fun a7_3_1_1 () Int)
(declare-fun a7_3_1_2 () Int)
(declare-fun a7_3_1_3 () Int)
(declare-fun a7_3_1_4 () Int)
(declare-fun a7_3_1_5 () Int)
(declare-fun a7_3_2_0 () Int)
(declare-fun a7_3_2_1 () Int)
(declare-fun a7_3_2_2 () Int)
(declare-fun a7_3_2_3 () Int)
(declare-fun a7_3_2_4 () Int)
(declare-fun a7_3_2_5 () Int)
(declare-fun a7_3_3_0 () Int)
(declare-fun a7_3_3_1 () Int)
(declare-fun a7_3_3_2 () Int)
(declare-fun a7_3_3_3 () Int)
(declare-fun a7_3_3_4 () Int)
(declare-fun a7_3_3_5 () Int)
(declare-fun a7_3_4_0 () Int)
(declare-fun a7_3_4_1 () Int)
(declare-fun a7_3_4_2 () Int)
(declare-fun a7_3_4_3 () Int)
(declare-fun a7_3_4_4 () Int)
(declare-fun a7_3_4_5 () Int)
(declare-fun a7_3_5_0 () Int)
(declare-fun a7_3_5_1 () Int)
(declare-fun a7_3_5_2 () Int)
(declare-fun a7_3_5_3 () Int)
(declare-fun a7_3_5_4 () Int)
(declare-fun a7_3_5_5 () Int)
(declare-fun i11 () Int)
(declare-fun i6 () Int)

; Domain constraints
(assert (and (<= 236 a1_0_0) (<= a1_0_0 980)))
(assert (and (<= 236 a1_0_1) (<= a1_0_1 980)))
(assert (and (<= 236 a1_0_2) (<= a1_0_2 980)))
(assert (and (<= 236 a1_0_3) (<= a1_0_3 980)))
(assert (and (<= 236 a1_0_4) (<= a1_0_4 980)))
(assert (and (<= 236 a1_1_0) (<= a1_1_0 980)))
(assert (and (<= 236 a1_1_1) (<= a1_1_1 980)))
(assert (and (<= 236 a1_1_2) (<= a1_1_2 980)))
(assert (and (<= 236 a1_1_3) (<= a1_1_3 980)))
(assert (and (<= 236 a1_1_4) (<= a1_1_4 980)))
(assert (and (<= 236 a1_2_0) (<= a1_2_0 980)))
(assert (and (<= 236 a1_2_1) (<= a1_2_1 980)))
(assert (and (<= 236 a1_2_2) (<= a1_2_2 980)))
(assert (and (<= 236 a1_2_3) (<= a1_2_3 980)))
(assert (and (<= 236 a1_2_4) (<= a1_2_4 980)))
(assert (and (<= 236 a1_3_0) (<= a1_3_0 980)))
(assert (and (<= 236 a1_3_1) (<= a1_3_1 980)))
(assert (and (<= 236 a1_3_2) (<= a1_3_2 980)))
(assert (and (<= 236 a1_3_3) (<= a1_3_3 980)))
(assert (and (<= 236 a1_3_4) (<= a1_3_4 980)))
(assert (and (<= 236 a1_4_0) (<= a1_4_0 980)))
(assert (and (<= 236 a1_4_1) (<= a1_4_1 980)))
(assert (and (<= 236 a1_4_2) (<= a1_4_2 980)))
(assert (and (<= 236 a1_4_3) (<= a1_4_3 980)))
(assert (and (<= 236 a1_4_4) (<= a1_4_4 980)))
(assert (or (= a4_0 -593) (= a4_0 -508) (= a4_0 -342) (= a4_0 -179) (= a4_0 44)))
(assert (or (= a4_1 -593) (= a4_1 -508) (= a4_1 -342) (= a4_1 -179) (= a4_1 44)))
(assert (or (= a4_2 -593) (= a4_2 -508) (= a4_2 -342) (= a4_2 -179) (= a4_2 44)))
(assert (and (<= -885 a7_0_0_0) (<= a7_0_0_0 -306)))
(assert (and (<= -885 a7_0_0_1) (<= a7_0_0_1 -306)))
(assert (and (<= -885 a7_0_0_2) (<= a7_0_0_2 -306)))
(assert (and (<= -885 a7_0_0_3) (<= a7_0_0_3 -306)))
(assert (and (<= -885 a7_0_0_4) (<= a7_0_0_4 -306)))
(assert (and (<= -885 a7_0_0_5) (<= a7_0_0_5 -306)))
(assert (and (<= -885 a7_0_1_0) (<= a7_0_1_0 -306)))
(assert (and (<= -885 a7_0_1_1) (<= a7_0_1_1 -306)))
(assert (and (<= -885 a7_0_1_2) (<= a7_0_1_2 -306)))
(assert (and (<= -885 a7_0_1_3) (<= a7_0_1_3 -306)))
(assert (and (<= -885 a7_0_1_4) (<= a7_0_1_4 -306)))
(assert (and (<= -885 a7_0_1_5) (<= a7_0_1_5 -306)))
(assert (and (<= -885 a7_0_2_0) (<= a7_0_2_0 -306)))
(assert (and (<= -885 a7_0_2_1) (<= a7_0_2_1 -306)))
(assert (and (<= -885 a7_0_2_2) (<= a7_0_2_2 -306)))
(assert (and (<= -885 a7_0_2_3) (<= a7_0_2_3 -306)))
(assert (and (<= -885 a7_0_2_4) (<= a7_0_2_4 -306)))
(assert (and (<= -885 a7_0_2_5) (<= a7_0_2_5 -306)))
(assert (and (<= -885 a7_0_3_0) (<= a7_0_3_0 -306)))
(assert (and (<= -885 a7_0_3_1) (<= a7_0_3_1 -306)))
(assert (and (<= -885 a7_0_3_2) (<= a7_0_3_2 -306)))
(assert (and (<= -885 a7_0_3_3) (<= a7_0_3_3 -306)))
(assert (and (<= -885 a7_0_3_4) (<= a7_0_3_4 -306)))
(assert (and (<= -885 a7_0_3_5) (<= a7_0_3_5 -306)))
(assert (and (<= -885 a7_0_4_0) (<= a7_0_4_0 -306)))
(assert (and (<= -885 a7_0_4_1) (<= a7_0_4_1 -306)))
(assert (and (<= -885 a7_0_4_2) (<= a7_0_4_2 -306)))
(assert (and (<= -885 a7_0_4_3) (<= a7_0_4_3 -306)))
(assert (and (<= -885 a7_0_4_4) (<= a7_0_4_4 -306)))
(assert (and (<= -885 a7_0_4_5) (<= a7_0_4_5 -306)))
(assert (and (<= -885 a7_0_5_0) (<= a7_0_5_0 -306)))
(assert (and (<= -885 a7_0_5_1) (<= a7_0_5_1 -306)))
(assert (and (<= -885 a7_0_5_2) (<= a7_0_5_2 -306)))
(assert (and (<= -885 a7_0_5_3) (<= a7_0_5_3 -306)))
(assert (and (<= -885 a7_0_5_4) (<= a7_0_5_4 -306)))
(assert (and (<= -885 a7_0_5_5) (<= a7_0_5_5 -306)))
(assert (and (<= -885 a7_1_0_0) (<= a7_1_0_0 -306)))
(assert (and (<= -885 a7_1_0_1) (<= a7_1_0_1 -306)))
(assert (and (<= -885 a7_1_0_2) (<= a7_1_0_2 -306)))
(assert (and (<= -885 a7_1_0_3) (<= a7_1_0_3 -306)))
(assert (and (<= -885 a7_1_0_4) (<= a7_1_0_4 -306)))
(assert (and (<= -885 a7_1_0_5) (<= a7_1_0_5 -306)))
(assert (and (<= -885 a7_1_1_0) (<= a7_1_1_0 -306)))
(assert (and (<= -885 a7_1_1_1) (<= a7_1_1_1 -306)))
(assert (and (<= -885 a7_1_1_2) (<= a7_1_1_2 -306)))
(assert (and (<= -885 a7_1_1_3) (<= a7_1_1_3 -306)))
(assert (and (<= -885 a7_1_1_4) (<= a7_1_1_4 -306)))
(assert (and (<= -885 a7_1_1_5) (<= a7_1_1_5 -306)))
(assert (and (<= -885 a7_1_2_0) (<= a7_1_2_0 -306)))
(assert (and (<= -885 a7_1_2_1) (<= a7_1_2_1 -306)))
(assert (and (<= -885 a7_1_2_2) (<= a7_1_2_2 -306)))
(assert (and (<= -885 a7_1_2_3) (<= a7_1_2_3 -306)))
(assert (and (<= -885 a7_1_2_4) (<= a7_1_2_4 -306)))
(assert (and (<= -885 a7_1_2_5) (<= a7_1_2_5 -306)))
(assert (and (<= -885 a7_1_3_0) (<= a7_1_3_0 -306)))
(assert (and (<= -885 a7_1_3_1) (<= a7_1_3_1 -306)))
(assert (and (<= -885 a7_1_3_2) (<= a7_1_3_2 -306)))
(assert (and (<= -885 a7_1_3_3) (<= a7_1_3_3 -306)))
(assert (and (<= -885 a7_1_3_4) (<= a7_1_3_4 -306)))
(assert (and (<= -885 a7_1_3_5) (<= a7_1_3_5 -306)))
(assert (and (<= -885 a7_1_4_0) (<= a7_1_4_0 -306)))
(assert (and (<= -885 a7_1_4_1) (<= a7_1_4_1 -306)))
(assert (and (<= -885 a7_1_4_2) (<= a7_1_4_2 -306)))
(assert (and (<= -885 a7_1_4_3) (<= a7_1_4_3 -306)))
(assert (and (<= -885 a7_1_4_4) (<= a7_1_4_4 -306)))
(assert (and (<= -885 a7_1_4_5) (<= a7_1_4_5 -306)))
(assert (and (<= -885 a7_1_5_0) (<= a7_1_5_0 -306)))
(assert (and (<= -885 a7_1_5_1) (<= a7_1_5_1 -306)))
(assert (and (<= -885 a7_1_5_2) (<= a7_1_5_2 -306)))
(assert (and (<= -885 a7_1_5_3) (<= a7_1_5_3 -306)))
(assert (and (<= -885 a7_1_5_4) (<= a7_1_5_4 -306)))
(assert (and (<= -885 a7_1_5_5) (<= a7_1_5_5 -306)))
(assert (and (<= -885 a7_2_0_0) (<= a7_2_0_0 -306)))
(assert (and (<= -885 a7_2_0_1) (<= a7_2_0_1 -306)))
(assert (and (<= -885 a7_2_0_2) (<= a7_2_0_2 -306)))
(assert (and (<= -885 a7_2_0_3) (<= a7_2_0_3 -306)))
(assert (and (<= -885 a7_2_0_4) (<= a7_2_0_4 -306)))
(assert (and (<= -885 a7_2_0_5) (<= a7_2_0_5 -306)))
(assert (and (<= -885 a7_2_1_0) (<= a7_2_1_0 -306)))
(assert (and (<= -885 a7_2_1_1) (<= a7_2_1_1 -306)))
(assert (and (<= -885 a7_2_1_2) (<= a7_2_1_2 -306)))
(assert (and (<= -885 a7_2_1_3) (<= a7_2_1_3 -306)))
(assert (and (<= -885 a7_2_1_4) (<= a7_2_1_4 -306)))
(assert (and (<= -885 a7_2_1_5) (<= a7_2_1_5 -306)))
(assert (and (<= -885 a7_2_2_0) (<= a7_2_2_0 -306)))
(assert (and (<= -885 a7_2_2_1) (<= a7_2_2_1 -306)))
(assert (and (<= -885 a7_2_2_2) (<= a7_2_2_2 -306)))
(assert (and (<= -885 a7_2_2_3) (<= a7_2_2_3 -306)))
(assert (and (<= -885 a7_2_2_4) (<= a7_2_2_4 -306)))
(assert (and (<= -885 a7_2_2_5) (<= a7_2_2_5 -306)))
(assert (and (<= -885 a7_2_3_0) (<= a7_2_3_0 -306)))
(assert (and (<= -885 a7_2_3_1) (<= a7_2_3_1 -306)))
(assert (and (<= -885 a7_2_3_2) (<= a7_2_3_2 -306)))
(assert (and (<= -885 a7_2_3_3) (<= a7_2_3_3 -306)))
(assert (and (<= -885 a7_2_3_4) (<= a7_2_3_4 -306)))
(assert (and (<= -885 a7_2_3_5) (<= a7_2_3_5 -306)))
(assert (and (<= -885 a7_2_4_0) (<= a7_2_4_0 -306)))
(assert (and (<= -885 a7_2_4_1) (<= a7_2_4_1 -306)))
(assert (and (<= -885 a7_2_4_2) (<= a7_2_4_2 -306)))
(assert (and (<= -885 a7_2_4_3) (<= a7_2_4_3 -306)))
(assert (and (<= -885 a7_2_4_4) (<= a7_2_4_4 -306)))
(assert (and (<= -885 a7_2_4_5) (<= a7_2_4_5 -306)))
(assert (and (<= -885 a7_2_5_0) (<= a7_2_5_0 -306)))
(assert (and (<= -885 a7_2_5_1) (<= a7_2_5_1 -306)))
(assert (and (<= -885 a7_2_5_2) (<= a7_2_5_2 -306)))
(assert (and (<= -885 a7_2_5_3) (<= a7_2_5_3 -306)))
(assert (and (<= -885 a7_2_5_4) (<= a7_2_5_4 -306)))
(assert (and (<= -885 a7_2_5_5) (<= a7_2_5_5 -306)))
(assert (and (<= -885 a7_3_0_0) (<= a7_3_0_0 -306)))
(assert (and (<= -885 a7_3_0_1) (<= a7_3_0_1 -306)))
(assert (and (<= -885 a7_3_0_2) (<= a7_3_0_2 -306)))
(assert (and (<= -885 a7_3_0_3) (<= a7_3_0_3 -306)))
(assert (and (<= -885 a7_3_0_4) (<= a7_3_0_4 -306)))
(assert (and (<= -885 a7_3_0_5) (<= a7_3_0_5 -306)))
(assert (and (<= -885 a7_3_1_0) (<= a7_3_1_0 -306)))
(assert (and (<= -885 a7_3_1_1) (<= a7_3_1_1 -306)))
(assert (and (<= -885 a7_3_1_2) (<= a7_3_1_2 -306)))
(assert (and (<= -885 a7_3_1_3) (<= a7_3_1_3 -306)))
(assert (and (<= -885 a7_3_1_4) (<= a7_3_1_4 -306)))
(assert (and (<= -885 a7_3_1_5) (<= a7_3_1_5 -306)))
(assert (and (<= -885 a7_3_2_0) (<= a7_3_2_0 -306)))
(assert (and (<= -885 a7_3_2_1) (<= a7_3_2_1 -306)))
(assert (and (<= -885 a7_3_2_2) (<= a7_3_2_2 -306)))
(assert (and (<= -885 a7_3_2_3) (<= a7_3_2_3 -306)))
(assert (and (<= -885 a7_3_2_4) (<= a7_3_2_4 -306)))
(assert (and (<= -885 a7_3_2_5) (<= a7_3_2_5 -306)))
(assert (and (<= -885 a7_3_3_0) (<= a7_3_3_0 -306)))
(assert (and (<= -885 a7_3_3_1) (<= a7_3_3_1 -306)))
(assert (and (<= -885 a7_3_3_2) (<= a7_3_3_2 -306)))
(assert (and (<= -885 a7_3_3_3) (<= a7_3_3_3 -306)))
(assert (and (<= -885 a7_3_3_4) (<= a7_3_3_4 -306)))
(assert (and (<= -885 a7_3_3_5) (<= a7_3_3_5 -306)))
(assert (and (<= -885 a7_3_4_0) (<= a7_3_4_0 -306)))
(assert (and (<= -885 a7_3_4_1) (<= a7_3_4_1 -306)))
(assert (and (<= -885 a7_3_4_2) (<= a7_3_4_2 -306)))
(assert (and (<= -885 a7_3_4_3) (<= a7_3_4_3 -306)))
(assert (and (<= -885 a7_3_4_4) (<= a7_3_4_4 -306)))
(assert (and (<= -885 a7_3_4_5) (<= a7_3_4_5 -306)))
(assert (and (<= -885 a7_3_5_0) (<= a7_3_5_0 -306)))
(assert (and (<= -885 a7_3_5_1) (<= a7_3_5_1 -306)))
(assert (and (<= -885 a7_3_5_2) (<= a7_3_5_2 -306)))
(assert (and (<= -885 a7_3_5_3) (<= a7_3_5_3 -306)))
(assert (and (<= -885 a7_3_5_4) (<= a7_3_5_4 -306)))
(assert (and (<= -885 a7_3_5_5) (<= a7_3_5_5 -306)))
(assert (or (= i11 -615) (= i11 -107) (= i11 664)))
(assert (and (<= -974 i6) (<= i6 897)))

; Formula constraint
(assert (> (+ -61 a7_2_3_0) (- i6 (* -33 a4_0))))

(check-sat)
(get-model)