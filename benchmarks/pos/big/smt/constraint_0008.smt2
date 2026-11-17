(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h2.a3[0] -> h2_a3_0
;   h2.a3[1] -> h2_a3_1
;   h2.a3[2] -> h2_a3_2
;   h2.a3[3] -> h2_a3_3
;   h2.a5[0][0] -> h2_a5_0_0
;   h2.a5[0][1] -> h2_a5_0_1
;   h2.a5[0][2] -> h2_a5_0_2
;   h2.a5[0][3] -> h2_a5_0_3
;   h2.a5[0][4] -> h2_a5_0_4
;   h2.a5[0][5] -> h2_a5_0_5
;   h2.a5[1][0] -> h2_a5_1_0
;   h2.a5[1][1] -> h2_a5_1_1
;   h2.a5[1][2] -> h2_a5_1_2
;   h2.a5[1][3] -> h2_a5_1_3
;   h2.a5[1][4] -> h2_a5_1_4
;   h2.a5[1][5] -> h2_a5_1_5
;   h2.a5[2][0] -> h2_a5_2_0
;   h2.a5[2][1] -> h2_a5_2_1
;   h2.a5[2][2] -> h2_a5_2_2
;   h2.a5[2][3] -> h2_a5_2_3
;   h2.a5[2][4] -> h2_a5_2_4
;   h2.a5[2][5] -> h2_a5_2_5
;   h2.a5[3][0] -> h2_a5_3_0
;   h2.a5[3][1] -> h2_a5_3_1
;   h2.a5[3][2] -> h2_a5_3_2
;   h2.a5[3][3] -> h2_a5_3_3
;   h2.a5[3][4] -> h2_a5_3_4
;   h2.a5[3][5] -> h2_a5_3_5
;   h2.a5[4][0] -> h2_a5_4_0
;   h2.a5[4][1] -> h2_a5_4_1
;   h2.a5[4][2] -> h2_a5_4_2
;   h2.a5[4][3] -> h2_a5_4_3
;   h2.a5[4][4] -> h2_a5_4_4
;   h2.a5[4][5] -> h2_a5_4_5
;   h2.a5[5][0] -> h2_a5_5_0
;   h2.a5[5][1] -> h2_a5_5_1
;   h2.a5[5][2] -> h2_a5_5_2
;   h2.a5[5][3] -> h2_a5_5_3
;   h2.a5[5][4] -> h2_a5_5_4
;   h2.a5[5][5] -> h2_a5_5_5
;   i1

; Variable declarations
(declare-fun h2_a3_0 () Int)
(declare-fun h2_a3_1 () Int)
(declare-fun h2_a3_2 () Int)
(declare-fun h2_a3_3 () Int)
(declare-fun h2_a5_0_0 () Int)
(declare-fun h2_a5_0_1 () Int)
(declare-fun h2_a5_0_2 () Int)
(declare-fun h2_a5_0_3 () Int)
(declare-fun h2_a5_0_4 () Int)
(declare-fun h2_a5_0_5 () Int)
(declare-fun h2_a5_1_0 () Int)
(declare-fun h2_a5_1_1 () Int)
(declare-fun h2_a5_1_2 () Int)
(declare-fun h2_a5_1_3 () Int)
(declare-fun h2_a5_1_4 () Int)
(declare-fun h2_a5_1_5 () Int)
(declare-fun h2_a5_2_0 () Int)
(declare-fun h2_a5_2_1 () Int)
(declare-fun h2_a5_2_2 () Int)
(declare-fun h2_a5_2_3 () Int)
(declare-fun h2_a5_2_4 () Int)
(declare-fun h2_a5_2_5 () Int)
(declare-fun h2_a5_3_0 () Int)
(declare-fun h2_a5_3_1 () Int)
(declare-fun h2_a5_3_2 () Int)
(declare-fun h2_a5_3_3 () Int)
(declare-fun h2_a5_3_4 () Int)
(declare-fun h2_a5_3_5 () Int)
(declare-fun h2_a5_4_0 () Int)
(declare-fun h2_a5_4_1 () Int)
(declare-fun h2_a5_4_2 () Int)
(declare-fun h2_a5_4_3 () Int)
(declare-fun h2_a5_4_4 () Int)
(declare-fun h2_a5_4_5 () Int)
(declare-fun h2_a5_5_0 () Int)
(declare-fun h2_a5_5_1 () Int)
(declare-fun h2_a5_5_2 () Int)
(declare-fun h2_a5_5_3 () Int)
(declare-fun h2_a5_5_4 () Int)
(declare-fun h2_a5_5_5 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 673 h2_a3_0) (<= h2_a3_0 724)))
(assert (and (<= 673 h2_a3_1) (<= h2_a3_1 724)))
(assert (and (<= 673 h2_a3_2) (<= h2_a3_2 724)))
(assert (and (<= 673 h2_a3_3) (<= h2_a3_3 724)))
(assert (and (<= 126 h2_a5_0_0) (<= h2_a5_0_0 690)))
(assert (and (<= 126 h2_a5_0_1) (<= h2_a5_0_1 690)))
(assert (and (<= 126 h2_a5_0_2) (<= h2_a5_0_2 690)))
(assert (and (<= 126 h2_a5_0_3) (<= h2_a5_0_3 690)))
(assert (and (<= 126 h2_a5_0_4) (<= h2_a5_0_4 690)))
(assert (and (<= 126 h2_a5_0_5) (<= h2_a5_0_5 690)))
(assert (and (<= 126 h2_a5_1_0) (<= h2_a5_1_0 690)))
(assert (and (<= 126 h2_a5_1_1) (<= h2_a5_1_1 690)))
(assert (and (<= 126 h2_a5_1_2) (<= h2_a5_1_2 690)))
(assert (and (<= 126 h2_a5_1_3) (<= h2_a5_1_3 690)))
(assert (and (<= 126 h2_a5_1_4) (<= h2_a5_1_4 690)))
(assert (and (<= 126 h2_a5_1_5) (<= h2_a5_1_5 690)))
(assert (and (<= 126 h2_a5_2_0) (<= h2_a5_2_0 690)))
(assert (and (<= 126 h2_a5_2_1) (<= h2_a5_2_1 690)))
(assert (and (<= 126 h2_a5_2_2) (<= h2_a5_2_2 690)))
(assert (and (<= 126 h2_a5_2_3) (<= h2_a5_2_3 690)))
(assert (and (<= 126 h2_a5_2_4) (<= h2_a5_2_4 690)))
(assert (and (<= 126 h2_a5_2_5) (<= h2_a5_2_5 690)))
(assert (and (<= 126 h2_a5_3_0) (<= h2_a5_3_0 690)))
(assert (and (<= 126 h2_a5_3_1) (<= h2_a5_3_1 690)))
(assert (and (<= 126 h2_a5_3_2) (<= h2_a5_3_2 690)))
(assert (and (<= 126 h2_a5_3_3) (<= h2_a5_3_3 690)))
(assert (and (<= 126 h2_a5_3_4) (<= h2_a5_3_4 690)))
(assert (and (<= 126 h2_a5_3_5) (<= h2_a5_3_5 690)))
(assert (and (<= 126 h2_a5_4_0) (<= h2_a5_4_0 690)))
(assert (and (<= 126 h2_a5_4_1) (<= h2_a5_4_1 690)))
(assert (and (<= 126 h2_a5_4_2) (<= h2_a5_4_2 690)))
(assert (and (<= 126 h2_a5_4_3) (<= h2_a5_4_3 690)))
(assert (and (<= 126 h2_a5_4_4) (<= h2_a5_4_4 690)))
(assert (and (<= 126 h2_a5_4_5) (<= h2_a5_4_5 690)))
(assert (and (<= 126 h2_a5_5_0) (<= h2_a5_5_0 690)))
(assert (and (<= 126 h2_a5_5_1) (<= h2_a5_5_1 690)))
(assert (and (<= 126 h2_a5_5_2) (<= h2_a5_5_2 690)))
(assert (and (<= 126 h2_a5_5_3) (<= h2_a5_5_3 690)))
(assert (and (<= 126 h2_a5_5_4) (<= h2_a5_5_4 690)))
(assert (and (<= 126 h2_a5_5_5) (<= h2_a5_5_5 690)))
(assert (and (<= 255 i1) (<= i1 434)))

; Formula constraint
(assert (not (and (not (= (+ (+ h2_a5_0_3 -56) (* 91 h2_a5_0_2)) h2_a5_5_0)) (not (<= h2_a5_5_0 h2_a5_5_3)))))

(check-sat)
(get-model)