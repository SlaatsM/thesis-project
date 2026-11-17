(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 78) (= i1 374) (= i1 715) (= i1 751) (= i1 802)))

; Formula constraint
(assert (and (<= (- (+ -54 -26) (* 31 i1)) (* 6 i1)) (and (=> (<= i1 -21) (not (= 3 (+ (* -81 i1) i1)))) (< i1 (+ i1 (* 82 i1))))))

(check-sat)
(get-model)