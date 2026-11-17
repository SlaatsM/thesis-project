(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0

; Variable declarations
(declare-fun a1_0 () Int)

; Domain constraints
(assert (or (= a1_0 54) (= a1_0 377)))

; Formula constraint
(assert (=> (and (or (not (= (* -89 a1_0) 97)) (>= a1_0 (* -16 a1_0))) (and (<= -94 (* -77 a1_0)) (> -21 (+ a1_0 (* 65 a1_0))))) (not (and (< 26 73) (<= -51 (- a1_0 (- a1_0 a1_0)))))))

(check-sat)
(get-model)