(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a10[0][0] -> a10_0_0
;   a10[0][1] -> a10_0_1
;   a10[0][2] -> a10_0_2
;   a10[0][3] -> a10_0_3
;   a10[0][4] -> a10_0_4
;   a10[0][5] -> a10_0_5
;   a10[1][0] -> a10_1_0
;   a10[1][1] -> a10_1_1
;   a10[1][2] -> a10_1_2
;   a10[1][3] -> a10_1_3
;   a10[1][4] -> a10_1_4
;   a10[1][5] -> a10_1_5
;   a2[0][0] -> a2_0_0
;   a2[0][1] -> a2_0_1
;   a2[0][2] -> a2_0_2
;   a2[1][0] -> a2_1_0
;   a2[1][1] -> a2_1_1
;   a2[1][2] -> a2_1_2
;   a2[2][0] -> a2_2_0
;   a2[2][1] -> a2_2_1
;   a2[2][2] -> a2_2_2
;   a2[3][0] -> a2_3_0
;   a2[3][1] -> a2_3_1
;   a2[3][2] -> a2_3_2
;   a2[4][0] -> a2_4_0
;   a2[4][1] -> a2_4_1
;   a2[4][2] -> a2_4_2
;   a6[0].a8[0] -> a6_0_a8_0
;   a6[0].a8[1] -> a6_0_a8_1
;   a6[0].a8[2] -> a6_0_a8_2
;   a6[0].a8[3] -> a6_0_a8_3
;   a6[0].a8[4] -> a6_0_a8_4
;   a6[0].a8[5] -> a6_0_a8_5
;   a6[1].a8[0] -> a6_1_a8_0
;   a6[1].a8[1] -> a6_1_a8_1
;   a6[1].a8[2] -> a6_1_a8_2
;   a6[1].a8[3] -> a6_1_a8_3
;   a6[1].a8[4] -> a6_1_a8_4
;   a6[1].a8[5] -> a6_1_a8_5
;   a6[2].a8[0] -> a6_2_a8_0
;   a6[2].a8[1] -> a6_2_a8_1
;   a6[2].a8[2] -> a6_2_a8_2
;   a6[2].a8[3] -> a6_2_a8_3
;   a6[2].a8[4] -> a6_2_a8_4
;   a6[2].a8[5] -> a6_2_a8_5
;   i1
;   i5

; Variable declarations
(declare-fun a10_0_0 () Int)
(declare-fun a10_0_1 () Int)
(declare-fun a10_0_2 () Int)
(declare-fun a10_0_3 () Int)
(declare-fun a10_0_4 () Int)
(declare-fun a10_0_5 () Int)
(declare-fun a10_1_0 () Int)
(declare-fun a10_1_1 () Int)
(declare-fun a10_1_2 () Int)
(declare-fun a10_1_3 () Int)
(declare-fun a10_1_4 () Int)
(declare-fun a10_1_5 () Int)
(declare-fun a2_0_0 () Int)
(declare-fun a2_0_1 () Int)
(declare-fun a2_0_2 () Int)
(declare-fun a2_1_0 () Int)
(declare-fun a2_1_1 () Int)
(declare-fun a2_1_2 () Int)
(declare-fun a2_2_0 () Int)
(declare-fun a2_2_1 () Int)
(declare-fun a2_2_2 () Int)
(declare-fun a2_3_0 () Int)
(declare-fun a2_3_1 () Int)
(declare-fun a2_3_2 () Int)
(declare-fun a2_4_0 () Int)
(declare-fun a2_4_1 () Int)
(declare-fun a2_4_2 () Int)
(declare-fun a6_0_a8_0 () Int)
(declare-fun a6_0_a8_1 () Int)
(declare-fun a6_0_a8_2 () Int)
(declare-fun a6_0_a8_3 () Int)
(declare-fun a6_0_a8_4 () Int)
(declare-fun a6_0_a8_5 () Int)
(declare-fun a6_1_a8_0 () Int)
(declare-fun a6_1_a8_1 () Int)
(declare-fun a6_1_a8_2 () Int)
(declare-fun a6_1_a8_3 () Int)
(declare-fun a6_1_a8_4 () Int)
(declare-fun a6_1_a8_5 () Int)
(declare-fun a6_2_a8_0 () Int)
(declare-fun a6_2_a8_1 () Int)
(declare-fun a6_2_a8_2 () Int)
(declare-fun a6_2_a8_3 () Int)
(declare-fun a6_2_a8_4 () Int)
(declare-fun a6_2_a8_5 () Int)
(declare-fun i1 () Int)
(declare-fun i5 () Int)

; Domain constraints
(assert (and (<= -159 a10_0_0) (<= a10_0_0 547)))
(assert (and (<= -159 a10_0_1) (<= a10_0_1 547)))
(assert (and (<= -159 a10_0_2) (<= a10_0_2 547)))
(assert (and (<= -159 a10_0_3) (<= a10_0_3 547)))
(assert (and (<= -159 a10_0_4) (<= a10_0_4 547)))
(assert (and (<= -159 a10_0_5) (<= a10_0_5 547)))
(assert (and (<= -159 a10_1_0) (<= a10_1_0 547)))
(assert (and (<= -159 a10_1_1) (<= a10_1_1 547)))
(assert (and (<= -159 a10_1_2) (<= a10_1_2 547)))
(assert (and (<= -159 a10_1_3) (<= a10_1_3 547)))
(assert (and (<= -159 a10_1_4) (<= a10_1_4 547)))
(assert (and (<= -159 a10_1_5) (<= a10_1_5 547)))
(assert (or (= a2_0_0 -778) (= a2_0_0 -594) (= a2_0_0 -532) (and (<= -356 a2_0_0) (<= a2_0_0 997))))
(assert (or (= a2_0_1 -778) (= a2_0_1 -594) (= a2_0_1 -532) (and (<= -356 a2_0_1) (<= a2_0_1 997))))
(assert (or (= a2_0_2 -778) (= a2_0_2 -594) (= a2_0_2 -532) (and (<= -356 a2_0_2) (<= a2_0_2 997))))
(assert (or (= a2_1_0 -778) (= a2_1_0 -594) (= a2_1_0 -532) (and (<= -356 a2_1_0) (<= a2_1_0 997))))
(assert (or (= a2_1_1 -778) (= a2_1_1 -594) (= a2_1_1 -532) (and (<= -356 a2_1_1) (<= a2_1_1 997))))
(assert (or (= a2_1_2 -778) (= a2_1_2 -594) (= a2_1_2 -532) (and (<= -356 a2_1_2) (<= a2_1_2 997))))
(assert (or (= a2_2_0 -778) (= a2_2_0 -594) (= a2_2_0 -532) (and (<= -356 a2_2_0) (<= a2_2_0 997))))
(assert (or (= a2_2_1 -778) (= a2_2_1 -594) (= a2_2_1 -532) (and (<= -356 a2_2_1) (<= a2_2_1 997))))
(assert (or (= a2_2_2 -778) (= a2_2_2 -594) (= a2_2_2 -532) (and (<= -356 a2_2_2) (<= a2_2_2 997))))
(assert (or (= a2_3_0 -778) (= a2_3_0 -594) (= a2_3_0 -532) (and (<= -356 a2_3_0) (<= a2_3_0 997))))
(assert (or (= a2_3_1 -778) (= a2_3_1 -594) (= a2_3_1 -532) (and (<= -356 a2_3_1) (<= a2_3_1 997))))
(assert (or (= a2_3_2 -778) (= a2_3_2 -594) (= a2_3_2 -532) (and (<= -356 a2_3_2) (<= a2_3_2 997))))
(assert (or (= a2_4_0 -778) (= a2_4_0 -594) (= a2_4_0 -532) (and (<= -356 a2_4_0) (<= a2_4_0 997))))
(assert (or (= a2_4_1 -778) (= a2_4_1 -594) (= a2_4_1 -532) (and (<= -356 a2_4_1) (<= a2_4_1 997))))
(assert (or (= a2_4_2 -778) (= a2_4_2 -594) (= a2_4_2 -532) (and (<= -356 a2_4_2) (<= a2_4_2 997))))
(assert (and (<= -474 a6_0_a8_0) (<= a6_0_a8_0 740)))
(assert (and (<= -474 a6_0_a8_1) (<= a6_0_a8_1 740)))
(assert (and (<= -474 a6_0_a8_2) (<= a6_0_a8_2 740)))
(assert (and (<= -474 a6_0_a8_3) (<= a6_0_a8_3 740)))
(assert (and (<= -474 a6_0_a8_4) (<= a6_0_a8_4 740)))
(assert (and (<= -474 a6_0_a8_5) (<= a6_0_a8_5 740)))
(assert (and (<= -474 a6_1_a8_0) (<= a6_1_a8_0 740)))
(assert (and (<= -474 a6_1_a8_1) (<= a6_1_a8_1 740)))
(assert (and (<= -474 a6_1_a8_2) (<= a6_1_a8_2 740)))
(assert (and (<= -474 a6_1_a8_3) (<= a6_1_a8_3 740)))
(assert (and (<= -474 a6_1_a8_4) (<= a6_1_a8_4 740)))
(assert (and (<= -474 a6_1_a8_5) (<= a6_1_a8_5 740)))
(assert (and (<= -474 a6_2_a8_0) (<= a6_2_a8_0 740)))
(assert (and (<= -474 a6_2_a8_1) (<= a6_2_a8_1 740)))
(assert (and (<= -474 a6_2_a8_2) (<= a6_2_a8_2 740)))
(assert (and (<= -474 a6_2_a8_3) (<= a6_2_a8_3 740)))
(assert (and (<= -474 a6_2_a8_4) (<= a6_2_a8_4 740)))
(assert (and (<= -474 a6_2_a8_5) (<= a6_2_a8_5 740)))
(assert (or (= i1 436) (= i1 595)))
(assert (and (<= -654 i5) (<= i5 382)))

; Formula constraint
(assert (not (= a2_4_2 (* 55 a2_1_1))))

(check-sat)
(get-model)