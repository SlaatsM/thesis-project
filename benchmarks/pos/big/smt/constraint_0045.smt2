(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a4[0].i6 -> a4_0_i6
;   a4[1].i6 -> a4_1_i6
;   a4[2].i6 -> a4_2_i6
;   a4[3].i6 -> a4_3_i6
;   a4[4].i6 -> a4_4_i6
;   i1
;   i2
;   i3

; Variable declarations
(declare-fun a4_0_i6 () Int)
(declare-fun a4_1_i6 () Int)
(declare-fun a4_2_i6 () Int)
(declare-fun a4_3_i6 () Int)
(declare-fun a4_4_i6 () Int)
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (and (<= 502 a4_0_i6) (<= a4_0_i6 744)))
(assert (and (<= 502 a4_1_i6) (<= a4_1_i6 744)))
(assert (and (<= 502 a4_2_i6) (<= a4_2_i6 744)))
(assert (and (<= 502 a4_3_i6) (<= a4_3_i6 744)))
(assert (and (<= 502 a4_4_i6) (<= a4_4_i6 744)))
(assert (and (<= 264 i1) (<= i1 629)))
(assert (and (<= 315 i2) (<= i2 956)))
(assert (and (<= 24 i3) (<= i3 296)))

; Formula constraint
(assert (not (= i1 i3)))

(check-sat)
(get-model)