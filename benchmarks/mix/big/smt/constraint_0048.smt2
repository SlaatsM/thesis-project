(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= -635 i1) (<= i1 -603)))

; Formula constraint
(assert (or (<= i1 i1) (and (=> (< (- (- (* -11 i1) (* 14 i1)) (- -78 (* -45 i1))) (+ i1 i1)) (<= i1 -48)) (< i1 (+ (+ -6 i1) i1)))))

(check-sat)
(get-model)