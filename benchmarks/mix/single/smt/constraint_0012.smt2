(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= -912 i1) (<= i1 245)))

; Formula constraint
(assert (= i1 (+ i1 (+ i1 -66))))

(check-sat)
(get-model)