(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a2[0] -> a2_0
;   i1

; Variable declarations
(declare-fun a2_0 () Int)
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= 167 a2_0) (<= a2_0 565)))
(assert (or (= i1 315) (= i1 650)))

; Formula constraint
(assert (=> (>= a2_0 -60) (= (* 57 i1) (+ (* 49 a2_0) i1))))

(check-sat)
(get-model)