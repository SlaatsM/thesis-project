(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 179) (= i1 474) (= i1 639) (= i1 649) (= i1 763)))

; Formula constraint
(assert (or (and (not (> 79 i1)) (=> (>= i1 -58) (not (= i1 (* 40 i1))))) (<= i1 i1)))

(check-sat)
(get-model)