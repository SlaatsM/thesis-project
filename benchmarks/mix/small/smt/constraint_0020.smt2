(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -546) (= i1 -372)))

; Formula constraint
(assert (or (<= (+ 30 i1) (- 52 -70)) (and (and (> -76 (+ i1 29)) (<= 47 99)) (and (< i1 -28) (= i1 (* 49 i1))))))

(check-sat)
(get-model)