(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a2[0] -> a2_0
;   a2[1] -> a2_1
;   a2[2] -> a2_2
;   a2[3] -> a2_3
;   h6.i7 -> h6_i7
;   i1
;   i4
;   i5

; Variable declarations
(declare-fun a2_0 () Int)
(declare-fun a2_1 () Int)
(declare-fun a2_2 () Int)
(declare-fun a2_3 () Int)
(declare-fun h6_i7 () Int)
(declare-fun i1 () Int)
(declare-fun i4 () Int)
(declare-fun i5 () Int)

; Domain constraints
(assert (and (<= -740 a2_0) (<= a2_0 715)))
(assert (and (<= -740 a2_1) (<= a2_1 715)))
(assert (and (<= -740 a2_2) (<= a2_2 715)))
(assert (and (<= -740 a2_3) (<= a2_3 715)))
(assert (and (<= -477 h6_i7) (<= h6_i7 109)))
(assert (and (<= -406 i1) (<= i1 219)))
(assert (or (= i4 -662) (= i4 -520) (= i4 305)))
(assert (and (<= -88 i5) (<= i5 955)))

; Formula constraint
(assert (or (=> (not (< (* -99 i5) i1)) (= (- (* -71 a2_2) a2_2) (- 5 -88))) (or (and (= a2_2 -35) (<= (* -10 a2_2) 46)) (or (>= (* -41 i5) (* 7 a2_2)) (> (* -67 i4) i4)))))

(check-sat)
(get-model)