(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a11[0][0] -> a11_0_0
;   a11[0][1] -> a11_0_1
;   a11[0][2] -> a11_0_2
;   a11[0][3] -> a11_0_3
;   a11[0][4] -> a11_0_4
;   a11[0][5] -> a11_0_5
;   a1[0].a3[0] -> a1_0_a3_0
;   a1[0].a5[0] -> a1_0_a5_0
;   a1[0].a5[1] -> a1_0_a5_1
;   a1[1].a3[0] -> a1_1_a3_0
;   a1[1].a5[0] -> a1_1_a5_0
;   a1[1].a5[1] -> a1_1_a5_1
;   a1[2].a3[0] -> a1_2_a3_0
;   a1[2].a5[0] -> a1_2_a5_0
;   a1[2].a5[1] -> a1_2_a5_1
;   a1[3].a3[0] -> a1_3_a3_0
;   a1[3].a5[0] -> a1_3_a5_0
;   a1[3].a5[1] -> a1_3_a5_1
;   a1[4].a3[0] -> a1_4_a3_0
;   a1[4].a5[0] -> a1_4_a5_0
;   a1[4].a5[1] -> a1_4_a5_1
;   h9.i10 -> h9_i10
;   i7
;   i8

; Variable declarations
(declare-fun a11_0_0 () Int)
(declare-fun a11_0_1 () Int)
(declare-fun a11_0_2 () Int)
(declare-fun a11_0_3 () Int)
(declare-fun a11_0_4 () Int)
(declare-fun a11_0_5 () Int)
(declare-fun a1_0_a3_0 () Int)
(declare-fun a1_0_a5_0 () Int)
(declare-fun a1_0_a5_1 () Int)
(declare-fun a1_1_a3_0 () Int)
(declare-fun a1_1_a5_0 () Int)
(declare-fun a1_1_a5_1 () Int)
(declare-fun a1_2_a3_0 () Int)
(declare-fun a1_2_a5_0 () Int)
(declare-fun a1_2_a5_1 () Int)
(declare-fun a1_3_a3_0 () Int)
(declare-fun a1_3_a5_0 () Int)
(declare-fun a1_3_a5_1 () Int)
(declare-fun a1_4_a3_0 () Int)
(declare-fun a1_4_a5_0 () Int)
(declare-fun a1_4_a5_1 () Int)
(declare-fun h9_i10 () Int)
(declare-fun i7 () Int)
(declare-fun i8 () Int)

; Domain constraints
(assert (and (<= 213 a11_0_0) (<= a11_0_0 428)))
(assert (and (<= 213 a11_0_1) (<= a11_0_1 428)))
(assert (and (<= 213 a11_0_2) (<= a11_0_2 428)))
(assert (and (<= 213 a11_0_3) (<= a11_0_3 428)))
(assert (and (<= 213 a11_0_4) (<= a11_0_4 428)))
(assert (and (<= 213 a11_0_5) (<= a11_0_5 428)))
(assert (or (= a1_0_a3_0 63) (= a1_0_a3_0 270) (= a1_0_a3_0 577) (= a1_0_a3_0 611)))
(assert (and (<= 104 a1_0_a5_0) (<= a1_0_a5_0 532)))
(assert (and (<= 104 a1_0_a5_1) (<= a1_0_a5_1 532)))
(assert (or (= a1_1_a3_0 63) (= a1_1_a3_0 270) (= a1_1_a3_0 577) (= a1_1_a3_0 611)))
(assert (and (<= 104 a1_1_a5_0) (<= a1_1_a5_0 532)))
(assert (and (<= 104 a1_1_a5_1) (<= a1_1_a5_1 532)))
(assert (or (= a1_2_a3_0 63) (= a1_2_a3_0 270) (= a1_2_a3_0 577) (= a1_2_a3_0 611)))
(assert (and (<= 104 a1_2_a5_0) (<= a1_2_a5_0 532)))
(assert (and (<= 104 a1_2_a5_1) (<= a1_2_a5_1 532)))
(assert (or (= a1_3_a3_0 63) (= a1_3_a3_0 270) (= a1_3_a3_0 577) (= a1_3_a3_0 611)))
(assert (and (<= 104 a1_3_a5_0) (<= a1_3_a5_0 532)))
(assert (and (<= 104 a1_3_a5_1) (<= a1_3_a5_1 532)))
(assert (or (= a1_4_a3_0 63) (= a1_4_a3_0 270) (= a1_4_a3_0 577) (= a1_4_a3_0 611)))
(assert (and (<= 104 a1_4_a5_0) (<= a1_4_a5_0 532)))
(assert (and (<= 104 a1_4_a5_1) (<= a1_4_a5_1 532)))
(assert (and (<= 562 h9_i10) (<= h9_i10 953)))
(assert (and (<= 343 i7) (<= i7 752)))
(assert (and (<= 731 i8) (<= i8 854)))

; Formula constraint
(assert (and (and (= a1_1_a3_0 a1_2_a5_1) (and (> a1_2_a5_1 a11_0_1) (not (= (- 83 a1_4_a5_0) h9_i10)))) (=> (=> (> (+ a1_0_a5_0 (- a11_0_1 a11_0_4)) a11_0_0) (< a11_0_4 a1_0_a3_0)) (or (<= (- a11_0_1 (* 41 a1_1_a5_1)) (* -23 i8)) (< (+ a11_0_4 (+ (* -88 a1_0_a5_1) a1_0_a3_0)) 76)))))

(check-sat)
(get-model)