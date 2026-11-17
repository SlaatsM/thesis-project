(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 318) (= i1 410) (= i1 496) (= i1 855) (= i1 949)))

; Formula constraint
(assert (< -82 (+ (+ (* 98 i1) i1) (* 69 i1))))

(check-sat)
(get-model)