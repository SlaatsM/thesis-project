(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1
;   a1[2] -> a1_2
;   a1[3] -> a1_3
;   a1[4] -> a1_4
;   i3
;   i4

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)
(declare-fun a1_2 () Int)
(declare-fun a1_3 () Int)
(declare-fun a1_4 () Int)
(declare-fun i3 () Int)
(declare-fun i4 () Int)

; Domain constraints
(assert (or (and (<= -623 a1_0) (<= a1_0 239)) (= a1_0 423)))
(assert (or (and (<= -623 a1_1) (<= a1_1 239)) (= a1_1 423)))
(assert (or (and (<= -623 a1_2) (<= a1_2 239)) (= a1_2 423)))
(assert (or (and (<= -623 a1_3) (<= a1_3 239)) (= a1_3 423)))
(assert (or (and (<= -623 a1_4) (<= a1_4 239)) (= a1_4 423)))
(assert (and (<= -968 i3) (<= i3 916)))
(assert (or (= i4 -803) (= i4 -499) (= i4 -385) (= i4 49)))

; Formula constraint
(assert (<= (- (- i3 (* -35 a1_1)) -1) -65))

(check-sat)
(get-model)