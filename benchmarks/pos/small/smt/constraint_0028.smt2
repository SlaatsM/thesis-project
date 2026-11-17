(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 77) (= i1 137) (= i1 230) (= i1 344) (= i1 597)))

; Formula constraint
(assert (or (> (- i1 (* 46 i1)) i1) (=> (and (<= 6 -65) (<= (- -71 i1) i1)) (and (>= i1 64) (<= -1 -32)))))

(check-sat)
(get-model)