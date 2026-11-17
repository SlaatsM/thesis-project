(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1
;   a1[2] -> a1_2
;   a4[0][0] -> a4_0_0
;   a4[0][1] -> a4_0_1
;   a4[0][2] -> a4_0_2
;   a4[0][3] -> a4_0_3
;   a4[0][4] -> a4_0_4
;   a4[1][0] -> a4_1_0
;   a4[1][1] -> a4_1_1
;   a4[1][2] -> a4_1_2
;   a4[1][3] -> a4_1_3
;   a4[1][4] -> a4_1_4
;   a4[2][0] -> a4_2_0
;   a4[2][1] -> a4_2_1
;   a4[2][2] -> a4_2_2
;   a4[2][3] -> a4_2_3
;   a4[2][4] -> a4_2_4
;   a4[3][0] -> a4_3_0
;   a4[3][1] -> a4_3_1
;   a4[3][2] -> a4_3_2
;   a4[3][3] -> a4_3_3
;   a4[3][4] -> a4_3_4
;   i3

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)
(declare-fun a1_2 () Int)
(declare-fun a4_0_0 () Int)
(declare-fun a4_0_1 () Int)
(declare-fun a4_0_2 () Int)
(declare-fun a4_0_3 () Int)
(declare-fun a4_0_4 () Int)
(declare-fun a4_1_0 () Int)
(declare-fun a4_1_1 () Int)
(declare-fun a4_1_2 () Int)
(declare-fun a4_1_3 () Int)
(declare-fun a4_1_4 () Int)
(declare-fun a4_2_0 () Int)
(declare-fun a4_2_1 () Int)
(declare-fun a4_2_2 () Int)
(declare-fun a4_2_3 () Int)
(declare-fun a4_2_4 () Int)
(declare-fun a4_3_0 () Int)
(declare-fun a4_3_1 () Int)
(declare-fun a4_3_2 () Int)
(declare-fun a4_3_3 () Int)
(declare-fun a4_3_4 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (or (= a1_0 289) (= a1_0 338) (= a1_0 671) (= a1_0 810) (= a1_0 974)))
(assert (or (= a1_1 289) (= a1_1 338) (= a1_1 671) (= a1_1 810) (= a1_1 974)))
(assert (or (= a1_2 289) (= a1_2 338) (= a1_2 671) (= a1_2 810) (= a1_2 974)))
(assert (and (<= 825 a4_0_0) (<= a4_0_0 957)))
(assert (and (<= 825 a4_0_1) (<= a4_0_1 957)))
(assert (and (<= 825 a4_0_2) (<= a4_0_2 957)))
(assert (and (<= 825 a4_0_3) (<= a4_0_3 957)))
(assert (and (<= 825 a4_0_4) (<= a4_0_4 957)))
(assert (and (<= 825 a4_1_0) (<= a4_1_0 957)))
(assert (and (<= 825 a4_1_1) (<= a4_1_1 957)))
(assert (and (<= 825 a4_1_2) (<= a4_1_2 957)))
(assert (and (<= 825 a4_1_3) (<= a4_1_3 957)))
(assert (and (<= 825 a4_1_4) (<= a4_1_4 957)))
(assert (and (<= 825 a4_2_0) (<= a4_2_0 957)))
(assert (and (<= 825 a4_2_1) (<= a4_2_1 957)))
(assert (and (<= 825 a4_2_2) (<= a4_2_2 957)))
(assert (and (<= 825 a4_2_3) (<= a4_2_3 957)))
(assert (and (<= 825 a4_2_4) (<= a4_2_4 957)))
(assert (and (<= 825 a4_3_0) (<= a4_3_0 957)))
(assert (and (<= 825 a4_3_1) (<= a4_3_1 957)))
(assert (and (<= 825 a4_3_2) (<= a4_3_2 957)))
(assert (and (<= 825 a4_3_3) (<= a4_3_3 957)))
(assert (and (<= 825 a4_3_4) (<= a4_3_4 957)))
(assert (and (<= 133 i3) (<= i3 519)))

; Formula constraint
(assert (not (not (and (> a4_3_2 a4_0_1) (not (= a4_3_2 a4_0_3))))))

(check-sat)
(get-model)