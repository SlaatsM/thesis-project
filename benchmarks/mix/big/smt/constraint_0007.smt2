(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h17.h18.a21[0] -> h17_h18_a21_0
;   h17.h18.a21[1] -> h17_h18_a21_1
;   h17.h18.a21[2] -> h17_h18_a21_2
;   h17.h18.a21[3] -> h17_h18_a21_3
;   h17.h18.a21[4] -> h17_h18_a21_4
;   h17.h18.a21[5] -> h17_h18_a21_5
;   h17.h18.i20 -> h17_h18_i20
;   h17.h18.i23 -> h17_h18_i23
;   h2.a13[0] -> h2_a13_0
;   h2.a13[1] -> h2_a13_1
;   h2.a13[2] -> h2_a13_2
;   h2.a13[3] -> h2_a13_3
;   h2.h3.a7[0] -> h2_h3_a7_0
;   h2.h3.a7[1] -> h2_h3_a7_1
;   h2.h3.a7[2] -> h2_h3_a7_2
;   h2.h3.a7[3] -> h2_h3_a7_3
;   h2.h3.a7[4] -> h2_h3_a7_4
;   h2.h3.i4 -> h2_h3_i4
;   h2.h3.i6 -> h2_h3_i6
;   h2.h9.i10 -> h2_h9_i10
;   h2.h9.i11 -> h2_h9_i11
;   i1
;   i15
;   i16

; Variable declarations
(declare-fun h17_h18_a21_0 () Int)
(declare-fun h17_h18_a21_1 () Int)
(declare-fun h17_h18_a21_2 () Int)
(declare-fun h17_h18_a21_3 () Int)
(declare-fun h17_h18_a21_4 () Int)
(declare-fun h17_h18_a21_5 () Int)
(declare-fun h17_h18_i20 () Int)
(declare-fun h17_h18_i23 () Int)
(declare-fun h2_a13_0 () Int)
(declare-fun h2_a13_1 () Int)
(declare-fun h2_a13_2 () Int)
(declare-fun h2_a13_3 () Int)
(declare-fun h2_h3_a7_0 () Int)
(declare-fun h2_h3_a7_1 () Int)
(declare-fun h2_h3_a7_2 () Int)
(declare-fun h2_h3_a7_3 () Int)
(declare-fun h2_h3_a7_4 () Int)
(declare-fun h2_h3_i4 () Int)
(declare-fun h2_h3_i6 () Int)
(declare-fun h2_h9_i10 () Int)
(declare-fun h2_h9_i11 () Int)
(declare-fun i1 () Int)
(declare-fun i15 () Int)
(declare-fun i16 () Int)

; Domain constraints
(assert (and (<= -838 h17_h18_a21_0) (<= h17_h18_a21_0 22)))
(assert (and (<= -838 h17_h18_a21_1) (<= h17_h18_a21_1 22)))
(assert (and (<= -838 h17_h18_a21_2) (<= h17_h18_a21_2 22)))
(assert (and (<= -838 h17_h18_a21_3) (<= h17_h18_a21_3 22)))
(assert (and (<= -838 h17_h18_a21_4) (<= h17_h18_a21_4 22)))
(assert (and (<= -838 h17_h18_a21_5) (<= h17_h18_a21_5 22)))
(assert (and (<= 271 h17_h18_i20) (<= h17_h18_i20 400)))
(assert (or (= h17_h18_i23 -872) (= h17_h18_i23 -483) (and (<= -446 h17_h18_i23) (<= h17_h18_i23 772))))
(assert (or (= h2_a13_0 -814) (= h2_a13_0 -87) (= h2_a13_0 -5) (= h2_a13_0 449) (= h2_a13_0 715)))
(assert (or (= h2_a13_1 -814) (= h2_a13_1 -87) (= h2_a13_1 -5) (= h2_a13_1 449) (= h2_a13_1 715)))
(assert (or (= h2_a13_2 -814) (= h2_a13_2 -87) (= h2_a13_2 -5) (= h2_a13_2 449) (= h2_a13_2 715)))
(assert (or (= h2_a13_3 -814) (= h2_a13_3 -87) (= h2_a13_3 -5) (= h2_a13_3 449) (= h2_a13_3 715)))
(assert (and (<= -992 h2_h3_a7_0) (<= h2_h3_a7_0 -359)))
(assert (and (<= -992 h2_h3_a7_1) (<= h2_h3_a7_1 -359)))
(assert (and (<= -992 h2_h3_a7_2) (<= h2_h3_a7_2 -359)))
(assert (and (<= -992 h2_h3_a7_3) (<= h2_h3_a7_3 -359)))
(assert (and (<= -992 h2_h3_a7_4) (<= h2_h3_a7_4 -359)))
(assert (and (<= -998 h2_h3_i4) (<= h2_h3_i4 768)))
(assert (and (<= -429 h2_h3_i6) (<= h2_h3_i6 -274)))
(assert (and (<= -572 h2_h9_i10) (<= h2_h9_i10 -81)))
(assert (and (<= 422 h2_h9_i11) (<= h2_h9_i11 782)))
(assert (or (and (<= -951 i1) (<= i1 539)) (= i1 544) (= i1 692)))
(assert (or (and (<= -992 i15) (<= i15 -728)) (and (<= -408 i15) (<= i15 -291)) (= i15 924)))
(assert (and (<= 735 i16) (<= i16 985)))

; Formula constraint
(assert (=> (=> (< (* 51 h17_h18_i23) h2_h3_i4) (=> (< -11 16) (< i1 -6))) (and (and (<= h2_a13_2 (* -48 h2_a13_1)) (>= (* -91 h17_h18_a21_2) 80)) (and (>= (- (* 10 h2_h3_a7_3) h2_h9_i10) (- -25 (* 73 h17_h18_a21_1))) (> h2_h3_i4 (- h17_h18_a21_4 h2_h9_i10))))))

(check-sat)
(get-model)