(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 1) (= i1 84) (= i1 133) (= i1 380) (= i1 587)))

; Formula constraint
(assert (not (not (and (> i1 (- i1 i1)) (> 43 i1)))))

(check-sat)
(get-model)