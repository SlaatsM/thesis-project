(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 -957) (= i1 -482) (= i1 -195) (= i1 291) (= i1 630)))
(assert (and (<= -445 i2) (<= i2 -237)))

; Formula constraint
(assert (or (and (=> (> -20 i2) (>= (+ i1 i2) 83)) (>= i2 i1)) (not (not (= -17 (- (+ -25 i2) (- (* 1 i1) -94)))))))

(check-sat)
(get-model)