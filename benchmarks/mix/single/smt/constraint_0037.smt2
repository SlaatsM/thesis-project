(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -161) (= i1 286) (= i1 621)))

; Formula constraint
(assert (not (=> (=> (>= -12 i1) (<= i1 i1)) (or (>= (* 68 i1) -67) (> (+ i1 (* 38 i1)) (+ (- (* -77 i1) (* 71 i1)) -20))))))

(check-sat)
(get-model)