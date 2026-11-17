(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 577) (= i1 908)))

; Formula constraint
(assert (=> (> i1 i1) (and (< i1 i1) (or (<= (* -73 i1) i1) (<= -51 (- (* 28 i1) 16))))))

(check-sat)
(get-model)