(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= -214 i1) (<= i1 175)))

; Formula constraint
(assert (=> (and (= i1 i1) (or (> (* -7 i1) 54) (not (= i1 7)))) (and (=> (>= i1 i1) (> i1 i1)) (< (- i1 (+ -31 i1)) (+ i1 (* 15 i1))))))

(check-sat)
(get-model)