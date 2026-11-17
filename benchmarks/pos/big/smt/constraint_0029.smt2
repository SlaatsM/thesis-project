(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0][0] -> a1_0_0
;   a1[0][1] -> a1_0_1
;   a1[0][2] -> a1_0_2
;   a1[0][3] -> a1_0_3
;   a1[1][0] -> a1_1_0
;   a1[1][1] -> a1_1_1
;   a1[1][2] -> a1_1_2
;   a1[1][3] -> a1_1_3
;   a1[2][0] -> a1_2_0
;   a1[2][1] -> a1_2_1
;   a1[2][2] -> a1_2_2
;   a1[2][3] -> a1_2_3
;   a1[3][0] -> a1_3_0
;   a1[3][1] -> a1_3_1
;   a1[3][2] -> a1_3_2
;   a1[3][3] -> a1_3_3
;   a1[4][0] -> a1_4_0
;   a1[4][1] -> a1_4_1
;   a1[4][2] -> a1_4_2
;   a1[4][3] -> a1_4_3
;   a1[5][0] -> a1_5_0
;   a1[5][1] -> a1_5_1
;   a1[5][2] -> a1_5_2
;   a1[5][3] -> a1_5_3
;   i4

; Variable declarations
(declare-fun a1_0_0 () Int)
(declare-fun a1_0_1 () Int)
(declare-fun a1_0_2 () Int)
(declare-fun a1_0_3 () Int)
(declare-fun a1_1_0 () Int)
(declare-fun a1_1_1 () Int)
(declare-fun a1_1_2 () Int)
(declare-fun a1_1_3 () Int)
(declare-fun a1_2_0 () Int)
(declare-fun a1_2_1 () Int)
(declare-fun a1_2_2 () Int)
(declare-fun a1_2_3 () Int)
(declare-fun a1_3_0 () Int)
(declare-fun a1_3_1 () Int)
(declare-fun a1_3_2 () Int)
(declare-fun a1_3_3 () Int)
(declare-fun a1_4_0 () Int)
(declare-fun a1_4_1 () Int)
(declare-fun a1_4_2 () Int)
(declare-fun a1_4_3 () Int)
(declare-fun a1_5_0 () Int)
(declare-fun a1_5_1 () Int)
(declare-fun a1_5_2 () Int)
(declare-fun a1_5_3 () Int)
(declare-fun i4 () Int)

; Domain constraints
(assert (or (= a1_0_0 393) (= a1_0_0 456) (= a1_0_0 591) (= a1_0_0 703)))
(assert (or (= a1_0_1 393) (= a1_0_1 456) (= a1_0_1 591) (= a1_0_1 703)))
(assert (or (= a1_0_2 393) (= a1_0_2 456) (= a1_0_2 591) (= a1_0_2 703)))
(assert (or (= a1_0_3 393) (= a1_0_3 456) (= a1_0_3 591) (= a1_0_3 703)))
(assert (or (= a1_1_0 393) (= a1_1_0 456) (= a1_1_0 591) (= a1_1_0 703)))
(assert (or (= a1_1_1 393) (= a1_1_1 456) (= a1_1_1 591) (= a1_1_1 703)))
(assert (or (= a1_1_2 393) (= a1_1_2 456) (= a1_1_2 591) (= a1_1_2 703)))
(assert (or (= a1_1_3 393) (= a1_1_3 456) (= a1_1_3 591) (= a1_1_3 703)))
(assert (or (= a1_2_0 393) (= a1_2_0 456) (= a1_2_0 591) (= a1_2_0 703)))
(assert (or (= a1_2_1 393) (= a1_2_1 456) (= a1_2_1 591) (= a1_2_1 703)))
(assert (or (= a1_2_2 393) (= a1_2_2 456) (= a1_2_2 591) (= a1_2_2 703)))
(assert (or (= a1_2_3 393) (= a1_2_3 456) (= a1_2_3 591) (= a1_2_3 703)))
(assert (or (= a1_3_0 393) (= a1_3_0 456) (= a1_3_0 591) (= a1_3_0 703)))
(assert (or (= a1_3_1 393) (= a1_3_1 456) (= a1_3_1 591) (= a1_3_1 703)))
(assert (or (= a1_3_2 393) (= a1_3_2 456) (= a1_3_2 591) (= a1_3_2 703)))
(assert (or (= a1_3_3 393) (= a1_3_3 456) (= a1_3_3 591) (= a1_3_3 703)))
(assert (or (= a1_4_0 393) (= a1_4_0 456) (= a1_4_0 591) (= a1_4_0 703)))
(assert (or (= a1_4_1 393) (= a1_4_1 456) (= a1_4_1 591) (= a1_4_1 703)))
(assert (or (= a1_4_2 393) (= a1_4_2 456) (= a1_4_2 591) (= a1_4_2 703)))
(assert (or (= a1_4_3 393) (= a1_4_3 456) (= a1_4_3 591) (= a1_4_3 703)))
(assert (or (= a1_5_0 393) (= a1_5_0 456) (= a1_5_0 591) (= a1_5_0 703)))
(assert (or (= a1_5_1 393) (= a1_5_1 456) (= a1_5_1 591) (= a1_5_1 703)))
(assert (or (= a1_5_2 393) (= a1_5_2 456) (= a1_5_2 591) (= a1_5_2 703)))
(assert (or (= a1_5_3 393) (= a1_5_3 456) (= a1_5_3 591) (= a1_5_3 703)))
(assert (and (<= 601 i4) (<= i4 690)))

; Formula constraint
(assert (> a1_2_2 a1_5_1))

(check-sat)
(get-model)