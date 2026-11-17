(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -831) (and (<= -696 i1) (<= i1 -64)) (= i1 -41)))

; Formula constraint
(assert (> i1 -84))

(check-sat)
(get-model)