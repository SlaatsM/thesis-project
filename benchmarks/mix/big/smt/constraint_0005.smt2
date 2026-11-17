(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i4

; Variable declarations
(declare-fun i4 () Int)

; Domain constraints
(assert (and (<= 312 i4) (<= i4 785)))

; Formula constraint
(assert (=> (not (= i4 i4)) (< 72 (- 57 (- 90 i4)))))

(check-sat)
(get-model)