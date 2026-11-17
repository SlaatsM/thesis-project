(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 -490) (= i1 -133) (= i1 80) (= i1 338)))
(assert (or (= i2 -342) (= i2 -132) (= i2 509)))

; Formula constraint
(assert (and (not (>= i2 i1)) (and (or (= 6 -14) (<= i2 76)) (< i1 (* -53 i1)))))

(check-sat)
(get-model)