(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 175) (= i1 231) (= i1 293) (= i1 509) (= i1 903)))

; Formula constraint
(assert (=> (= 31 -94) (=> (=> (= i1 i1) (not (= i1 (* 100 i1)))) (>= (+ -58 (* -92 i1)) (* -76 i1)))))

(check-sat)
(get-model)