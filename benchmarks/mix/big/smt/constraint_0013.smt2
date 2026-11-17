(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a13[0] -> a13_0
;   a13[1] -> a13_1
;   a13[2] -> a13_2
;   a13[3] -> a13_3
;   h1.h3.a4[0] -> h1_h3_a4_0
;   h1.h3.a4[1] -> h1_h3_a4_1
;   h1.h3.a4[2] -> h1_h3_a4_2
;   h1.h3.a4[3] -> h1_h3_a4_3
;   h1.h3.a4[4] -> h1_h3_a4_4
;   h1.h3.a4[5] -> h1_h3_a4_5
;   h1.h7.i8 -> h1_h7_i8
;   h1.h7.i9 -> h1_h7_i9
;   h1.i2 -> h1_i2
;   i10
;   i11
;   i12

; Variable declarations
(declare-fun a13_0 () Int)
(declare-fun a13_1 () Int)
(declare-fun a13_2 () Int)
(declare-fun a13_3 () Int)
(declare-fun h1_h3_a4_0 () Int)
(declare-fun h1_h3_a4_1 () Int)
(declare-fun h1_h3_a4_2 () Int)
(declare-fun h1_h3_a4_3 () Int)
(declare-fun h1_h3_a4_4 () Int)
(declare-fun h1_h3_a4_5 () Int)
(declare-fun h1_h7_i8 () Int)
(declare-fun h1_h7_i9 () Int)
(declare-fun h1_i2 () Int)
(declare-fun i10 () Int)
(declare-fun i11 () Int)
(declare-fun i12 () Int)

; Domain constraints
(assert (or (= a13_0 -969) (= a13_0 59) (= a13_0 483)))
(assert (or (= a13_1 -969) (= a13_1 59) (= a13_1 483)))
(assert (or (= a13_2 -969) (= a13_2 59) (= a13_2 483)))
(assert (or (= a13_3 -969) (= a13_3 59) (= a13_3 483)))
(assert (and (<= -900 h1_h3_a4_0) (<= h1_h3_a4_0 91)))
(assert (and (<= -900 h1_h3_a4_1) (<= h1_h3_a4_1 91)))
(assert (and (<= -900 h1_h3_a4_2) (<= h1_h3_a4_2 91)))
(assert (and (<= -900 h1_h3_a4_3) (<= h1_h3_a4_3 91)))
(assert (and (<= -900 h1_h3_a4_4) (<= h1_h3_a4_4 91)))
(assert (and (<= -900 h1_h3_a4_5) (<= h1_h3_a4_5 91)))
(assert (and (<= 669 h1_h7_i8) (<= h1_h7_i8 927)))
(assert (or (= h1_h7_i9 -913) (= h1_h7_i9 -860) (= h1_h7_i9 -369) (= h1_h7_i9 710) (= h1_h7_i9 873)))
(assert (and (<= -98 h1_i2) (<= h1_i2 201)))
(assert (or (= i10 -166) (= i10 618) (= i10 641)))
(assert (and (<= -549 i11) (<= i11 -15)))
(assert (and (<= -192 i12) (<= i12 797)))

; Formula constraint
(assert (or (and (and (<= h1_i2 (+ (* -34 h1_h3_a4_2) i12)) (>= -40 14)) (>= (- -35 -6) -23)) (not (and (<= (+ (- 93 45) -90) (+ 42 (- -45 (* -75 h1_i2)))) (> (+ (* 11 h1_h3_a4_5) i11) (+ h1_h3_a4_4 h1_h7_i9))))))

(check-sat)
(get-model)