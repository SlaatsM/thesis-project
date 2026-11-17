(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 343) (= i1 456) (= i1 572) (= i1 848)))

; Formula constraint
(assert (or (and (and (<= (- (+ i1 i1) i1) (+ (- -43 (* 29 i1)) -67)) (= i1 34)) (and (= -6 (* 95 i1)) (not (= 73 -95)))) (not (= i1 (* -3 i1)))))

(check-sat)
(get-model)