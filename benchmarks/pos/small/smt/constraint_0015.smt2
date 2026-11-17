(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 284) (= i1 421) (= i1 632) (= i1 651) (= i1 700)))

; Formula constraint
(assert (=> (not (>= i1 (+ 85 i1))) (and (< 73 (* 40 i1)) (and (not (= (+ (* -77 i1) i1) 10)) (not (= -75 (- i1 31)))))))

(check-sat)
(get-model)