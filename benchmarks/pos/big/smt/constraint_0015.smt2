(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a2[0] -> a2_0
;   a2[1] -> a2_1
;   a2[2] -> a2_2
;   a2[3] -> a2_3
;   h4.a5[0] -> h4_a5_0
;   h4.a5[1] -> h4_a5_1
;   h4.a5[2] -> h4_a5_2
;   h4.a5[3] -> h4_a5_3
;   h4.a5[4] -> h4_a5_4
;   h4.i7 -> h4_i7
;   h4.i8 -> h4_i8
;   h9.i10 -> h9_i10
;   h9.i11 -> h9_i11
;   i1

; Variable declarations
(declare-fun a2_0 () Int)
(declare-fun a2_1 () Int)
(declare-fun a2_2 () Int)
(declare-fun a2_3 () Int)
(declare-fun h4_a5_0 () Int)
(declare-fun h4_a5_1 () Int)
(declare-fun h4_a5_2 () Int)
(declare-fun h4_a5_3 () Int)
(declare-fun h4_a5_4 () Int)
(declare-fun h4_i7 () Int)
(declare-fun h4_i8 () Int)
(declare-fun h9_i10 () Int)
(declare-fun h9_i11 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= a2_0 120) (= a2_0 657) (= a2_0 830) (= a2_0 954)))
(assert (or (= a2_1 120) (= a2_1 657) (= a2_1 830) (= a2_1 954)))
(assert (or (= a2_2 120) (= a2_2 657) (= a2_2 830) (= a2_2 954)))
(assert (or (= a2_3 120) (= a2_3 657) (= a2_3 830) (= a2_3 954)))
(assert (and (<= 56 h4_a5_0) (<= h4_a5_0 985)))
(assert (and (<= 56 h4_a5_1) (<= h4_a5_1 985)))
(assert (and (<= 56 h4_a5_2) (<= h4_a5_2 985)))
(assert (and (<= 56 h4_a5_3) (<= h4_a5_3 985)))
(assert (and (<= 56 h4_a5_4) (<= h4_a5_4 985)))
(assert (and (<= 240 h4_i7) (<= h4_i7 868)))
(assert (or (= h4_i8 458) (= h4_i8 758)))
(assert (and (<= 558 h9_i10) (<= h9_i10 690)))
(assert (and (<= 731 h9_i11) (<= h9_i11 947)))
(assert (and (<= 851 i1) (<= i1 985)))

; Formula constraint
(assert (<= i1 (- (* 83 h4_a5_3) -96)))

(check-sat)
(get-model)