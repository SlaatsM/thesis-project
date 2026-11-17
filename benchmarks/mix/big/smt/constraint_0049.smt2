(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= -319 i1) (<= i1 -223)))

; Formula constraint
(assert (not (and (and (>= -43 (+ i1 i1)) (>= (* -3 i1) (* -9 i1))) (and (>= (* -76 i1) -60) (< (+ i1 (+ -4 i1)) i1)))))

(check-sat)
(get-model)