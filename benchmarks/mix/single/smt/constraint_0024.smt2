(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (and (<= -751 i1) (<= i1 -667)) (= i1 -655) (= i1 418)))
(assert (or (and (<= -958 i2) (<= i2 447)) (= i2 983)))

; Formula constraint
(assert (not (or (< i2 (+ i1 31)) (<= -67 (* -28 i1)))))

(check-sat)
(get-model)