(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 4) (= i1 538) (= i1 726) (= i1 753) (= i1 868)))

; Formula constraint
(assert (or (not (< (- 10 (* 93 i1)) i1)) (=> (and (<= (+ (+ 26 i1) (* -3 i1)) -87) (> i1 -38)) (=> (<= -31 78) (>= 92 i1)))))

(check-sat)
(get-model)