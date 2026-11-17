(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 42) (= i1 348) (= i1 647) (= i1 844)))

; Formula constraint
(assert (and (> 45 (* 1 i1)) (and (not (> (- -1 74) i1)) (=> (= i1 36) (< 50 (* 47 i1))))))

(check-sat)
(get-model)