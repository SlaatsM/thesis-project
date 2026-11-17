(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h2.a5[0] -> h2_a5_0
;   h2.a5[1] -> h2_a5_1
;   h2.a5[2] -> h2_a5_2
;   h2.a5[3] -> h2_a5_3
;   h2.a5[4] -> h2_a5_4
;   h2.i3 -> h2_i3
;   h2.i4 -> h2_i4
;   h2.i7 -> h2_i7
;   h8.h10.a11[0] -> h8_h10_a11_0
;   h8.h10.a11[1] -> h8_h10_a11_1
;   h8.h10.a11[2] -> h8_h10_a11_2
;   h8.h10.a11[3] -> h8_h10_a11_3
;   h8.h10.a11[4] -> h8_h10_a11_4
;   h8.h10.a15[0] -> h8_h10_a15_0
;   h8.h10.i14 -> h8_h10_i14
;   h8.i17 -> h8_i17
;   h8.i9 -> h8_i9
;   i1

; Variable declarations
(declare-fun h2_a5_0 () Int)
(declare-fun h2_a5_1 () Int)
(declare-fun h2_a5_2 () Int)
(declare-fun h2_a5_3 () Int)
(declare-fun h2_a5_4 () Int)
(declare-fun h2_i3 () Int)
(declare-fun h2_i4 () Int)
(declare-fun h2_i7 () Int)
(declare-fun h8_h10_a11_0 () Int)
(declare-fun h8_h10_a11_1 () Int)
(declare-fun h8_h10_a11_2 () Int)
(declare-fun h8_h10_a11_3 () Int)
(declare-fun h8_h10_a11_4 () Int)
(declare-fun h8_h10_a15_0 () Int)
(declare-fun h8_h10_i14 () Int)
(declare-fun h8_i17 () Int)
(declare-fun h8_i9 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= h2_a5_0 215) (= h2_a5_0 297) (= h2_a5_0 463) (= h2_a5_0 474)))
(assert (or (= h2_a5_1 215) (= h2_a5_1 297) (= h2_a5_1 463) (= h2_a5_1 474)))
(assert (or (= h2_a5_2 215) (= h2_a5_2 297) (= h2_a5_2 463) (= h2_a5_2 474)))
(assert (or (= h2_a5_3 215) (= h2_a5_3 297) (= h2_a5_3 463) (= h2_a5_3 474)))
(assert (or (= h2_a5_4 215) (= h2_a5_4 297) (= h2_a5_4 463) (= h2_a5_4 474)))
(assert (or (= h2_i3 50) (= h2_i3 253) (= h2_i3 570)))
(assert (and (<= 117 h2_i4) (<= h2_i4 462)))
(assert (and (<= 872 h2_i7) (<= h2_i7 917)))
(assert (and (<= 385 h8_h10_a11_0) (<= h8_h10_a11_0 770)))
(assert (and (<= 385 h8_h10_a11_1) (<= h8_h10_a11_1 770)))
(assert (and (<= 385 h8_h10_a11_2) (<= h8_h10_a11_2 770)))
(assert (and (<= 385 h8_h10_a11_3) (<= h8_h10_a11_3 770)))
(assert (and (<= 385 h8_h10_a11_4) (<= h8_h10_a11_4 770)))
(assert (and (<= 5 h8_h10_a15_0) (<= h8_h10_a15_0 337)))
(assert (and (<= 578 h8_h10_i14) (<= h8_h10_i14 976)))
(assert (and (<= 157 h8_i17) (<= h8_i17 159)))
(assert (and (<= 689 h8_i9) (<= h8_i9 777)))
(assert (and (<= 649 i1) (<= i1 785)))

; Formula constraint
(assert (> (- (+ h8_h10_i14 67) h8_h10_a11_2) h8_h10_a15_0))

(check-sat)
(get-model)