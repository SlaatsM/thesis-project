(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 5) (= i1 67) (and (<= 174 i1) (<= i1 692))))

; Formula constraint
(assert (=> (=> (and (<= i1 (- (* -99 i1) i1)) (<= 98 (+ -37 -67))) (=> (= (+ -6 (* 17 i1)) i1) (> -5 35))) (and (and (>= 14 i1) (>= (* 64 i1) -58)) (or (not (= 49 i1)) (<= (* -21 i1) 75)))))

(check-sat)
(get-model)