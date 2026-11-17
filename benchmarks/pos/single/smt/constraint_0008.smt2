(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 9) (= i1 69) (= i1 225) (= i1 886) (= i1 907)))

; Formula constraint
(assert (=> (=> (and (<= 45 55) (> 31 i1)) (>= i1 (+ (+ -78 76) 15))) (and (and (< (+ 89 (- (* 20 i1) i1)) (* 78 i1)) (>= -71 i1)) (= 26 99))))

(check-sat)
(get-model)