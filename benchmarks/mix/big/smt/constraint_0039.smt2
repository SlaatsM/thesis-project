(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a11[0] -> a11_0
;   a11[1] -> a11_1
;   a11[2] -> a11_2
;   a11[3] -> a11_3
;   a11[4] -> a11_4
;   a1[0][0][0] -> a1_0_0_0
;   a1[0][0][1] -> a1_0_0_1
;   a1[0][0][2] -> a1_0_0_2
;   a1[0][0][3] -> a1_0_0_3
;   a1[0][0][4] -> a1_0_0_4
;   a1[1][0][0] -> a1_1_0_0
;   a1[1][0][1] -> a1_1_0_1
;   a1[1][0][2] -> a1_1_0_2
;   a1[1][0][3] -> a1_1_0_3
;   a1[1][0][4] -> a1_1_0_4
;   a1[2][0][0] -> a1_2_0_0
;   a1[2][0][1] -> a1_2_0_1
;   a1[2][0][2] -> a1_2_0_2
;   a1[2][0][3] -> a1_2_0_3
;   a1[2][0][4] -> a1_2_0_4
;   a8[0][0] -> a8_0_0
;   a8[0][1] -> a8_0_1
;   a8[0][2] -> a8_0_2
;   a8[0][3] -> a8_0_3
;   a8[0][4] -> a8_0_4
;   a8[0][5] -> a8_0_5
;   a8[1][0] -> a8_1_0
;   a8[1][1] -> a8_1_1
;   a8[1][2] -> a8_1_2
;   a8[1][3] -> a8_1_3
;   a8[1][4] -> a8_1_4
;   a8[1][5] -> a8_1_5
;   a8[2][0] -> a8_2_0
;   a8[2][1] -> a8_2_1
;   a8[2][2] -> a8_2_2
;   a8[2][3] -> a8_2_3
;   a8[2][4] -> a8_2_4
;   a8[2][5] -> a8_2_5
;   a8[3][0] -> a8_3_0
;   a8[3][1] -> a8_3_1
;   a8[3][2] -> a8_3_2
;   a8[3][3] -> a8_3_3
;   a8[3][4] -> a8_3_4
;   a8[3][5] -> a8_3_5
;   a8[4][0] -> a8_4_0
;   a8[4][1] -> a8_4_1
;   a8[4][2] -> a8_4_2
;   a8[4][3] -> a8_4_3
;   a8[4][4] -> a8_4_4
;   a8[4][5] -> a8_4_5
;   h5.i6 -> h5_i6
;   i7

; Variable declarations
(declare-fun a11_0 () Int)
(declare-fun a11_1 () Int)
(declare-fun a11_2 () Int)
(declare-fun a11_3 () Int)
(declare-fun a11_4 () Int)
(declare-fun a1_0_0_0 () Int)
(declare-fun a1_0_0_1 () Int)
(declare-fun a1_0_0_2 () Int)
(declare-fun a1_0_0_3 () Int)
(declare-fun a1_0_0_4 () Int)
(declare-fun a1_1_0_0 () Int)
(declare-fun a1_1_0_1 () Int)
(declare-fun a1_1_0_2 () Int)
(declare-fun a1_1_0_3 () Int)
(declare-fun a1_1_0_4 () Int)
(declare-fun a1_2_0_0 () Int)
(declare-fun a1_2_0_1 () Int)
(declare-fun a1_2_0_2 () Int)
(declare-fun a1_2_0_3 () Int)
(declare-fun a1_2_0_4 () Int)
(declare-fun a8_0_0 () Int)
(declare-fun a8_0_1 () Int)
(declare-fun a8_0_2 () Int)
(declare-fun a8_0_3 () Int)
(declare-fun a8_0_4 () Int)
(declare-fun a8_0_5 () Int)
(declare-fun a8_1_0 () Int)
(declare-fun a8_1_1 () Int)
(declare-fun a8_1_2 () Int)
(declare-fun a8_1_3 () Int)
(declare-fun a8_1_4 () Int)
(declare-fun a8_1_5 () Int)
(declare-fun a8_2_0 () Int)
(declare-fun a8_2_1 () Int)
(declare-fun a8_2_2 () Int)
(declare-fun a8_2_3 () Int)
(declare-fun a8_2_4 () Int)
(declare-fun a8_2_5 () Int)
(declare-fun a8_3_0 () Int)
(declare-fun a8_3_1 () Int)
(declare-fun a8_3_2 () Int)
(declare-fun a8_3_3 () Int)
(declare-fun a8_3_4 () Int)
(declare-fun a8_3_5 () Int)
(declare-fun a8_4_0 () Int)
(declare-fun a8_4_1 () Int)
(declare-fun a8_4_2 () Int)
(declare-fun a8_4_3 () Int)
(declare-fun a8_4_4 () Int)
(declare-fun a8_4_5 () Int)
(declare-fun h5_i6 () Int)
(declare-fun i7 () Int)

; Domain constraints
(assert (and (<= -453 a11_0) (<= a11_0 -376)))
(assert (and (<= -453 a11_1) (<= a11_1 -376)))
(assert (and (<= -453 a11_2) (<= a11_2 -376)))
(assert (and (<= -453 a11_3) (<= a11_3 -376)))
(assert (and (<= -453 a11_4) (<= a11_4 -376)))
(assert (or (= a1_0_0_0 -991) (= a1_0_0_0 -820) (= a1_0_0_0 -361) (= a1_0_0_0 707) (= a1_0_0_0 914)))
(assert (or (= a1_0_0_1 -991) (= a1_0_0_1 -820) (= a1_0_0_1 -361) (= a1_0_0_1 707) (= a1_0_0_1 914)))
(assert (or (= a1_0_0_2 -991) (= a1_0_0_2 -820) (= a1_0_0_2 -361) (= a1_0_0_2 707) (= a1_0_0_2 914)))
(assert (or (= a1_0_0_3 -991) (= a1_0_0_3 -820) (= a1_0_0_3 -361) (= a1_0_0_3 707) (= a1_0_0_3 914)))
(assert (or (= a1_0_0_4 -991) (= a1_0_0_4 -820) (= a1_0_0_4 -361) (= a1_0_0_4 707) (= a1_0_0_4 914)))
(assert (or (= a1_1_0_0 -991) (= a1_1_0_0 -820) (= a1_1_0_0 -361) (= a1_1_0_0 707) (= a1_1_0_0 914)))
(assert (or (= a1_1_0_1 -991) (= a1_1_0_1 -820) (= a1_1_0_1 -361) (= a1_1_0_1 707) (= a1_1_0_1 914)))
(assert (or (= a1_1_0_2 -991) (= a1_1_0_2 -820) (= a1_1_0_2 -361) (= a1_1_0_2 707) (= a1_1_0_2 914)))
(assert (or (= a1_1_0_3 -991) (= a1_1_0_3 -820) (= a1_1_0_3 -361) (= a1_1_0_3 707) (= a1_1_0_3 914)))
(assert (or (= a1_1_0_4 -991) (= a1_1_0_4 -820) (= a1_1_0_4 -361) (= a1_1_0_4 707) (= a1_1_0_4 914)))
(assert (or (= a1_2_0_0 -991) (= a1_2_0_0 -820) (= a1_2_0_0 -361) (= a1_2_0_0 707) (= a1_2_0_0 914)))
(assert (or (= a1_2_0_1 -991) (= a1_2_0_1 -820) (= a1_2_0_1 -361) (= a1_2_0_1 707) (= a1_2_0_1 914)))
(assert (or (= a1_2_0_2 -991) (= a1_2_0_2 -820) (= a1_2_0_2 -361) (= a1_2_0_2 707) (= a1_2_0_2 914)))
(assert (or (= a1_2_0_3 -991) (= a1_2_0_3 -820) (= a1_2_0_3 -361) (= a1_2_0_3 707) (= a1_2_0_3 914)))
(assert (or (= a1_2_0_4 -991) (= a1_2_0_4 -820) (= a1_2_0_4 -361) (= a1_2_0_4 707) (= a1_2_0_4 914)))
(assert (and (<= 15 a8_0_0) (<= a8_0_0 675)))
(assert (and (<= 15 a8_0_1) (<= a8_0_1 675)))
(assert (and (<= 15 a8_0_2) (<= a8_0_2 675)))
(assert (and (<= 15 a8_0_3) (<= a8_0_3 675)))
(assert (and (<= 15 a8_0_4) (<= a8_0_4 675)))
(assert (and (<= 15 a8_0_5) (<= a8_0_5 675)))
(assert (and (<= 15 a8_1_0) (<= a8_1_0 675)))
(assert (and (<= 15 a8_1_1) (<= a8_1_1 675)))
(assert (and (<= 15 a8_1_2) (<= a8_1_2 675)))
(assert (and (<= 15 a8_1_3) (<= a8_1_3 675)))
(assert (and (<= 15 a8_1_4) (<= a8_1_4 675)))
(assert (and (<= 15 a8_1_5) (<= a8_1_5 675)))
(assert (and (<= 15 a8_2_0) (<= a8_2_0 675)))
(assert (and (<= 15 a8_2_1) (<= a8_2_1 675)))
(assert (and (<= 15 a8_2_2) (<= a8_2_2 675)))
(assert (and (<= 15 a8_2_3) (<= a8_2_3 675)))
(assert (and (<= 15 a8_2_4) (<= a8_2_4 675)))
(assert (and (<= 15 a8_2_5) (<= a8_2_5 675)))
(assert (and (<= 15 a8_3_0) (<= a8_3_0 675)))
(assert (and (<= 15 a8_3_1) (<= a8_3_1 675)))
(assert (and (<= 15 a8_3_2) (<= a8_3_2 675)))
(assert (and (<= 15 a8_3_3) (<= a8_3_3 675)))
(assert (and (<= 15 a8_3_4) (<= a8_3_4 675)))
(assert (and (<= 15 a8_3_5) (<= a8_3_5 675)))
(assert (and (<= 15 a8_4_0) (<= a8_4_0 675)))
(assert (and (<= 15 a8_4_1) (<= a8_4_1 675)))
(assert (and (<= 15 a8_4_2) (<= a8_4_2 675)))
(assert (and (<= 15 a8_4_3) (<= a8_4_3 675)))
(assert (and (<= 15 a8_4_4) (<= a8_4_4 675)))
(assert (and (<= 15 a8_4_5) (<= a8_4_5 675)))
(assert (or (= h5_i6 -852) (= h5_i6 -450)))
(assert (and (<= -616 i7) (<= i7 455)))

; Formula constraint
(assert (=> (and (>= (- (* 76 a8_4_0) 29) (* -71 i7)) (and (> (+ (* -66 a8_0_1) (- -7 a8_0_0)) (* 53 a8_0_0)) (not (= 31 -79)))) (not (=> (not (= a1_1_0_2 (* -64 a8_0_0))) (>= a8_1_5 -48)))))

(check-sat)
(get-model)