(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -903) (= i1 -886) (= i1 -671) (= i1 281)))

; Formula constraint
(assert (and (<= i1 i1) (<= 22 i1)))

(check-sat)
(get-model)