(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1

; Variable declarations
(declare-fun i1 () Int)

; Domain constraints
(assert (or (= i1 2) (= i1 173) (= i1 217) (= i1 672)))

; Formula constraint
(assert (and (<= -1 (- i1 (* -58 i1))) (and (not (< i1 i1)) (and (>= i1 -61) (>= 78 i1)))))

(check-sat)
(get-model)