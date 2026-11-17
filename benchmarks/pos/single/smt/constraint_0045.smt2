(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)

; Domain constraints
(assert (or (= a1_0 37) (and (<= 117 a1_0) (<= a1_0 435)) (= a1_0 858)))
(assert (or (= a1_1 37) (and (<= 117 a1_1) (<= a1_1 435)) (= a1_1 858)))

; Formula constraint
(assert (and (not (> a1_0 (- a1_1 (+ -10 -34)))) (or (=> (< 51 a1_1) (< a1_0 (- (* -43 a1_1) (* 50 a1_1)))) (<= (+ (+ 56 -17) 11) (- (* -32 a1_1) -58)))))

(check-sat)
(get-model)