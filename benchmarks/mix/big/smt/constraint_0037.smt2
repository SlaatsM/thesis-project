(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i5
;   i6

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i5 () Int)
(declare-fun i6 () Int)

; Domain constraints
(assert (and (<= -928 i1) (<= i1 705)))
(assert (and (<= -213 i5) (<= i5 17)))
(assert (and (<= -550 i6) (<= i6 807)))

; Formula constraint
(assert (< (+ (- i6 37) i1) i6))

(check-sat)
(get-model)