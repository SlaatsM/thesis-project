(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -689) (= i1 -4) (= i1 936)))

; Formula constraint
(assert (and (>= i1 64) (and (and (>= i1 i1) (>= -19 -88)) (not (= (* 94 i1) (- (+ 28 (* 42 i1)) i1))))))

(check-sat)
(get-model)