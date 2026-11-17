(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 50) (and (<= 459 i1) (<= i1 661)) (= i1 718) (= i1 760)))

; Formula constraint
(assert (> (+ 47 (- i1 i1)) (- i1 39)))

(check-sat)
(get-model)