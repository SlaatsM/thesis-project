(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1
;   a1[2] -> a1_2
;   a1[3] -> a1_3
;   a7[0].i10 -> a7_0_i10
;   a7[1].i10 -> a7_1_i10
;   a7[2].i10 -> a7_2_i10
;   h3.a5[0] -> h3_a5_0
;   h3.a5[1] -> h3_a5_1
;   h3.a5[2] -> h3_a5_2
;   h3.a5[3] -> h3_a5_3
;   h3.i4 -> h3_i4
;   i11
;   i12

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)
(declare-fun a1_2 () Int)
(declare-fun a1_3 () Int)
(declare-fun a7_0_i10 () Int)
(declare-fun a7_1_i10 () Int)
(declare-fun a7_2_i10 () Int)
(declare-fun h3_a5_0 () Int)
(declare-fun h3_a5_1 () Int)
(declare-fun h3_a5_2 () Int)
(declare-fun h3_a5_3 () Int)
(declare-fun h3_i4 () Int)
(declare-fun i11 () Int)
(declare-fun i12 () Int)

; Domain constraints
(assert (and (<= 106 a1_0) (<= a1_0 559)))
(assert (and (<= 106 a1_1) (<= a1_1 559)))
(assert (and (<= 106 a1_2) (<= a1_2 559)))
(assert (and (<= 106 a1_3) (<= a1_3 559)))
(assert (and (<= 410 a7_0_i10) (<= a7_0_i10 986)))
(assert (and (<= 410 a7_1_i10) (<= a7_1_i10 986)))
(assert (and (<= 410 a7_2_i10) (<= a7_2_i10 986)))
(assert (or (= h3_a5_0 479) (= h3_a5_0 639)))
(assert (or (= h3_a5_1 479) (= h3_a5_1 639)))
(assert (or (= h3_a5_2 479) (= h3_a5_2 639)))
(assert (or (= h3_a5_3 479) (= h3_a5_3 639)))
(assert (and (<= 348 h3_i4) (<= h3_i4 758)))
(assert (and (<= 320 i11) (<= i11 866)))
(assert (and (<= 498 i12) (<= i12 916)))

; Formula constraint
(assert (<= h3_a5_0 (+ (* 63 a1_0) a1_1)))

(check-sat)
(get-model)