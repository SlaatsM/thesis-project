(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h2.h4.a6[0] -> h2_h4_a6_0
;   h2.h4.a6[1] -> h2_h4_a6_1
;   h2.h4.a6[2] -> h2_h4_a6_2
;   h2.h4.a6[3] -> h2_h4_a6_3
;   h2.h4.a6[4] -> h2_h4_a6_4
;   h2.h4.i8 -> h2_h4_i8
;   h2.h9.a11[0] -> h2_h9_a11_0
;   h2.h9.a11[1] -> h2_h9_a11_1
;   h2.h9.a11[2] -> h2_h9_a11_2
;   h2.h9.a11[3] -> h2_h9_a11_3
;   h2.h9.a11[4] -> h2_h9_a11_4
;   h2.h9.i10 -> h2_h9_i10
;   h2.h9.i13 -> h2_h9_i13
;   h2.i3 -> h2_i3
;   i1

; Variable declarations
(declare-fun h2_h4_a6_0 () Int)
(declare-fun h2_h4_a6_1 () Int)
(declare-fun h2_h4_a6_2 () Int)
(declare-fun h2_h4_a6_3 () Int)
(declare-fun h2_h4_a6_4 () Int)
(declare-fun h2_h4_i8 () Int)
(declare-fun h2_h9_a11_0 () Int)
(declare-fun h2_h9_a11_1 () Int)
(declare-fun h2_h9_a11_2 () Int)
(declare-fun h2_h9_a11_3 () Int)
(declare-fun h2_h9_a11_4 () Int)
(declare-fun h2_h9_i10 () Int)
(declare-fun h2_h9_i13 () Int)
(declare-fun h2_i3 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= h2_h4_a6_0 -907) (and (<= -439 h2_h4_a6_0) (<= h2_h4_a6_0 122)) (and (<= 475 h2_h4_a6_0) (<= h2_h4_a6_0 516)) (= h2_h4_a6_0 724)))
(assert (or (= h2_h4_a6_1 -907) (and (<= -439 h2_h4_a6_1) (<= h2_h4_a6_1 122)) (and (<= 475 h2_h4_a6_1) (<= h2_h4_a6_1 516)) (= h2_h4_a6_1 724)))
(assert (or (= h2_h4_a6_2 -907) (and (<= -439 h2_h4_a6_2) (<= h2_h4_a6_2 122)) (and (<= 475 h2_h4_a6_2) (<= h2_h4_a6_2 516)) (= h2_h4_a6_2 724)))
(assert (or (= h2_h4_a6_3 -907) (and (<= -439 h2_h4_a6_3) (<= h2_h4_a6_3 122)) (and (<= 475 h2_h4_a6_3) (<= h2_h4_a6_3 516)) (= h2_h4_a6_3 724)))
(assert (or (= h2_h4_a6_4 -907) (and (<= -439 h2_h4_a6_4) (<= h2_h4_a6_4 122)) (and (<= 475 h2_h4_a6_4) (<= h2_h4_a6_4 516)) (= h2_h4_a6_4 724)))
(assert (or (= h2_h4_i8 -936) (= h2_h4_i8 -316) (= h2_h4_i8 17) (= h2_h4_i8 122) (= h2_h4_i8 785)))
(assert (or (and (<= -111 h2_h9_a11_0) (<= h2_h9_a11_0 -5)) (= h2_h9_a11_0 225) (= h2_h9_a11_0 424)))
(assert (or (and (<= -111 h2_h9_a11_1) (<= h2_h9_a11_1 -5)) (= h2_h9_a11_1 225) (= h2_h9_a11_1 424)))
(assert (or (and (<= -111 h2_h9_a11_2) (<= h2_h9_a11_2 -5)) (= h2_h9_a11_2 225) (= h2_h9_a11_2 424)))
(assert (or (and (<= -111 h2_h9_a11_3) (<= h2_h9_a11_3 -5)) (= h2_h9_a11_3 225) (= h2_h9_a11_3 424)))
(assert (or (and (<= -111 h2_h9_a11_4) (<= h2_h9_a11_4 -5)) (= h2_h9_a11_4 225) (= h2_h9_a11_4 424)))
(assert (or (= h2_h9_i10 -855) (= h2_h9_i10 -386) (= h2_h9_i10 384) (= h2_h9_i10 555)))
(assert (and (<= -359 h2_h9_i13) (<= h2_h9_i13 -356)))
(assert (and (<= -821 h2_i3) (<= h2_i3 -272)))
(assert (and (<= -128 i1) (<= i1 51)))

; Formula constraint
(assert (and (and (or (> 70 (- h2_h4_i8 h2_h9_a11_3)) (= (+ 13 (* 82 h2_h9_a11_3)) -19)) (and (>= 73 i1) (> (- h2_i3 -96) h2_h4_a6_4))) (not (or (<= (* 87 h2_h4_a6_3) (* 71 h2_h4_a6_2)) (< (* 32 h2_h4_a6_0) (* 19 h2_h4_a6_0))))))

(check-sat)
(get-model)