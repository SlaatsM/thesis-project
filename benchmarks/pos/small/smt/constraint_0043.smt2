(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 186) (= i1 272) (= i1 497) (= i1 879) (= i1 920)))

; Formula constraint
(assert (=> (and (and (<= (+ i1 (* -39 i1)) 6) (<= i1 (* 100 i1))) (and (< i1 i1) (= (- (* -42 i1) -71) i1))) (< (- i1 -37) i1)))

(check-sat)
(get-model)