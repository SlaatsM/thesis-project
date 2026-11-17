(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 57 i1) (<= i1 240)))

; Formula constraint
(assert (not (=> (not (> i1 (* 68 i1))) (and (> i1 -80) (>= i1 80)))))

(check-sat)
(get-model)