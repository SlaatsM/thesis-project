(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)

; Domain constraints
(assert (and (<= -22 a1_0) (<= a1_0 445)))
(assert (and (<= -22 a1_1) (<= a1_1 445)))

; Formula constraint
(assert (and (not (=> (<= -72 -47) (not (= (* -60 a1_1) (* -31 a1_0))))) (not (< 69 (- -7 a1_0)))))

(check-sat)
(get-model)