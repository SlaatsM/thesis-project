(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h14.h15.i16 -> h14_h15_i16
;   h2.h4.a5[0] -> h2_h4_a5_0
;   h2.h4.a5[1] -> h2_h4_a5_1
;   h2.h4.a5[2] -> h2_h4_a5_2
;   h2.h4.a5[3] -> h2_h4_a5_3
;   h2.h4.i7 -> h2_h4_i7
;   h2.h4.i8 -> h2_h4_i8
;   h2.i11 -> h2_i11
;   h2.i3 -> h2_i3
;   i1
;   i12
;   i13

; Variable declarations
(declare-fun h14_h15_i16 () Int)
(declare-fun h2_h4_a5_0 () Int)
(declare-fun h2_h4_a5_1 () Int)
(declare-fun h2_h4_a5_2 () Int)
(declare-fun h2_h4_a5_3 () Int)
(declare-fun h2_h4_i7 () Int)
(declare-fun h2_h4_i8 () Int)
(declare-fun h2_i11 () Int)
(declare-fun h2_i3 () Int)
(declare-fun i1 () Int)
(declare-fun i12 () Int)
(declare-fun i13 () Int)

; Domain constraints
(assert (and (<= 218 h14_h15_i16) (<= h14_h15_i16 870)))
(assert (and (<= -204 h2_h4_a5_0) (<= h2_h4_a5_0 -38)))
(assert (and (<= -204 h2_h4_a5_1) (<= h2_h4_a5_1 -38)))
(assert (and (<= -204 h2_h4_a5_2) (<= h2_h4_a5_2 -38)))
(assert (and (<= -204 h2_h4_a5_3) (<= h2_h4_a5_3 -38)))
(assert (and (<= -836 h2_h4_i7) (<= h2_h4_i7 -329)))
(assert (and (<= -617 h2_h4_i8) (<= h2_h4_i8 834)))
(assert (or (= h2_i11 -152) (= h2_i11 544)))
(assert (and (<= -942 h2_i3) (<= h2_i3 644)))
(assert (and (<= -934 i1) (<= i1 978)))
(assert (and (<= -177 i12) (<= i12 221)))
(assert (or (= i13 -438) (= i13 -425) (= i13 -253) (= i13 845) (= i13 905)))

; Formula constraint
(assert (=> (and (> h2_h4_a5_2 i1) (not (<= 19 76))) (and (or (> h2_h4_a5_1 4) (not (= 87 h2_h4_a5_0))) (and (> 9 (* -75 h2_h4_a5_2)) (< h2_i3 68)))))

(check-sat)
(get-model)