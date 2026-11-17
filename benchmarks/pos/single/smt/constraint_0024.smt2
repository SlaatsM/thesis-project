(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 27) (= i1 636) (= i1 717) (= i1 894)))

; Formula constraint
(assert (not (or (and (>= -81 i1) (> (* 99 i1) 35)) (=> (<= -85 i1) (<= 100 i1)))))

(check-sat)
(get-model)