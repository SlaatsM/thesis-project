(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -694) (= i1 480) (= i1 745)))

; Formula constraint
(assert (and (and (=> (> i1 i1) (> (+ 98 i1) (* -74 i1))) (and (not (= (+ 72 (+ i1 (* 88 i1))) (* 79 i1))) (< i1 -66))) (or (< i1 (- i1 (* -19 i1))) (not (> i1 i1)))))

(check-sat)
(get-model)