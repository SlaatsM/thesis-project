(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 68 i1) (<= i1 588)))

; Formula constraint
(assert (and (or (and (= 93 i1) (>= (- (+ i1 i1) i1) i1)) (and (= (+ -53 i1) i1) (> i1 -91))) (=> (=> (< (- (+ i1 (* 6 i1)) i1) i1) (> i1 41)) (or (not (= i1 -34)) (> (* -35 i1) (+ (- i1 (* -95 i1)) i1))))))

(check-sat)
(get-model)