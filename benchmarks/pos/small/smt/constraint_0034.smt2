(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 209) (= i1 627) (= i1 726)))

; Formula constraint
(assert (=> (and (=> (< -56 100) (not (= i1 i1))) (and (<= (+ (- 7 (* 52 i1)) -35) i1) (< i1 (- 90 78)))) (and (>= i1 i1) (and (= i1 (- (* -77 i1) i1)) (> 45 (* -95 i1))))))

(check-sat)
(get-model)