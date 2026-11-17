(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -454) (= i1 -313) (= i1 -256) (= i1 904) (= i1 919)))

; Formula constraint
(assert (> (+ (- (* -27 i1) -1) (+ (* 5 i1) (* 32 i1))) (+ i1 i1)))

(check-sat)
(get-model)