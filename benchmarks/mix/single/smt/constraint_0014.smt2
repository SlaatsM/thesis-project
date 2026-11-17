(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -306) (= i1 742)))

; Formula constraint
(assert (=> (and (and (= i1 i1) (> -61 (+ i1 (* -30 i1)))) (and (< 12 i1) (not (= 82 (- i1 (* -79 i1)))))) (not (=> (< (* -61 i1) i1) (< 19 (+ (- i1 i1) (* 63 i1)))))))

(check-sat)
(get-model)