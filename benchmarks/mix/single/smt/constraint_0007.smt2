(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= -234 i1) (<= i1 393)))

; Formula constraint
(assert (not (not (= i1 (+ (* 91 i1) (+ i1 i1))))))

(check-sat)
(get-model)