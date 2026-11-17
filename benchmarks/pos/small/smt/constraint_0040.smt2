(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 212) (= i1 630) (= i1 687)))

; Formula constraint
(assert (or (=> (and (not (= i1 i1)) (= (* -14 i1) i1)) (>= i1 (- -65 -49))) (not (< (- i1 (- i1 i1)) (- (+ 87 i1) i1)))))

(check-sat)
(get-model)