(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (and (<= -817 i1) (<= i1 829)))

; Formula constraint
(assert (and (=> (not (> -27 (- (* 32 i1) (- (* 88 i1) -10)))) (and (= -54 i1) (>= (* -91 i1) (* -49 i1)))) (=> (not (< (- (+ i1 10) (* -59 i1)) (+ i1 20))) (or (< (* 98 i1) i1) (> 17 (* 26 i1))))))

(check-sat)
(get-model)