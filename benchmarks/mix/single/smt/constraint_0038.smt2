(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -749) (= i1 965)))

; Formula constraint
(assert (and (=> (= -69 (+ i1 (- 20 (* -39 i1)))) (or (> (* -59 i1) i1) (> (* 14 i1) (- -27 (* 86 i1))))) (not (and (not (= i1 (* -88 i1))) (>= -22 i1)))))

(check-sat)
(get-model)