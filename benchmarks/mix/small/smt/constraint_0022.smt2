(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 348) (= i1 645) (= i1 853) (= i1 909)))

; Formula constraint
(assert (or (and (>= i1 -60) (=> (< i1 i1) (>= (- i1 i1) i1))) (=> (< i1 i1) (or (< (* 58 i1) (- 97 i1)) (<= 91 -19)))))

(check-sat)
(get-model)