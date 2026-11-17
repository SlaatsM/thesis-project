(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= -12 i1) (<= i1 385)))

; Formula constraint
(assert (and (=> (<= 4 i1) (=> (>= 21 35) (not (= (* -76 i1) i1)))) (= (* -96 i1) i1)))

(check-sat)
(get-model)