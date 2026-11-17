(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2
;   i3

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (or (= i1 34) (= i1 130) (= i1 483) (= i1 564) (= i1 627)))
(assert (and (<= 518 i2) (<= i2 1000)))
(assert (and (<= 39 i3) (<= i3 731)))

; Formula constraint
(assert (or (and (not (not (= i2 i1))) (and (= i3 59) (= i1 i1))) (and (and (not (= i2 52)) (= i1 -89)) (and (< -3 (* 70 i2)) (> -37 48)))))

(check-sat)
(get-model)