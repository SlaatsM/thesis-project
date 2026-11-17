(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -891) (= i1 79) (= i1 521) (= i1 766)))

; Formula constraint
(assert (=> (and (=> (= 28 i1) (= 20 -77)) (or (>= i1 i1) (< 59 (* -68 i1)))) (not (=> (> (+ i1 i1) i1) (< (* 29 i1) i1)))))

(check-sat)
(get-model)