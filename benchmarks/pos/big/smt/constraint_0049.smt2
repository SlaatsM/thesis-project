(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a2[0] -> a2_0
;   i1

; Variable declarations
(declare-fun a2_0 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= a2_0 407) (= a2_0 413) (= a2_0 426) (= a2_0 656) (= a2_0 738)))
(assert (and (<= 40 i1) (<= i1 102)))

; Formula constraint
(assert (=> (and (>= (+ i1 a2_0) -70) (=> (<= (+ (* -96 i1) (+ a2_0 (* 23 a2_0))) (* 48 i1)) (not (= a2_0 (- (+ -13 i1) a2_0))))) (>= a2_0 (* -41 i1))))

(check-sat)
(get-model)