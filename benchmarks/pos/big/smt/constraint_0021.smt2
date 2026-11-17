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
;   i7

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
(declare-fun i7 () Int)

; Domain constraints
(assert (and (<= 362 a1_0_0) (<= a1_0_0 996)))
(assert (and (<= 362 a1_0_1) (<= a1_0_1 996)))
(assert (and (<= 362 a1_0_2) (<= a1_0_2 996)))
(assert (and (<= 362 a1_1_0) (<= a1_1_0 996)))
(assert (and (<= 362 a1_1_1) (<= a1_1_1 996)))
(assert (and (<= 362 a1_1_2) (<= a1_1_2 996)))
(assert (and (<= 362 a1_2_0) (<= a1_2_0 996)))
(assert (and (<= 362 a1_2_1) (<= a1_2_1 996)))
(assert (and (<= 362 a1_2_2) (<= a1_2_2 996)))
(assert (and (<= 362 a1_3_0) (<= a1_3_0 996)))
(assert (and (<= 362 a1_3_1) (<= a1_3_1 996)))
(assert (and (<= 362 a1_3_2) (<= a1_3_2 996)))
(assert (and (<= 362 a1_4_0) (<= a1_4_0 996)))
(assert (and (<= 362 a1_4_1) (<= a1_4_1 996)))
(assert (and (<= 362 a1_4_2) (<= a1_4_2 996)))
(assert (or (and (<= 215 i7) (<= i7 742)) (= i7 861)))

; Formula constraint
(assert (or (=> (=> (> 87 a1_4_1) (<= 76 (- (+ 33 -31) (* 34 a1_2_1)))) (= a1_3_2 a1_1_1)) (>= (+ (+ -54 (* -32 a1_0_2)) a1_2_0) 26)))

(check-sat)
(get-model)