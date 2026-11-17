(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 719) (= i1 728) (= i1 956)))

; Formula constraint
(assert (or (not (= i1 (+ (- (* 80 i1) i1) i1))) (and (not (< 16 (* 49 i1))) (< -43 (- i1 90)))))

(check-sat)
(get-model)