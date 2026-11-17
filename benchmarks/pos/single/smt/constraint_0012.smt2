(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a2[0] -> a2_0
;   i1

; Variable declarations
(declare-fun a2_0 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= a2_0 138) (= a2_0 436)))
(assert (or (= i1 320) (= i1 727) (= i1 937)))

; Formula constraint
(assert (and (>= a2_0 (- (- (* 33 a2_0) (* 77 i1)) a2_0)) (=> (or (< 19 (- (- a2_0 (* 100 i1)) (+ i1 14))) (> i1 86)) (and (<= i1 i1) (< i1 a2_0)))))

(check-sat)
(get-model)