(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 319) (= i1 908) (= i1 936)))
(assert (or (= i2 23) (= i2 68) (= i2 395)))

; Formula constraint
(assert (and (=> (and (< 3 18) (> i1 i1)) (< (+ i1 15) (+ i2 -78))) (and (> i1 (- (- i1 58) i2)) (and (> (+ (- i2 i1) (+ -70 94)) 21) (<= i2 (+ (+ i1 i2) i2))))))

(check-sat)
(get-model)