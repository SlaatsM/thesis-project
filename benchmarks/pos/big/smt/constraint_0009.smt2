(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h5.a6[0][0] -> h5_a6_0_0
;   h5.a6[0][1] -> h5_a6_0_1
;   h5.a6[0][2] -> h5_a6_0_2
;   h5.a6[0][3] -> h5_a6_0_3
;   h5.a6[1][0] -> h5_a6_1_0
;   h5.a6[1][1] -> h5_a6_1_1
;   h5.a6[1][2] -> h5_a6_1_2
;   h5.a6[1][3] -> h5_a6_1_3
;   h5.a6[2][0] -> h5_a6_2_0
;   h5.a6[2][1] -> h5_a6_2_1
;   h5.a6[2][2] -> h5_a6_2_2
;   h5.a6[2][3] -> h5_a6_2_3
;   h5.a9[0][0] -> h5_a9_0_0
;   h5.a9[0][1] -> h5_a9_0_1
;   h5.a9[0][2] -> h5_a9_0_2
;   h5.a9[1][0] -> h5_a9_1_0
;   h5.a9[1][1] -> h5_a9_1_1
;   h5.a9[1][2] -> h5_a9_1_2
;   h5.a9[2][0] -> h5_a9_2_0
;   h5.a9[2][1] -> h5_a9_2_1
;   h5.a9[2][2] -> h5_a9_2_2
;   h5.a9[3][0] -> h5_a9_3_0
;   h5.a9[3][1] -> h5_a9_3_1
;   h5.a9[3][2] -> h5_a9_3_2
;   h5.a9[4][0] -> h5_a9_4_0
;   h5.a9[4][1] -> h5_a9_4_1
;   h5.a9[4][2] -> h5_a9_4_2
;   h5.a9[5][0] -> h5_a9_5_0
;   h5.a9[5][1] -> h5_a9_5_1
;   h5.a9[5][2] -> h5_a9_5_2
;   i1

; Variable declarations
(declare-fun h5_a6_0_0 () Int)
(declare-fun h5_a6_0_1 () Int)
(declare-fun h5_a6_0_2 () Int)
(declare-fun h5_a6_0_3 () Int)
(declare-fun h5_a6_1_0 () Int)
(declare-fun h5_a6_1_1 () Int)
(declare-fun h5_a6_1_2 () Int)
(declare-fun h5_a6_1_3 () Int)
(declare-fun h5_a6_2_0 () Int)
(declare-fun h5_a6_2_1 () Int)
(declare-fun h5_a6_2_2 () Int)
(declare-fun h5_a6_2_3 () Int)
(declare-fun h5_a9_0_0 () Int)
(declare-fun h5_a9_0_1 () Int)
(declare-fun h5_a9_0_2 () Int)
(declare-fun h5_a9_1_0 () Int)
(declare-fun h5_a9_1_1 () Int)
(declare-fun h5_a9_1_2 () Int)
(declare-fun h5_a9_2_0 () Int)
(declare-fun h5_a9_2_1 () Int)
(declare-fun h5_a9_2_2 () Int)
(declare-fun h5_a9_3_0 () Int)
(declare-fun h5_a9_3_1 () Int)
(declare-fun h5_a9_3_2 () Int)
(declare-fun h5_a9_4_0 () Int)
(declare-fun h5_a9_4_1 () Int)
(declare-fun h5_a9_4_2 () Int)
(declare-fun h5_a9_5_0 () Int)
(declare-fun h5_a9_5_1 () Int)
(declare-fun h5_a9_5_2 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 770 h5_a6_0_0) (<= h5_a6_0_0 814)))
(assert (and (<= 770 h5_a6_0_1) (<= h5_a6_0_1 814)))
(assert (and (<= 770 h5_a6_0_2) (<= h5_a6_0_2 814)))
(assert (and (<= 770 h5_a6_0_3) (<= h5_a6_0_3 814)))
(assert (and (<= 770 h5_a6_1_0) (<= h5_a6_1_0 814)))
(assert (and (<= 770 h5_a6_1_1) (<= h5_a6_1_1 814)))
(assert (and (<= 770 h5_a6_1_2) (<= h5_a6_1_2 814)))
(assert (and (<= 770 h5_a6_1_3) (<= h5_a6_1_3 814)))
(assert (and (<= 770 h5_a6_2_0) (<= h5_a6_2_0 814)))
(assert (and (<= 770 h5_a6_2_1) (<= h5_a6_2_1 814)))
(assert (and (<= 770 h5_a6_2_2) (<= h5_a6_2_2 814)))
(assert (and (<= 770 h5_a6_2_3) (<= h5_a6_2_3 814)))
(assert (and (<= 451 h5_a9_0_0) (<= h5_a9_0_0 513)))
(assert (and (<= 451 h5_a9_0_1) (<= h5_a9_0_1 513)))
(assert (and (<= 451 h5_a9_0_2) (<= h5_a9_0_2 513)))
(assert (and (<= 451 h5_a9_1_0) (<= h5_a9_1_0 513)))
(assert (and (<= 451 h5_a9_1_1) (<= h5_a9_1_1 513)))
(assert (and (<= 451 h5_a9_1_2) (<= h5_a9_1_2 513)))
(assert (and (<= 451 h5_a9_2_0) (<= h5_a9_2_0 513)))
(assert (and (<= 451 h5_a9_2_1) (<= h5_a9_2_1 513)))
(assert (and (<= 451 h5_a9_2_2) (<= h5_a9_2_2 513)))
(assert (and (<= 451 h5_a9_3_0) (<= h5_a9_3_0 513)))
(assert (and (<= 451 h5_a9_3_1) (<= h5_a9_3_1 513)))
(assert (and (<= 451 h5_a9_3_2) (<= h5_a9_3_2 513)))
(assert (and (<= 451 h5_a9_4_0) (<= h5_a9_4_0 513)))
(assert (and (<= 451 h5_a9_4_1) (<= h5_a9_4_1 513)))
(assert (and (<= 451 h5_a9_4_2) (<= h5_a9_4_2 513)))
(assert (and (<= 451 h5_a9_5_0) (<= h5_a9_5_0 513)))
(assert (and (<= 451 h5_a9_5_1) (<= h5_a9_5_1 513)))
(assert (and (<= 451 h5_a9_5_2) (<= h5_a9_5_2 513)))
(assert (and (<= 189 i1) (<= i1 725)))

; Formula constraint
(assert (or (> (- (+ -81 h5_a9_3_1) -81) 50) (<= h5_a9_4_1 (- h5_a6_0_2 (- h5_a9_3_0 h5_a9_4_2)))))

(check-sat)
(get-model)