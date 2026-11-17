(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 208) (= i1 402) (= i1 893)))
(assert (or (= i2 -926) (= i2 -611)))

; Formula constraint
(assert (=> (and (= -73 i1) (>= i1 97)) (not (and (> (- i1 (- i2 i1)) -18) (>= 12 i1)))))

(check-sat)
(get-model)