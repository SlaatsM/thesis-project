(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 30) (= i1 171)))

; Formula constraint
(assert (and (=> (and (>= i1 67) (<= i1 (* 3 i1))) (and (> i1 (+ (+ (* -35 i1) i1) 86)) (< (* 84 i1) i1))) (=> (or (<= (* 77 i1) (- (- i1 -100) (+ i1 i1))) (<= (* 67 i1) i1)) (or (< i1 i1) (<= i1 i1)))))

(check-sat)
(get-model)