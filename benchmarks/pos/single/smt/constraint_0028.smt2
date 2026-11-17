(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 45) (and (<= 154 i1) (<= i1 273)) (= i1 550) (= i1 948)))

; Formula constraint
(assert (=> (not (= -22 44)) (<= (- i1 58) 73)))

(check-sat)
(get-model)