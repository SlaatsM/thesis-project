(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2
;   i3

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)
(declare-fun i3 () Int)

; Domain constraints
(assert (or (= i1 26) (= i1 145) (= i1 567)))
(assert (or (= i2 189) (= i2 465)))
(assert (and (<= 87 i3) (<= i3 289)))

; Formula constraint
(assert (not (and (< -50 37) (not (= i3 (+ i2 (+ i1 -24)))))))

(check-sat)
(get-model)