(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -786) (= i1 -275) (= i1 254) (= i1 440) (= i1 560)))

; Formula constraint
(assert (<= i1 (* 92 i1)))

(check-sat)
(get-model)