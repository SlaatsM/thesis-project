(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 33) (= i1 264) (= i1 731) (= i1 856) (= i1 939)))

; Formula constraint
(assert (and (or (or (<= (- i1 i1) -47) (> i1 i1)) (<= -93 (+ (- 90 i1) (* 29 i1)))) (or (or (<= (* 73 i1) (* -58 i1)) (= i1 (* 74 i1))) (<= i1 48))))

(check-sat)
(get-model)