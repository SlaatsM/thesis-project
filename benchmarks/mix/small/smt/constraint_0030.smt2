(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)

; Domain constraints
(assert (or (= a1_0 -166) (= a1_0 -73) (= a1_0 -60) (= a1_0 300)))
(assert (or (= a1_1 -166) (= a1_1 -73) (= a1_1 -60) (= a1_1 300)))

; Formula constraint
(assert (and (=> (>= (* 45 a1_1) (+ (- (* -7 a1_1) (* 18 a1_0)) a1_1)) (and (<= -37 -30) (< (* -71 a1_0) (- 5 (* -11 a1_0))))) (or (not (<= (- (* 71 a1_0) -4) a1_0)) (<= (- (* -26 a1_1) -48) a1_0))))

(check-sat)
(get-model)