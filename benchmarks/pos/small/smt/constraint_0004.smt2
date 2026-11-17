(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 196 i1) (<= i1 205)))

; Formula constraint
(assert (=> (and (<= (+ (- i1 (* 27 i1)) -40) -43) (or (> 52 (* -54 i1)) (>= 72 i1))) (> (* 49 i1) i1)))

(check-sat)
(get-model)