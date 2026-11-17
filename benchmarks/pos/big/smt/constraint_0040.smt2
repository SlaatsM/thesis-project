(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   h2.a3[0] -> h2_a3_0
;   i1
;   i7

; Variable declarations
(declare-fun h2_a3_0 () Int)
(declare-fun i1 () Int)
(declare-fun i7 () Int)

; Domain constraints
(assert (and (<= 206 h2_a3_0) (<= h2_a3_0 213)))
(assert (or (= i1 162) (= i1 185) (and (<= 691 i1) (<= i1 884))))
(assert (and (<= 42 i7) (<= i7 722)))

; Formula constraint
(assert (> i7 h2_a3_0))

(check-sat)
(get-model)