(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 -317) (= i1 219)))
(assert (or (= i2 -934) (= i2 193)))

; Formula constraint
(assert (and (>= (+ (- i1 i2) 66) -66) (or (not (> (- -52 (* 30 i2)) 42)) (and (>= i1 (- (+ i2 (* -13 i1)) i1)) (< -91 (- 66 (* -100 i2)))))))

(check-sat)
(get-model)