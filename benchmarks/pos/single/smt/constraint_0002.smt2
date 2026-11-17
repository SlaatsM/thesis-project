(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 33) (= i1 214) (= i1 334) (= i1 558) (= i1 925)))

; Formula constraint
(assert (and (>= (- 75 i1) i1) (=> (and (>= 91 16) (= i1 (+ (* -56 i1) (+ 54 i1)))) (not (>= i1 (+ i1 -92))))))

(check-sat)
(get-model)