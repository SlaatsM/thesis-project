(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h1.h2.a3[0] -> h1_h2_a3_0
;   h1.h2.a3[1] -> h1_h2_a3_1
;   h1.h2.a3[2] -> h1_h2_a3_2

; Variable declarations
(declare-fun h1_h2_a3_0 () Int)
(declare-fun h1_h2_a3_1 () Int)
(declare-fun h1_h2_a3_2 () Int)

; Domain constraints
(assert (and (<= 612 h1_h2_a3_0) (<= h1_h2_a3_0 762)))
(assert (and (<= 612 h1_h2_a3_1) (<= h1_h2_a3_1 762)))
(assert (and (<= 612 h1_h2_a3_2) (<= h1_h2_a3_2 762)))

; Formula constraint
(assert (and (or (not (>= (- 69 -79) h1_h2_a3_1)) (not (<= h1_h2_a3_2 h1_h2_a3_0))) (> h1_h2_a3_0 h1_h2_a3_2)))

(check-sat)
(get-model)