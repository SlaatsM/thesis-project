(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -916) (= i1 173)))

; Formula constraint
(assert (=> (not (>= -51 -44)) (and (> -26 -94) (>= 12 i1))))

(check-sat)
(get-model)