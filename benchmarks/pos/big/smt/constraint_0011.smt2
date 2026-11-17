(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0].a3[0] -> a1_0_a3_0
;   a1[0].a3[1] -> a1_0_a3_1
;   a1[0].a3[2] -> a1_0_a3_2
;   a1[0].a3[3] -> a1_0_a3_3
;   a1[1].a3[0] -> a1_1_a3_0
;   a1[1].a3[1] -> a1_1_a3_1
;   a1[1].a3[2] -> a1_1_a3_2
;   a1[1].a3[3] -> a1_1_a3_3
;   h7.i8 -> h7_i8
;   h9.i10 -> h9_i10
;   h9.i11 -> h9_i11
;   i5
;   i6

; Variable declarations
(declare-fun a1_0_a3_0 () Int)
(declare-fun a1_0_a3_1 () Int)
(declare-fun a1_0_a3_2 () Int)
(declare-fun a1_0_a3_3 () Int)
(declare-fun a1_1_a3_0 () Int)
(declare-fun a1_1_a3_1 () Int)
(declare-fun a1_1_a3_2 () Int)
(declare-fun a1_1_a3_3 () Int)
(declare-fun h7_i8 () Int)
(declare-fun h9_i10 () Int)
(declare-fun h9_i11 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)

; Domain constraints
(assert (and (<= 620 a1_0_a3_0) (<= a1_0_a3_0 775)))
(assert (and (<= 620 a1_0_a3_1) (<= a1_0_a3_1 775)))
(assert (and (<= 620 a1_0_a3_2) (<= a1_0_a3_2 775)))
(assert (and (<= 620 a1_0_a3_3) (<= a1_0_a3_3 775)))
(assert (and (<= 620 a1_1_a3_0) (<= a1_1_a3_0 775)))
(assert (and (<= 620 a1_1_a3_1) (<= a1_1_a3_1 775)))
(assert (and (<= 620 a1_1_a3_2) (<= a1_1_a3_2 775)))
(assert (and (<= 620 a1_1_a3_3) (<= a1_1_a3_3 775)))
(assert (or (= h7_i8 174) (= h7_i8 218) (= h7_i8 640) (= h7_i8 889) (= h7_i8 963)))
(assert (and (<= 316 h9_i10) (<= h9_i10 641)))
(assert (and (<= 20 h9_i11) (<= h9_i11 208)))
(assert (and (<= 34 i5) (<= i5 91)))
(assert (or (= i6 59) (and (<= 301 i6) (<= i6 859))))

; Formula constraint
(assert (and (=> (or (>= (* 6 i6) 29) (< h7_i8 a1_1_a3_2)) (=> (>= i5 h9_i10) (<= (+ a1_1_a3_1 (* 54 h9_i10)) a1_0_a3_3))) (=> (= -93 i6) (or (< i5 (* -82 a1_0_a3_2)) (>= (- -63 (* -90 a1_1_a3_0)) a1_0_a3_0)))))

(check-sat)
(get-model)