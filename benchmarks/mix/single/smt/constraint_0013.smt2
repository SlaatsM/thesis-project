(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= -506 i1) (<= i1 281)))

; Formula constraint
(assert (and (and (and (>= (- i1 (* 76 i1)) (+ i1 (+ i1 i1))) (= (* -90 i1) i1)) (> 46 -6)) (not (= (- (+ i1 i1) (+ (* -83 i1) i1)) 78))))

(check-sat)
(get-model)