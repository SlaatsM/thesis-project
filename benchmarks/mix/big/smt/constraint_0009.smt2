(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h2.a3[0] -> h2_a3_0
;   h2.a3[1] -> h2_a3_1
;   h2.a3[2] -> h2_a3_2
;   h2.a3[3] -> h2_a3_3
;   h2.a3[4] -> h2_a3_4
;   i1

; Variable declarations
(declare-fun h2_a3_0 () Int)
(declare-fun h2_a3_1 () Int)
(declare-fun h2_a3_2 () Int)
(declare-fun h2_a3_3 () Int)
(declare-fun h2_a3_4 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 63 h2_a3_0) (<= h2_a3_0 402)))
(assert (and (<= 63 h2_a3_1) (<= h2_a3_1 402)))
(assert (and (<= 63 h2_a3_2) (<= h2_a3_2 402)))
(assert (and (<= 63 h2_a3_3) (<= h2_a3_3 402)))
(assert (and (<= 63 h2_a3_4) (<= h2_a3_4 402)))
(assert (and (<= -837 i1) (<= i1 52)))

; Formula constraint
(assert (not (and (=> (> h2_a3_0 (+ (* 46 h2_a3_3) h2_a3_1)) (< -66 (+ 57 -9))) (> h2_a3_0 h2_a3_0))))

(check-sat)
(get-model)