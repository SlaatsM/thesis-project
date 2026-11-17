(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 -127) (= i1 52)))

; Formula constraint
(assert (or (and (and (>= 4 (- i1 i1)) (<= i1 (* -95 i1))) (not (<= i1 (- -87 i1)))) (=> (<= 34 (* -49 i1)) (and (< (- (+ 17 i1) (* 49 i1)) 19) (not (= i1 (- -35 (* -58 i1))))))))

(check-sat)
(get-model)