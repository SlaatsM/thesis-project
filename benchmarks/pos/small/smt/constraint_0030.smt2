(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   a1[0] -> a1_0
;   a1[1] -> a1_1

; Variable declarations
(declare-fun a1_0 () Int)
(declare-fun a1_1 () Int)

; Domain constraints
(assert (or (= a1_0 568) (= a1_0 760)))
(assert (or (= a1_1 568) (= a1_1 760)))

; Formula constraint
(assert (and (or (and (>= 38 (+ a1_0 -92)) (<= a1_1 a1_0)) (<= -100 (+ (+ a1_1 a1_1) a1_1))) (=> (and (= (+ a1_0 -51) a1_1) (<= (* 95 a1_0) (* -61 a1_1))) (=> (<= -97 34) (not (= a1_0 a1_0))))))

(check-sat)
(get-model)