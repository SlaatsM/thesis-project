(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 0 i1) (<= i1 713)))

; Formula constraint
(assert (>= -36 (- -50 (* -41 i1))))

(check-sat)
(get-model)