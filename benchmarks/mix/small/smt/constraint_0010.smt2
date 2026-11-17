(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 317 i1) (<= i1 335)))

; Formula constraint
(assert (=> (not (not (<= (* -43 i1) i1))) (=> (<= -24 i1) (=> (>= (+ 96 i1) (+ i1 (- (* 53 i1) i1))) (> (* -16 i1) 79)))))

(check-sat)
(get-model)