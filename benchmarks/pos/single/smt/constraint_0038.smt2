(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 18) (= i1 547) (= i1 794)))

; Formula constraint
(assert (=> (and (>= i1 (- 47 i1)) (< i1 (- (+ -38 (* 75 i1)) (* -86 i1)))) (or (and (< 9 (* -63 i1)) (< i1 (- i1 i1))) (not (>= i1 i1)))))

(check-sat)
(get-model)