(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0][0] -> a1_0_0
;   a1[0][1] -> a1_0_1
;   a1[0][2] -> a1_0_2
;   a1[1][0] -> a1_1_0
;   a1[1][1] -> a1_1_1
;   a1[1][2] -> a1_1_2
;   a1[2][0] -> a1_2_0
;   a1[2][1] -> a1_2_1
;   a1[2][2] -> a1_2_2
;   a1[3][0] -> a1_3_0
;   a1[3][1] -> a1_3_1
;   a1[3][2] -> a1_3_2
;   a1[4][0] -> a1_4_0
;   a1[4][1] -> a1_4_1
;   a1[4][2] -> a1_4_2
;   a1[5][0] -> a1_5_0
;   a1[5][1] -> a1_5_1
;   a1[5][2] -> a1_5_2
;   i4

; Variable declarations
(declare-fun a1_0_0 () Int)
(declare-fun a1_0_1 () Int)
(declare-fun a1_0_2 () Int)
(declare-fun a1_1_0 () Int)
(declare-fun a1_1_1 () Int)
(declare-fun a1_1_2 () Int)
(declare-fun a1_2_0 () Int)
(declare-fun a1_2_1 () Int)
(declare-fun a1_2_2 () Int)
(declare-fun a1_3_0 () Int)
(declare-fun a1_3_1 () Int)
(declare-fun a1_3_2 () Int)
(declare-fun a1_4_0 () Int)
(declare-fun a1_4_1 () Int)
(declare-fun a1_4_2 () Int)
(declare-fun a1_5_0 () Int)
(declare-fun a1_5_1 () Int)
(declare-fun a1_5_2 () Int)
(declare-fun i4 () Int)

; Domain constraints
(assert (or (= a1_0_0 249) (= a1_0_0 263) (= a1_0_0 397) (= a1_0_0 438) (= a1_0_0 537)))
(assert (or (= a1_0_1 249) (= a1_0_1 263) (= a1_0_1 397) (= a1_0_1 438) (= a1_0_1 537)))
(assert (or (= a1_0_2 249) (= a1_0_2 263) (= a1_0_2 397) (= a1_0_2 438) (= a1_0_2 537)))
(assert (or (= a1_1_0 249) (= a1_1_0 263) (= a1_1_0 397) (= a1_1_0 438) (= a1_1_0 537)))
(assert (or (= a1_1_1 249) (= a1_1_1 263) (= a1_1_1 397) (= a1_1_1 438) (= a1_1_1 537)))
(assert (or (= a1_1_2 249) (= a1_1_2 263) (= a1_1_2 397) (= a1_1_2 438) (= a1_1_2 537)))
(assert (or (= a1_2_0 249) (= a1_2_0 263) (= a1_2_0 397) (= a1_2_0 438) (= a1_2_0 537)))
(assert (or (= a1_2_1 249) (= a1_2_1 263) (= a1_2_1 397) (= a1_2_1 438) (= a1_2_1 537)))
(assert (or (= a1_2_2 249) (= a1_2_2 263) (= a1_2_2 397) (= a1_2_2 438) (= a1_2_2 537)))
(assert (or (= a1_3_0 249) (= a1_3_0 263) (= a1_3_0 397) (= a1_3_0 438) (= a1_3_0 537)))
(assert (or (= a1_3_1 249) (= a1_3_1 263) (= a1_3_1 397) (= a1_3_1 438) (= a1_3_1 537)))
(assert (or (= a1_3_2 249) (= a1_3_2 263) (= a1_3_2 397) (= a1_3_2 438) (= a1_3_2 537)))
(assert (or (= a1_4_0 249) (= a1_4_0 263) (= a1_4_0 397) (= a1_4_0 438) (= a1_4_0 537)))
(assert (or (= a1_4_1 249) (= a1_4_1 263) (= a1_4_1 397) (= a1_4_1 438) (= a1_4_1 537)))
(assert (or (= a1_4_2 249) (= a1_4_2 263) (= a1_4_2 397) (= a1_4_2 438) (= a1_4_2 537)))
(assert (or (= a1_5_0 249) (= a1_5_0 263) (= a1_5_0 397) (= a1_5_0 438) (= a1_5_0 537)))
(assert (or (= a1_5_1 249) (= a1_5_1 263) (= a1_5_1 397) (= a1_5_1 438) (= a1_5_1 537)))
(assert (or (= a1_5_2 249) (= a1_5_2 263) (= a1_5_2 397) (= a1_5_2 438) (= a1_5_2 537)))
(assert (and (<= 137 i4) (<= i4 913)))

; Formula constraint
(assert (or (> (+ (+ (* 66 i4) 96) a1_2_1) -91) (and (> 5 i4) (> a1_4_2 (+ -75 (+ i4 -100))))))

(check-sat)
(get-model)