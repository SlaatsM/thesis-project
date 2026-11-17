(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 83) (= i1 235) (= i1 768)))

; Formula constraint
(assert (or (not (= -46 -30)) (>= i1 (* 52 i1))))

(check-sat)
(get-model)