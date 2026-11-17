(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -573) (= i1 735)))

; Formula constraint
(assert (=> (and (< i1 i1) (and (<= (- (+ 34 i1) i1) (+ 60 (* 3 i1))) (> i1 i1))) (< i1 65)))

(check-sat)
(get-model)