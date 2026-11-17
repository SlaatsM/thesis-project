(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a11[0] -> a11_0
;   a11[1] -> a11_1
;   a11[2] -> a11_2
;   a11[3] -> a11_3
;   a11[4] -> a11_4
;   a11[5] -> a11_5
;   a19[0] -> a19_0
;   a19[1] -> a19_1
;   a19[2] -> a19_2
;   a19[3] -> a19_3
;   a19[4] -> a19_4
;   h1.h3.a4[0] -> h1_h3_a4_0
;   h1.h3.a4[1] -> h1_h3_a4_1
;   h1.h3.a4[2] -> h1_h3_a4_2
;   h1.h3.a4[3] -> h1_h3_a4_3
;   h1.h3.a4[4] -> h1_h3_a4_4
;   h1.i2 -> h1_i2
;   h1.i6 -> h1_i6
;   h13.a15[0] -> h13_a15_0
;   h13.a15[1] -> h13_a15_1
;   h13.a15[2] -> h13_a15_2
;   h13.i14 -> h13_i14
;   h7.a9[0] -> h7_a9_0
;   h7.a9[1] -> h7_a9_1
;   h7.a9[2] -> h7_a9_2
;   h7.a9[3] -> h7_a9_3
;   h7.a9[4] -> h7_a9_4
;   h7.i8 -> h7_i8

; Variable declarations
(declare-fun a11_0 () Int)
(declare-fun a11_1 () Int)
(declare-fun a11_2 () Int)
(declare-fun a11_3 () Int)
(declare-fun a11_4 () Int)
(declare-fun a11_5 () Int)
(declare-fun a19_0 () Int)
(declare-fun a19_1 () Int)
(declare-fun a19_2 () Int)
(declare-fun a19_3 () Int)
(declare-fun a19_4 () Int)
(declare-fun h1_h3_a4_0 () Int)
(declare-fun h1_h3_a4_1 () Int)
(declare-fun h1_h3_a4_2 () Int)
(declare-fun h1_h3_a4_3 () Int)
(declare-fun h1_h3_a4_4 () Int)
(declare-fun h1_i2 () Int)
(declare-fun h1_i6 () Int)
(declare-fun h13_a15_0 () Int)
(declare-fun h13_a15_1 () Int)
(declare-fun h13_a15_2 () Int)
(declare-fun h13_i14 () Int)
(declare-fun h7_a9_0 () Int)
(declare-fun h7_a9_1 () Int)
(declare-fun h7_a9_2 () Int)
(declare-fun h7_a9_3 () Int)
(declare-fun h7_a9_4 () Int)
(declare-fun h7_i8 () Int)

; Domain constraints
(assert (and (<= 441 a11_0) (<= a11_0 453)))
(assert (and (<= 441 a11_1) (<= a11_1 453)))
(assert (and (<= 441 a11_2) (<= a11_2 453)))
(assert (and (<= 441 a11_3) (<= a11_3 453)))
(assert (and (<= 441 a11_4) (<= a11_4 453)))
(assert (and (<= 441 a11_5) (<= a11_5 453)))
(assert (or (= a19_0 78) (and (<= 232 a19_0) (<= a19_0 448))))
(assert (or (= a19_1 78) (and (<= 232 a19_1) (<= a19_1 448))))
(assert (or (= a19_2 78) (and (<= 232 a19_2) (<= a19_2 448))))
(assert (or (= a19_3 78) (and (<= 232 a19_3) (<= a19_3 448))))
(assert (or (= a19_4 78) (and (<= 232 a19_4) (<= a19_4 448))))
(assert (and (<= 194 h1_h3_a4_0) (<= h1_h3_a4_0 810)))
(assert (and (<= 194 h1_h3_a4_1) (<= h1_h3_a4_1 810)))
(assert (and (<= 194 h1_h3_a4_2) (<= h1_h3_a4_2 810)))
(assert (and (<= 194 h1_h3_a4_3) (<= h1_h3_a4_3 810)))
(assert (and (<= 194 h1_h3_a4_4) (<= h1_h3_a4_4 810)))
(assert (and (<= 698 h1_i2) (<= h1_i2 945)))
(assert (or (= h1_i6 337) (and (<= 530 h1_i6) (<= h1_i6 718)) (= h1_i6 924)))
(assert (or (= h13_a15_0 378) (= h13_a15_0 410) (= h13_a15_0 440) (= h13_a15_0 451)))
(assert (or (= h13_a15_1 378) (= h13_a15_1 410) (= h13_a15_1 440) (= h13_a15_1 451)))
(assert (or (= h13_a15_2 378) (= h13_a15_2 410) (= h13_a15_2 440) (= h13_a15_2 451)))
(assert (and (<= 350 h13_i14) (<= h13_i14 820)))
(assert (or (and (<= 163 h7_a9_0) (<= h7_a9_0 850)) (= h7_a9_0 964)))
(assert (or (and (<= 163 h7_a9_1) (<= h7_a9_1 850)) (= h7_a9_1 964)))
(assert (or (and (<= 163 h7_a9_2) (<= h7_a9_2 850)) (= h7_a9_2 964)))
(assert (or (and (<= 163 h7_a9_3) (<= h7_a9_3 850)) (= h7_a9_3 964)))
(assert (or (and (<= 163 h7_a9_4) (<= h7_a9_4 850)) (= h7_a9_4 964)))
(assert (and (<= 3 h7_i8) (<= h7_i8 383)))

; Formula constraint
(assert (=> (=> (and (>= (* -55 h13_a15_1) -69) (<= -48 (- (* -79 a19_2) -78))) (>= (* 56 h13_i14) (+ (+ h1_i6 h7_a9_1) (* 100 h13_a15_1)))) (not (and (>= h13_a15_2 (* 86 h13_a15_1)) (<= (* 14 a19_0) (* -70 a19_0))))))

(check-sat)
(get-model)