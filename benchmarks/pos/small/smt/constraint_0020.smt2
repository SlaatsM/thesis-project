(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 480) (= i1 599) (= i1 608)))
(assert (or (= i2 183) (= i2 242) (= i2 262) (= i2 638) (= i2 720)))

; Formula constraint
(assert (or (and (>= 11 i1) (and (< 58 (* 57 i1)) (< i1 (* 59 i1)))) (=> (not (= i2 42)) (not (= (+ 36 i1) i2)))))

(check-sat)
(get-model)