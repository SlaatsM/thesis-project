(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 -634) (= i1 -627) (= i1 -3) (= i1 99) (= i1 644)))
(assert (or (= i2 -199) (= i2 -144) (= i2 301) (= i2 946)))

; Formula constraint
(assert (and (and (or (<= i1 i1) (<= i2 -95)) (and (not (= 57 (- i2 i1))) (> 53 i1))) (=> (and (<= 32 -67) (>= (- (- 32 i1) (* 92 i2)) i1)) (and (= (* -27 i2) i2) (> i1 (* -6 i2))))))

(check-sat)
(get-model)